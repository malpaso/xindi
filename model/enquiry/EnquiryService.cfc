/*
	Xindi - http://www.getxindi.com/
	
	Copyright (c) 2012, Simon Bingham
	
	Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation
	files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, 
	modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software 
	is furnished to do so, subject to the following conditions:
	
	The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
	
	THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES 
	OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE 
	LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR 
	IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/

component accessors="true"{

	/*
	 * Dependency injection
	 */	
	
	property name="Validator" getter="false";
	
	/*
	 * Public methods
	 */

	struct function deleteEnquiry( required numeric enquiryid ){
		var Enquiry = getEnquiryByID( arguments.enquiryid );
		var result ={};
		if( !IsNull( Enquiry ) ){ 
			transaction{
				EntityDelete( Enquiry );
				result.messages.success = "The enquiry from &quot;#Enquiry.getFullName()#&quot; has been deleted.";
			}
		}else{
			result.messages.error = "The enquiry could not be deleted.";
		}
		return result;
	}
	
	array function getEnquiries( numeric maxresults=0 ){
		var ormoptions ={};
		if( arguments.maxresults ) ormoptions.maxresults = arguments.maxresults;	
		return EntityLoad( "Enquiry",{}, "unread DESC, created DESC", ormoptions );
	}	

	function getEnquiryByID( required numeric enquiryid ){
		return EntityLoadByPK( "Enquiry", arguments.enquiryid );
	}

	numeric function getUnreadEnquiryCount(){
		return Val( ORMExecuteQuery( "select count( * ) from Enquiry where unread = true", true ) );
	}	
	 	
	function getValidator( required any Enquiry ){
		return variables.Validator.getValidator( theObject=arguments.Enquiry );
	}	
	
	struct function markAllRead(){
		transaction{
			var result ={};
			result.messages.success = "All messages have been marked as read.";
			ORMExecuteQuery( "update Enquiry set unread=false" );
		}
		return result;
	}

	void function markRead( required numeric enquiryid ){
		var Enquiry = getEnquiryByID( arguments.enquiryid );
		var result ={};
		if( !IsNull( Enquiry ) ){ 
			transaction{
				Enquiry.setRead();
				EntitySave( Enquiry );
			}
		}
	}	
	
	function newEnquiry(){
		return new model.enquiry.Enquiry();
	}
	
	struct function sendEnquiry( required struct properties, required struct config, required string emailtemplatepath ){
		transaction{
			var emailtemplate = "";
			var Enquiry = newEnquiry(); 
			Enquiry.populate( arguments.properties );
			var result = variables.Validator.validate( theObject=Enquiry );
			result.messages ={};
			if( !result.hasErrors() ){
				savecontent variable="emailtemplate"{ include arguments.emailtemplatepath; }
				var Email = new mail();
			    Email.setSubject( arguments.config.subject );
		    	Email.setTo( arguments.config.emailto );
		    	Email.setFrom( Enquiry.getEmail() );
		    	Email.setBody( emailtemplate );
		    	Email.setType( "html" );
		        Email.send();
		        EntitySave( Enquiry );
		        transaction action="commit";
		        result.messages.success = "Your enquiry has been sent.";
			}else{
				transaction action="rollback";
				result.messages.error = "Your enquiry could not be sent. Please amend the highlighted fields.";
			}
			return result;
		}
	}
	
}