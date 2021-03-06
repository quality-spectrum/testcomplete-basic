//USEUNIT FindObject

/*--------------------------------------------------------------------------------------------------
                                          File Header
Updated by:           Ali Khalid
Updated on:           July 02, 2015
Update Summary:       Tag Heuer page objects
--------------------------------------------------------------------------------------------------*/


var TagHueuerClass = function(){

//------------------------------------Object functions---------------------------------//

  this.ScreenUrl = function(){
    var screenUrl= "http://www.goldsmiths.co.uk/c/Brands/TAG-Heuer/";
    return screenUrl;
    };
    
  this.Carrera = function(){ 
   
    var properties = ["ObjectIdentifier", "title"];
    var values = ["context_bWFzdGVyfHJvb3R8MTE2NDZ8aW1hZ2UvanBlZ3xoNDMvaDdlLzg4NTgyODEyNzk1MTguanBnfDQ4ZDliODRmMjY3NGVjYWJkNjk1NjViMWRlNjA3MjVjOWIwYzc2MmFjZTY0ZDM5MjAxMzcxZDUxOTZjMmVmNmY", "carreracollection.jpg"];
    
    var object = FindObj().CurrentPage(properties,values);    
    return object;
    };
    
}

function TagHueuerObj()
{
  var newObj = new TagHueuerClass;
  return newObj;
}