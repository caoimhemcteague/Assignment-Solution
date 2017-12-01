
package ie.lyit.hotel;

import java.io.*;
import java.util.Scanner;

import javax.swing.*;

@SuppressWarnings("serial")
public class Customer extends Person implements Serializable{
	
	private String emailAddress;    
	private int number;			    

	private static int nextNumber=1;// static for unique number - starts off at 1
	
	// Default Constructor	
	public Customer(){
		super();			
		emailAddress=null;
		// Set number to static nextNumber before incrementing nextNumber
		number=nextNumber++;
	}
	
	// Initialization Constructor
	public Customer(String t, String fN, String sn, String address, 
			        String pNo, String email){
		// Call super class constructor - Passing parameters required from Person Class
		super(t, fN, sn, address, pNo);
		// And then initialise Customers own instance variables
		emailAddress=email;
		// And finally set number to static nextNumber before incrementing nextNumber
		number=nextNumber++;
	}

	// OVERRIDING the Person toString() method!
	// Calling Persons toString() method, and adding additional bits
	@Override
	public String toString(){
		return "Customer Number " + number + " " + super.toString() + ", \tE-Mail: " + emailAddress;
	}

	// equals() method
	public boolean equals(Object obj){
		Customer cObject;
		if (obj instanceof Customer)
		   cObject = (Customer)obj;
		else
		   return false;
		   
	    return(this.number==cObject.number);
	}

	// set() and get() methods
	public void setEmailAddress(String emailAddress){
		this.emailAddress=emailAddress;
	}
	public String getEmailAddress(){
		return this.emailAddress;
	}	
	// You shouldn't be able to setNumber() as it is unique, so don't provide a setNumber() method
	public int getNumber(){
		return number;
	}	
	
	public static void setnextNumber(int nextNumber){
		Customer.nextNumber = nextNumber;
	}
	
	// read() - To read a book from the user	
	   public void read(){
	     JTextField txtCustomerNo = new JTextField();
	      txtCustomerNo.setText("" + this.getNumber());
	      JTextField txtTitle = new JTextField();
	      txtTitle.requestFocus();
	      JTextField txtfirstName = new JTextField();
	      JTextField txtSurname = new JTextField();
	      JTextField txtAddress = new JTextField();
	      JTextField txtPhoneNumber = new JTextField();
	      JTextField txtEmailAddress = new JTextField();

	      Object[] message = {
	          "Customer Number:", txtCustomerNo,
	          "Title:", txtTitle,
	          "First Name:", txtfirstName,
	          "Surname:", txtSurname,
	          "Address:", txtAddress,
	          "Phone Number:", txtPhoneNumber,
	          "Email Address:", txtEmailAddress,
	      };

	      int option = JOptionPane.showConfirmDialog(null, message, "Enter Customer details", JOptionPane.OK_CANCEL_OPTION);

	      Name txtName = new Name(txtTitle.getText(), txtfirstName.getText(), txtSurname.getText());
	      
	      if (option == JOptionPane.OK_OPTION){
	          this.name = txtName;
	          this.address = txtAddress.getText();
	          this.phoneNumber = txtPhoneNumber.getText();
	          this.emailAddress = txtEmailAddress.getText();
		   
		   	   
	      } 
	     }
	}//end class