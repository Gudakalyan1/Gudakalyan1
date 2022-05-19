public without sharing class TripReportsData {
    
    public static Map<String, TripReport__c> loadTheData(Map<String, User> users) {

		Map<String, TripReport__c> trips = new Map<String, TripReport__c>{
		'DEX602 London Training Center'        => new TripReport__c(Name='DEX602 London',       Date__c=System.today()-50,Rating__c=5,ReviewType__c='Training Center',Review__c='Great central location',Instructor__c=users.get('EPETERS').Id),
		'DEX602 San Francisco Training Center' => new TripReport__c(Name='DEX602 San Francisco',Date__c=System.today()-66,Rating__c=5,ReviewType__c='Training Center',Review__c='Amazing views',         Instructor__c=users.get('KTRAN').Id),
		'DEX602 San Francisco Students'        => new TripReport__c(Name='DEX602 San Francisco',Date__c=System.today()-66,Rating__c=5,ReviewType__c='Students',       Review__c='All lovely',            Instructor__c=users.get('KTRAN').Id),
		'DEX602 Sydney Restaurant'             => new TripReport__c(Name='DEX602 Sydney',       Date__c=System.today()-41,Rating__c=5,ReviewType__c='Restaurant',     Review__c='Awesome barbie!',       Instructor__c=users.get('AKATO').Id)		
		};
		insert trips.values();
		
		return trips;        
    }
}