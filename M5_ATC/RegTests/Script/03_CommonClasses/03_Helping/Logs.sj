/*--------------------------------------------------------------------------------------------------
                                          File Header
Updated by:               Ali Khalid
Updated on:               May 21, 2015
Update Summary / Purpose: This file includes functions related to formatting TestComplete's report
--------------------------------------------------------------------------------------------------*/


/*--------------------------------------------------------------------------------------------------
                                          Function Header
Updated by:               Ali Khalid
Updated on:               May 21, 2015
Update Summary / Purpose: This function will 
                          1) Pops the log out, if it is already popped, there will be no effect
                          2) Log a message (Can send step No and step details
                          3) Indent the log one step inside (will log all messages inside this group
--------------------------------------------------------------------------------------------------*/

var LogsClass = function(){

  this.StepComment = function (Message){
  
    Indicator.PopText();
    Log.PopLogFolder();
    
    Log.AppendFolder(Message);
    Indicator.PushText(Message);  
  };

/*--------------------------------------------------------------------------------------------------
                                          Function Header
Updated by:               Ali Khalid
Updated on:               May 21, 2015
Update Summary / Purpose: Similar to function above except, it indents and pos two times.
                          Resulting effect is any StepComment() messages after this call are further
                          grouped
--------------------------------------------------------------------------------------------------*/
// Function to append all next coming messages
  
  this.AppendAndPop = function (Message){
  
    Indicator.PopText();
    Log.PopLogFolder();  
  
    Indicator.PopText();
    Log.PopLogFolder();
    
    Log.AppendFolder(Message);
    Indicator.PushText(Message);  
    
    Log.AppendFolder(" ");
  };
}

function LogsObj(){

  var newLogs = new LogsClass;
  return newLogs;
}