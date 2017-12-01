//Software Implementation
//Anne-Marie O'Donnell - L00129696
//10/11/2017
//Date Class

package ie.lyit.hotel;

import java.io.*;

@SuppressWarnings("serial")
public class Date implements Serializable{
	private int day, month, year;

	// Default Constructor 
	public Date(){
	   day=month=year=0;
	}

	// Initialization Constructor
  	public Date(int day, int month, int year) throws IllegalArgumentException
  	{
 	   if(day < 1 || day > 31 || month < 1 || month > 12 || year < 1900)
		   throw new IllegalArgumentException("Invalid Date.");		
  		
       this.day = day;
       this.month = month;
	   this.year = year;
    }

	// toString() method
    public String toString(){
		return (day + "/" + month + "/" + year);
	}
	
	// equals() method
   public boolean equals(Object o){
		// First check if o is a null reference to prevent run-time exceptions
		if(o == null) 
         return false;
	
		// Next check if o references the current object, if it does it must be equal
		if (this == o)
			return true;
         
		// Next check if o is in fact a Date object
		if(!(o instanceof Date))
			return false;
		else
		{
			// If none of the above are true, cast o to a Date object so that
            // we can compare the object's instance variables and methods
			Date other = (Date)o;
			
			return (this.day == other.day) &&
				   (this.month == other.month) &&
				   (this.year == other.year);
		}
	}
	
	// get methods
	public int getDay(){
		return day;
	}
	public int getMonth(){
		return month;
	}
	public int getYear(){
		return year;
	}

	// set methods
	//     Method throws an IllegalArgumentException when called incorrectly
	public void setDay(int setDayTo) throws IllegalArgumentException{
	   if(setDayTo < 1 || setDayTo > 31)
		   throw new IllegalArgumentException("Invalid day.");
	   
	   // NO EXCEPTION THROWN
       day=setDayTo;
	}
 	public void setMonth(int setMonthTo)throws IllegalArgumentException{
 	   if(setMonthTo < 1 || setMonthTo > 12)
 		   throw new IllegalArgumentException("Invalid month.");		

 		// NO EXCEPTION THROWN
 		month = setMonthTo;
 	}
 	public void setYear(int setYearTo)throws IllegalArgumentException{
 	   if(setYearTo <1900)
 		   throw new IllegalArgumentException("Invalid year.");		

 	   // NO EXCEPTION THROWN
 	   year = setYearTo;
 	}
 }