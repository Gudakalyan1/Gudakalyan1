public without sharing class LoadCertificationData {

    // Reset autonumbers on Course_Delivery__c and Course_Attendee__c if you want stuff to
	// start counting from the beginning
    
    public static void loadTheData() {

		// Load the User records
		Map<String, User> users = UsersData.loadTheUsers();
        
		// Load the Account records
		Map<String, Account> accounts = AccountsData.loadTheData();
        
		// Load the Contact records
		Map<String, Contact> contacts = ContactsData.loadTheData(accounts);

		// Load the Certification records
		Map<String, Certification__c> certs = CertificationsData.loadTheData();

		// Load the Certification Elements records
		Map<String, Certification_Element__c> elements = CertificationElementsData.loadTheData(certs);

		// Load the Course records
		Map<String, Course__c> courses = CoursesData.loadTheData(certs);

		// Load the Course Delivery records
		Map<String, Course_Delivery__c> deliveries = CourseDeliveriesData.loadTheData(users, courses);

		// Load the Course Attendee records
		Map<String, Course_Attendee__c> attendees = CourseAttendeesData.loadTheData(deliveries, contacts);

		// Load the Certification Held records
		Map<String, Certification_Held__c> certsheld = CertificationsHeldData.loadTheData(certs, contacts);

		// Load the Certification Attempt records (not currently for DEX601/602 scatch orgs)
		//Map<String, Certification_Attempt__c> attempts = CertificationAttemptsData.loadTheData(elements, contacts, users);
		
		// Load the Trip Report records
		Map<String, TripReport__c> trips = TripReportsData.loadTheData(users);
    }

	public static void deleteTheData() {

		delete [SELECT ID From Entitlement]; 
		delete [SELECT Id FROM TripReport__c];
		//delete [SELECT Id FROM Certification_Attempt__c];
		delete [SELECT Id FROM Certification_Held__c];
		delete [SELECT Id FROM Course_Attendee__c];
		delete [SELECT Id FROM Course_Delivery__c];
		delete [SELECT Id FROM Course__c];
		delete [SELECT Id FROM Certification_Element__c];
		delete [SELECT Id FROM Certification__c];
		delete [SELECT Id FROM Case];
		delete [SELECT Id FROM Opportunity];
		delete [SELECT Id FROM Contact];
		delete [SELECT Id FROM Account];
	}
}