/*--------------------------------------------------------------------------------------------------
                                          File Header
Updated by:           Ali Khalid
Updated on:           July 02, 2015
Update Summary:       Home page screen Objects (http://www.goldsmiths.co.uk/)
--------------------------------------------------------------------------------------------------*/

var HomePageClass = function(){

//------------------------------------Object functions---------------------------------//
  
  this.ScreenUrl = function(){
    var screenUrl= "http://www.goldsmiths.co.uk";
    return screenUrl;
    };
  
}

function HomePageObj()
{
  var newHomePage = new HomePageClass;
  return newHomePage;
}