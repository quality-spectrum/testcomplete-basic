/*--------------------------------------------------------------------------------------------------
                                          File Header
Author(s):            Ali Khalid
Updated by:           
Updated on:           
Update Summary:       File will include methods for reading, writing, focus, click and Keys function 
Test Case Document:   FleetFocus M5 Smoke Tests
Document version:     v14.0.0.1
--------------------------------------------------------------------------------------------------*/


//--------------------------------------Generic Object's Operations-------------------------------//
var ActionOnObjectClass = function(){

  this.ObjectFocus=function(Object){
  
    Object.focus();
    return;
  };

  this.ObjectMouseHover = function(){
    
    Object.HoverMouse();
    
    Delay(500);
    
    return;
    };
  
//--------------------------------------Text Object's Operations----------------------------------//
  this.TextWrite=function(Object,Text){
  
    Object.focus();
//  Object.SetText(Text);
    Object.keys("^A");
    Object.keys("[BS]");
    Object.Keys(Text);
    Object.Keys("[Tab]");
    return;
  };
  
//--------------------------------------Drop Down Object's Operations----------------------------------//
  this.DropDownWrite=function(Object,Text){
  
    Object.focus();
    Object.Keys(Text);    
    Object.Keys("[Tab]");
    return;
  };

//--------------------------------------Button Object's Operations--------------------------------//
  this.ButtonClick=function(Object){
   // Object.focus();
    Object.Click();      
    return;  
  };
  
  
  this.ButtonDblClick=function(Object){

    Object.focus();
    Object.dblClick();   
    return;     
  };

//--------------------------------------Checkbox Object's Operations----------------------------------//

// If you want to check the checkbox object, send '1' in second paramter, otherwise '0'  
  this.Checkbox = function(Object,CheckFlag){
  
    Object.focus();
    //CheckState = Object.checked;
      
    if(CheckFlag == 1){ 
      if(Object.checked == 0)
        Object.Keys(" ");
      }
    else if(CheckFlag == 0){   
      if(Object.checked == 1)
        Object.Keys(" ");
      }
    else
      Log.Message("Check flag given invalid");
    
    Object.Keys("[Tab]");
    
    return;
  };
    
};

function ActionOnObj(){

  var newActionOnObject= new ActionOnObjectClass;
  return newActionOnObject;
}