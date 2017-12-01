
package ie.lyit.tester;

import ie.lyit.files.Menu;
import ie.lyit.serialize.CustomerSerializer;

public class CustomerSerializerTester {

	public static void main(String[] args) {
		// Create an object of customerFileHandler
		CustomerSerializer customerSerializer = new CustomerSerializer();
		Menu menuObj = new Menu();

		// Deserialize the ArrayList from the File,
		// i.e. read the books ArrayList from the file back into the ArrayList
		customerSerializer.readRecordsFromFile();
		do {
			// Call it's display() method
			menuObj.display();
			// Call it's readOption() method
			menuObj.readOption();
			// switch on the option and call the appropriate method
			switch (menuObj.getOption()) {
			case 1:
				
				customerSerializer.addCustomer();
				break;
			case 2:
				customerSerializer.viewCustomer();
				break;
			case 3:
				customerSerializer.listCustomer();
				break;
			case 4:
				customerSerializer.editCustomer();
				break;
			case 5:
				customerSerializer.deleteCustomer();
				break;
			case 6:
				break;
			default:
				System.out.println("INVALID OPTION...");
			}

		} while (menuObj.getOption() != 6);
		customerSerializer.writeRecordsToFile();

		// Serialize the ArrayList to the File
		// i.e. write the books ArrayList back into the the file
		customerSerializer.writeRecordsToFile();
	}

}
