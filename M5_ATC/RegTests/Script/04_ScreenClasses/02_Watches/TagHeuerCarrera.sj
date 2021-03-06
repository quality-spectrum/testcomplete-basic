//USEUNIT FindObject

/*--------------------------------------------------------------------------------------------------
                                          File Header
Updated by:           Ali Khalid
Updated on:           July 02, 2015
Update Summary:       TagHeuer's Carrera series page objects
--------------------------------------------------------------------------------------------------*/


var TagHeuerCarreraClass = function(){

//------------------------------------Object functions---------------------------------//

  this.ScreenUrl = function(){
    var screenUrl= "http://www.goldsmiths.co.uk/c/Brands/TAG-Heuer/";
    return screenUrl;
    };
    
  this.TagHeuer17380920 = function(){ 
   
    var properties = ["parentNode","ObjectIdentifier", "title"];
    var values = ["http://www.goldsmiths.co.uk/TAG-Heuer-Carrera-Mens-Watch/p/17380920/","context_bWFzdGVyfHByb2R1Y3RfaW1hZ2VzfDExOTgyOHxpbWFnZS9wbmd8cHJvZHVjdF9pbWFnZXMvODgyMzg4MDcxMjIyMi5wbmd8LQ", "TAG Heuer Carrera Mens Watch"];
    
    var object = FindObj().CurrentPage(properties,values);    
    return object;
    };
  
}

function TagHeuerCarreraObj()
{
  var newObj = new TagHeuerCarreraClass;
  return newObj;
}