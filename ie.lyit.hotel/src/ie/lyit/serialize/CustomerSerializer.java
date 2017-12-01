
package ie.lyit.serialize;

import java.util.ArrayList;
import java.util.Scanner;

import ie.lyit.hotel.Customer;
import java.io.*;


public class CustomerSerializer {
	private ArrayList<Customer> customers;
	
	private final String FILENAME = "customers.bin";
	
	// Default Constructor
		public CustomerSerializer(){
			customers = new ArrayList<Customer>();
		}	

		//reads a customer to the ArrayList
		public void addCustomer(){
			// Create a Customer object
			Customer c = new Customer();
			// Read its details
			c.read();	
			// And add it to the customer ArrayList
			customers.add(c);
		}

		
			// Lists all customer records in the ArrayList 
				
			public void listCustomer(){
				// for every Customer object in customers
		      for(Customer tmpC:customers)
					// display it
					System.out.println(tmpC);
			}
			         
				
			public Customer viewCustomer(){
				Scanner keyboard = new Scanner(System.in);		

				// Read the number of the customer to be viewed from the user
				System.out.println("ENTER NUMBER OF CUSTOMER : ");
				int customerToView=keyboard.nextInt();
				
				// for every Customer object in customers
			    for(Customer tmpC:customers){
				   // if it's number equals the number of the customerToView
				   if(tmpC.getNumber() == customerToView){
				      // display it
					  System.out.println(tmpC);
					  return tmpC;
				   }
				}
			    return null;		
			}

			
			public void deleteCustomer(){	
				// Call view() to find, display, & return the customer to delete
				Customer tempC = viewCustomer();
			    if(tempC != null)
				   // remove it from customers
			       customers.remove(tempC);
			}
			
			
			public void editCustomer(){	
				// Call view() to find, display, & return the customer to edit
				Customer tempC = viewCustomer();
				// If the customer != null, if it was found then...
			    if(tempC != null){
				   // get it's index
				   int index=customers.indexOf(tempC);
				   // read in a new customer and...
				   tempC.read();
				   // reset the object in customer
				   customers.set(index, tempC);
			    }
			}
		
		// This method will serialize the customers ArrayList when called ad it will write it to a file called customers.bin
		public void writeRecordsToFile(){
			ObjectOutputStream os=null;
			try {
				// Serialize the ArrayList...
				FileOutputStream fileStream = new FileOutputStream(FILENAME);
			
				os = new ObjectOutputStream(fileStream);
					
				os.writeObject(customers);
			}
			catch(FileNotFoundException fNFE){
				System.out.println("Cannot create file to store customers.");
			}
			catch(IOException ioE){
				System.out.println(ioE.getMessage());
			}
			finally {
				try {
					os.close();
				}
				catch(IOException ioE){
					System.out.println(ioE.getMessage());
				}
			}
		}

		// This method will deserialize the customers ArrayList when called, it will restore the ArrayList from the file customers.bin
		//DESERIALISE 
				public void readRecordsFromFile(){
					ObjectInputStream is=null;
					
					try {
						FileInputStream fileStream = new FileInputStream(FILENAME);
						is = new ObjectInputStream(fileStream);
						customers = (ArrayList<Customer>)is.readObject();
						is.close();
					    }
						catch(FileNotFoundException fNFE){
						System.out.println("Cannot create file to store customers.");
						}
					catch(IOException ioE){
						System.out.println(ioE.getMessage());
					}
					catch(Exception e){
						System.out.println(e.getMessage());
					}
					
			
				
				
					}
				}