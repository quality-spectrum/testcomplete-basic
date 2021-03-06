//USEUNIT ActionOnObject
//USEUNIT Screen
//USEUNIT Logs
//USEUNIT ObjectClassesHeaders


/*--------------------------------------------------------------------------------------------------
                                File Header        
Updated by:               Ali Khalid
Updated on:               July 02, 2015
Update Summary / Purpose: Logs in user to specified account
--------------------------------------------------------------------------------------------------*/


function Login(){
  try{ 
    
    LogsObj().StepComment("PreScript: Creating test data for script");
    var TestData = LoginTestData();
    
    LogsObj().StepComment("Step 1: Click on sign in button on home page header");
    ScreenObj().SetCurrentScreen();      
    ActionOnObj().ButtonClick(HeaderObj().SignInOrRegister());
  
    LogsObj().StepComment("Step 2: Select 'returning customer' on sign in screen");
    ScreenObj().SetCurrentScreen();  
    ActionOnObj().ButtonClick(LoginPageObj().ReturningCustomerRB());
  
    LogsObj().StepComment("Step 3: Enter username");
    ActionOnObj().TextWrite(LoginPageObj().ExistingUsername(),TestData.username);
  
    LogsObj().StepComment("Step 4: Enter password");
    ActionOnObj().TextWrite(LoginPageObj().ExistingPassword(),TestData.password);
  
    LogsObj().StepComment("Step 5: Click on sign in button");
    ActionOnObj().ButtonClick(LoginPageObj().SignInB());

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

function LoginTestData(){
  
  var LoginData = {
  "username": "testcompletetrainings@gmail.com",
  "password": "TempPass1"
  }
  
  return LoginData;
}