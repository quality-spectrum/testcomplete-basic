//USEUNIT FindObject

/*--------------------------------------------------------------------------------------------------
                                          File Header
Updated by:           Ali Khalid
Updated on:           July 02, 2015
Update Summary:       TagHeuer model 17380920 page objects
--------------------------------------------------------------------------------------------------*/

var TagHeuer17380920Class = function(){

//------------------------------------Object functions---------------------------------//

  this.ScreenUrl = function(){
    var screenUrl= "http://www.goldsmiths.co.uk/TAG-Heuer-Carrera-Mens-Watch/p/17380920/";
    return screenUrl;
    };
    
  this.ShoppingBagB = function(){ 
   
    var properties = ["ObjectIdentifier", "ObjectType"];
    var values = ["addToBasket", "Button"];
    
    var object = FindObj().CurrentPage(properties,values);    
    return object;
    };
  
}

function TagHeuer17380920Obj()
{
  var newObj = new TagHeuer17380920Class;
  return newObj;
}