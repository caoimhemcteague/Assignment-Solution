//Software Implementation
//Anne-Marie O'Donnell - L00129696
//10/11/2017
//Person Class

package ie.lyit.hotel;

import java.io.Serializable;

@SuppressWarnings("serial")
public abstract class Person implements Serializable {
	protected Name name; 
	protected String address, phoneNumber;

	// Default Constructor
	public Person(){
	   name=new Name();
	   address = phoneNumber =null;
	   
	}

	// Initialisation Constructor
	public Person(String t, String fN, String sn, String address, String phoneNumber){
		name=new Name(t, fN, sn);	
		this.address=address;
		this.phoneNumber=phoneNumber;
	}
	
	// toString() method
	public String toString(){
		return name + "," + address + "," + phoneNumber;
	}	
	
	// equals() method
	public boolean equals(Object obj){
	   Person pObject;
	   if (obj instanceof Person)
	      pObject = (Person)obj;
	   else
	      return false;
	   
       return(name.equals(pObject.name) &&
    		  address.equals(pObject.address) && 
			  phoneNumber.equals(pObject.phoneNumber));
	}
	
	// set() and get() methods
	public void setName(Name nameIn){
		name = nameIn;
	}
	public Name getName(){
		return name;
	}

	public void setAddress(String addressIn){
		address = addressIn;
	}
	public String getAddress(){
		return address;
	}
	
	public void setPhoneNumber(String phoneNumberIn){
		phoneNumber = phoneNumberIn;
	}
	public String getPhoneNumber(){
		return phoneNumber;
	}
}//end class