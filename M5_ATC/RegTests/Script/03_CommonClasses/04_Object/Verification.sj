/*--------------------------------------------------------------------------------------------------
                                          File Header
Updated by:           Ali Khalid
Updated on:           May 19, 2015
Update Summary:       Results Verification functions
--------------------------------------------------------------------------------------------------*/


var VerificationClass = function(){

  this.CompareText = function (objectValue ,ObjectData){

  	if(objectValue == ObjectData){
  	  Log.Checkpoint(objectValue+" shown correctly in the field");
      return;
      }
    
  	Log.Error("Instead of " +ObjectData+ " ,  " +objectValue+ " was shown in the field");
    return;
    };
  
  this.CompareDropDown = function (object ,ObjectData){

   ((object.wText == ObjectData) ? 
   Log.Message(object.wText+" column shows the correct value") : 
   Log.Error(object.wText+" column DOES NOT SHOWN the correct value"));

    return;
    };
  
  this.CompareCheckbox = function (object ,CheckFlag){
      
    if(object.checked == CheckFlag){
      Log.Message("Checkbox status is shown correctly (" +CheckFlag+ ")");
      return;
      }
    
  	Log.Error("Checkbox status WAS NOT SHOWN correctly");
    return;
    };
}


function VerificationObj(){

  var newVerification = new VerificationClass;
  return newVerification;
}