//USEUNIT FindObject

/*--------------------------------------------------------------------------------------------------
                                          File Header
Updated by:           Ali Khalid
Updated on:           July 02, 2015
Update Summary:       All application header objects to be included in this file
--------------------------------------------------------------------------------------------------*/


var HeaderClass = function(){

//------------------------------------Object functions---------------------------------//

  this.SignInOrRegister = function(){ 
   
    var properties = ["contentText", "Visible", "ObjectType"];
    var values = ["Sign in or Register", true, "Link"];
    
    var object = FindObj().Header(properties,values);    
    return object;
    };
    
  this.HomeLink = function(){ 
   
    var properties = ["ObjectIdentifier", "ObjectType", "Parent.Parent.ChildCount"];
    var values = ["siteLogo", "Image", "1"];
    
    var object = FindObj().Header(properties,values);    
    return object;
    };
    
//------- Watches
    
  this.Watches = function(){ 
   
    var properties = ["contentText", "ObjectType", "Visible"];
    var values = ["Watches", "Link", true];
    
    var object = FindObj().Header(properties,values);    
    return object;
    };
    
  this.TagHeuer = function(){ 
   
    var properties = ["contentText", "ObjectType"];
    var values = ["TAG Heuer", "Link"];
    
    var object = FindObj().Header(properties,values);    
    return object;
    };
  
}

function HeaderObj()
{
  var newHeader = new HeaderClass;
  return newHeader;
}