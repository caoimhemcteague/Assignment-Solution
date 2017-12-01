//Software Implementation
//Anne-Marie O'Donnell - L00129696
//10/11/2017
//Name Class

package ie.lyit.hotel;

import java.io.Serializable;

public class Name implements Serializable {
	
	// Instance Variables
	private String title, firstName, surname;		
	
	// Default Constructor 
	public Name(){
	   title = firstName = surname = null;
	}

	// Initialization Constructor
	public Name(String t, String fN, String sn){
		title = t;
		firstName = fN;
		surname = sn;
	}

	// toString() method
	public String toString(){
	   return title + " " + firstName + " " + surname;
	}
	
	// equals() method
	public boolean equals(Object obj){
	   Name nObject;
	   if (obj instanceof Name)
	      nObject = (Name)obj;
	   else
	       return false;
	 
	   return this.title.equals(nObject.title)
	          && this.firstName.equals(nObject.firstName)
	          && this.surname.equals(nObject.surname);
	}

	// get methods
	public String getTitle(){
	   return title;
	}
	public String getFirstName(){
	   return firstName;
	}
	public String getSurname(){
	   return surname;
	}

	// set methods
	public void setTitle(String setTitleTo){
	   title=setTitleTo;
	}
	public void setFirstName(String setFirstNameTo){
	   firstName=setFirstNameTo;
	}
	public void setSurname(String setSurnameTo){
	   surname=setSurnameTo;
	}

	public boolean isFemale(){
		if(title.equalsIgnoreCase("Miss") || 
		   title.equalsIgnoreCase("Ms") || 
		   title.equalsIgnoreCase("Mrs")) 
		    return true;
		else
		    return false;
	}	
}//end class