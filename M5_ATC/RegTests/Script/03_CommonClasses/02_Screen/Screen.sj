//USEUNIT Header

/*--------------------------------------------------------------------------------------------------
                                          File Header
Updated by:               Ali Khalid
Updated on:               July 07, 2015
Update Summary / Purpose: Includes all functions related to traversing screens, and generic operations
                          to perform on screens
--------------------------------------------------------------------------------------------------*/


var ScreenClass = function(){
  
  
/*--------------------------------------------------------------------------------------------------
                                          Function Header
Updated by:               Ali Khalid
Updated on:               July 07, 2015
Update Summary / Purpose: Function launches a screen in default browser passed in the parameter.
                          Prerequisite - browser is launched
--------------------------------------------------------------------------------------------------*/

  this.LoadScreen = function (ScreenURL){
   
    if (Project.Variables.Browser == "IE"){
      Browsers.Item(btIExplorer, "", Browsers.pX64).Run(ScreenURL);
      page = Sys.Browser("iexplore").Page(ScreenURL);
      page.Wait();
      }
    
    else if(Project.Variables.Browser == "Chrome"){
      Browsers.Item(btChrome).Run(ScreenURL);
      page = Sys.Browser("Chrome").Page(ScreenURL);
      page.Wait();
      }

    else{
      Log.Message("Invalid browser selected");
      }
     
    this.SetCurrentScreen(ScreenURL);
    };
    
  
/*--------------------------------------------------------------------------------------------------
                                          Function Header
Updated by:               Ali Khalid
Updated on:               July 07, 2015
Update Summary / Purpose: Function sets the global variable used to fund objects while execution.
                          Prerequisite - Desired screen to perform operations on is loaded
--------------------------------------------------------------------------------------------------*/
  
  this.SetCurrentScreen = function (){
  
    if (Project.Variables.Browser == "IE"){
    
      Project.Variables.CurrentScreenObject = Sys.Browser("iexplore").Page("*");
    //  Project.Variables.CurrentScreenObject = Sys.Browser("iexplore").Page("http://www.goldsmiths.co.uk*");
      
      }

    else if(Project.Variables.Browser == "Chrome")
      Project.Variables.CurrentScreenObject = Sys.Browser("Chrome").Page("http://www.goldsmiths.co.uk*");
    
    else{
      Log.Message("Invalid browser selected");
      }
  
    Project.Variables.CurrentScreenObject.Wait();
    
    return;
    };
  

  this.Refresh = function(){

    this.SetCurrentScreen();
    var refresh = HeaderObj().HomeLink();
    refresh.Click();
    };
    
    
  // function created but not tested yet
  this.Save = function(){
  
    // Press save button
    var SaveButton = ButtonBarObj().SaveButton();
    SaveButton.Click();

    var SaveError;
    var Flag = 0; 
    for(var Count = 1; Flag == 1; Count ++){
      if(Project.Variables.HomeScreenObject.Panel("m5BotArea").Panel("errorContainer").Panel("errorOut").Panel("errorContent").FindChild('TextNode(Count)').Exists){
        SaveError = Project.Variables.HomeScreenObject.Panel("m5BotArea").Panel("errorContainer").Panel("errorOut").Panel("errorContent").FindChild('TextNode(Count)');
        Log.Message('Error message on saving: '+ SaveError.contentText);
        }
      else{
        Flag = 1;
        }
      }
    
    return;
  };
  
}


function ScreenObj(){

  var newScreen = new ScreenClass;
  return newScreen;
}
