
/*--------------------------------------------------------------------------------------------------
                                          File Header
Updated by:               Ali Khalid
Updated on:               July 07, 2015
Update Summary / Purpose: Home and Main screen objects and GotToscreen function, created class for this file
--------------------------------------------------------------------------------------------------*/


/*--------------------------------------------------------------------------------------------------
                                          Function Header
Updated by:               Ali Khalid
Updated on:               July 07, 2015
Update Summary / Purpose: Function sets global variables for browser selection. Uncomment any one
                          statement / browser need to run 
--------------------------------------------------------------------------------------------------*/
  
function SelectBrowser(){
  
  // For selecting Internet Explorer
  Project.Variables.Browser = "IE";
  
  // For selecting Google Chrome
  // Project.Variables.Browser = "Chrome";
  }
  
  
/*--------------------------------------------------------------------------------------------------
                                          Function Header
Updated by:               Ali Khalid
Updated on:               July 07, 2015
Update Summary / Purpose: Function launches browser as per selection in global variable
                          
--------------------------------------------------------------------------------------------------*/
 
function LaunchBrowser(){
  
  var page;

  // Wait for all browser instances to close
  
  while (Sys.WaitBrowser().Exists){
    Sys.WaitBrowser().Close();
    }

  // Load browser and environment as per selection
  
  if (Project.Variables.Browser == "IE"){
    Browsers.Item(btIExplorer, "", Browsers.pX64).Run("http://www.goldsmiths.co.uk/");
    page = Sys.Browser("iexplore").Page("http://www.goldsmiths.co.uk/");
    page.Wait();
    }
    
  else if(Project.Variables.Browser == "Chrome"){
    Browsers.Item(btChrome).Run("http://www.goldsmiths.co.uk/");
    page = Sys.Browser("Chrome").Page("http://www.goldsmiths.co.uk/");
    page.Wait();
    }

  else{
    Log.Message("Invalid browser selected");
    }
  }

