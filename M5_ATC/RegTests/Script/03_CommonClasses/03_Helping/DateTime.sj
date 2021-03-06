
/*--------------------------------------------------------------------------------------------------
                                          File Header
Updated by:               Ali Khalid
Updated on:               July 07, 2015
Update Summary / Purpose: This library includes functions related to time and date
--------------------------------------------------------------------------------------------------*/

var DateTimeClass = function(){
  
/*--------------------------------------------------------------------------------------------------
                                          Function Header
Updated by:               Ali Khalid
Updated on:               July 07, 2015
Update Summary / Purpose: This function returns today's date in dd/mm/yyyy format and as a character string
                          http://support.smartbear.com/viewarticle/58101/#CurrentDate
--------------------------------------------------------------------------------------------------*/
    
  this.TodaysDate = function (){
  
    // Obtain the current date
    var TodayValue = aqDateTime.Today();
    // Change format accepted by M5
    var Converted = aqConvert.DateTimeToFormatStr(TodayValue, "%m/%d/%Y")
    
    return Converted;
    };

/*--------------------------------------------------------------------------------------------------
                                          Function Header
Updated by:               Ali Khalid
Updated on:               July 07, 2015
Update Summary / Purpose: This function returns today's date & time in dd/mm/yyyy hh:mm:ss format
--------------------------------------------------------------------------------------------------*/

  this.TodaysDateNTime = function (){
  
    // Obtain the current date and time
    var Today = aqDateTime.Now();
    // Change format accepted by M5 
    var Converted = aqConvert.DateTimeToFormatStr(Today, "%m/%d/%Y %H:%M:%S")
    
    return Converted;
    
    };
}

function DateTimeObj(){

  var newDateTime = new DateTimeClass;
  return newDateTime;
}