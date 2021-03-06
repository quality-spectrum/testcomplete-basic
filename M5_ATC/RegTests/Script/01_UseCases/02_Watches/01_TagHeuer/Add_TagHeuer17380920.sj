//USEUNIT ActionOnObject
//USEUNIT Screen
//USEUNIT Verification
//USEUNIT Logs
//USEUNIT HomePage
//USEUNIT LoginPage
//USEUNIT ObjectClassesHeaders


/*--------------------------------------------------------------------------------------------------
                                File Header        
Updated by:               Ali Khalid
Updated on:               July 03, 2015
Update Summary / Purpose: Add watch - Tag Heuer Carrera 17380920 to shopping cart
--------------------------------------------------------------------------------------------------*/


function Add_TagHeuer17380920(){
  try{ 
    
    LogsObj().StepComment("Step 1: Click on watches link in header");
    ScreenObj().SetCurrentScreen();
    ActionOnObj().ButtonClick(HeaderObj().Watches());
    
    LogsObj().StepComment("Step 2: Click on Tag Heuer on watches page");
    ScreenObj().SetCurrentScreen();
    ActionOnObj().ButtonClick(WatchesObj().TagHeuer());
  
    LogsObj().StepComment("Step 3: Click on Carrera series on Tag Heuer page");
    ScreenObj().SetCurrentScreen();  
    ActionOnObj().ButtonClick(TagHueuerObj().Carrera());
    
    LogsObj().StepComment("Step 4: Click on Model 17380920 on Tag Heuer page");
    ScreenObj().SetCurrentScreen();  
    ActionOnObj().ButtonClick(TagHeuerCarreraObj().TagHeuer17380920());

    LogsObj().StepComment("Step 5: Click on 'Add to shopping bag' button on Model 17380920 page");        
    ScreenObj().SetCurrentScreen();  
    ActionOnObj().ButtonClick(TagHeuer17380920Obj().ShoppingBagB());

  }
    
  catch(exception){
    Log.Error("An exception has been caught");
    Log.Message("Relaunching browser");
    ProjectObj.LaunchBrowser();
    }
    
  finally{
    ScreenObj().Refresh();
    }
  }