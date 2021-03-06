//USEUNIT Delays


// the parameters depth and delay are optional. If not given values 40 & 10 will be used respectively

var FindObjectClass = function(){

  
  this.CurrentPage = function (ObjectProperty,PropertyValue,objDepth,ObjDelay){
  
	objDepth = objDepth || 40;
	ObjDelay = ObjDelay || 10;

	DelayObj().ObjectsDelayCurrentScreen(ObjectProperty,PropertyValue,ObjDelay);  
	var NewObject = Project.Variables.CurrentScreenObject.FindChild(ObjectProperty,PropertyValue,objDepth);

	if(NewObject.ObjectIdentifier > ""){
	  return NewObject;
	  }
	else{
	  Log.Error("Object "+PropertyValue+" not found");
	  return;
	  }
  };
  
  
  this.Header = function (ObjectProperty,PropertyValue,objDepth,ObjDelay){
  
  	objDepth = objDepth || 40;
  	ObjDelay = ObjDelay || 10;
    
    var parent = Project.Variables.CurrentScreenObject.Panel("header_nav").Panel(0).Panel(0).Panel(0);

  	DelayObj().ObjectsDelayGenericObject(parent,ObjectProperty,PropertyValue,ObjDelay);  
  	var NewObject = parent.FindChild(ObjectProperty,PropertyValue,objDepth);

  	if(NewObject.ObjectIdentifier > "" || NewObject.ObjectIdentifier > -1){
  	  return NewObject;
  	  }
  	else{
  	  Log.Error("Object "+PropertyValue+" not found");
  	  return;
  	  }
    };
  
}




function FindObj(){

  var newFindObject = new FindObjectClass;
  return newFindObject;
}