//USEUNIT FindObject

/*--------------------------------------------------------------------------------------------------
                                          File Header
Updated by:           Ali Khalid
Updated on:           July 02, 2015
Update Summary:       Watches page objects
--------------------------------------------------------------------------------------------------*/

var WatchesClass = function(){

//------------------------------------Object functions---------------------------------//

  this.ScreenUrl = function(){
    var screenUrl= "http://www.goldsmiths.co.uk/c/Watches/";
    return screenUrl;
    };
    
  this.TagHeuer = function(){ 
   
    var properties = ["ObjectIdentifier", "title"];
    var values = ["context_bWFzdGVyfHJvb3R8MTI3NTF8aW1hZ2UvanBlZ3xoNGQvaGUxLzg4NTgwNzUyMzQzMzQuanBnfDMzOTBhMThlZTBlYWNhYmQwYzY5MjNjZDVlODViNDlmNDA5YzJlYmE5Mzk1MmMxYjhiZDA3MGViOTIwNzc1Yzc", "TAG Heuer.jpg"];
    
    var object = FindObj().CurrentPage(properties,values);    
    return object;
    };
  
}

function WatchesObj()
{
  var newObj = new WatchesClass;
  return newObj;
}