public without sharing class CertificationElementsData {

	public static Map<String, Certification_Element__c> loadTheData (Map<String, Certification__c> certs) {
	
		Map<String, Certification_Element__c> elements = new Map<String, Certification_Element__c>{
			'AWCA Server Multiple Choice'   => new Certification_Element__c(DESCRIPTION__C='60 question multiple choice exam',NAME='AWCA Server Multiple Choice',  TYPE__C='Multiple Choice',CERTIFICATION__c=certs.get('AWCA Server').Id),
			'AWCA Network Multiple Choice'  => new Certification_Element__c(DESCRIPTION__C='60 question multiple choice exam',NAME='AWCA Network Multiple Choice', TYPE__C='Multiple Choice',CERTIFICATION__c=certs.get('AWCA Network').Id),
			'AWCA Security Multiple Choice' => new Certification_Element__c(DESCRIPTION__C='60 question multiple choice exam',NAME='AWCA Security Multiple Choice',TYPE__C='Multiple Choice',CERTIFICATION__c=certs.get('AWCA Security').Id),
			'AWCM Network Multiple Choice'  => new Certification_Element__c(DESCRIPTION__C='90 question multiple choice exam',NAME='AWCM Network Multiple Choice', TYPE__C='Multiple Choice',CERTIFICATION__c=certs.get('AWCM Network').Id),
			'AWCM Network Lab'              => new Certification_Element__c(DESCRIPTION__C='Lab-based exam',                  NAME='AWCM Network Lab',             TYPE__C='Lab',            CERTIFICATION__c=certs.get('AWCM Network').Id),
			'AWCM Security Multiple Choice' => new Certification_Element__c(DESCRIPTION__C='90 question multiple choice exam',NAME='AWCM Security Multiple Choice',TYPE__C='Multiple Choice',CERTIFICATION__c=certs.get('AWCM Security').Id),
			'AWCP Security Lab'             => new Certification_Element__c(DESCRIPTION__C='Lab-based exam',                  NAME='AWCP Security Lab',            TYPE__C='Lab',            CERTIFICATION__c=certs.get('AWCP Security').Id),
			'AWCM Security Lab'             => new Certification_Element__c(DESCRIPTION__C='Lab-based exam',                  NAME='AWCM Security Lab',            TYPE__C='Lab',            CERTIFICATION__c=certs.get('AWCM Security').Id),
			'AWCM Server Multiple Choice'   => new Certification_Element__c(DESCRIPTION__C='90 question multiple choice exam',NAME='AWCM Server Multiple Choice',  TYPE__C='Multiple Choice',CERTIFICATION__c=certs.get('AWCM Server').Id),
			'AWCM Server Lab'               => new Certification_Element__c(DESCRIPTION__C='Lab-based exam',                  NAME='AWCM Server Lab',              TYPE__C='Lab',            CERTIFICATION__c=certs.get('AWCM Server').Id),
			'AWCP Network Multiple Choice'  => new Certification_Element__c(DESCRIPTION__C='90 question multiple choice exam',NAME='AWCP Network Multiple Choice', TYPE__C='Multiple Choice',CERTIFICATION__c=certs.get('AWCP Network').Id),
			'AWCP Network Lab'              => new Certification_Element__c(DESCRIPTION__C='lab-based exam',                  NAME='AWCP Network Lab',             TYPE__C='Lab',            CERTIFICATION__c=certs.get('AWCP Network').Id),
			'AWCP Security Multiple Choice' => new Certification_Element__c(DESCRIPTION__C='90 question multiple choice exam',NAME='AWCP Security Multiple Choice',TYPE__C='Multiple Choice',CERTIFICATION__c=certs.get('AWCP Security').Id),
			'AWCP Server Multiple Choice'   => new Certification_Element__c(DESCRIPTION__C='90 question multiple choice exam',NAME='AWCP Server Multiple Choice',  TYPE__C='Multiple Choice',CERTIFICATION__c=certs.get('AWCP Server').Id),
			'AWCP Server Lab'               => new Certification_Element__c(DESCRIPTION__C='Lab-based exam',                  NAME='AWCP Server Lab',              TYPE__C='Lab',            CERTIFICATION__c=certs.get('AWCP Server').Id)
		};
		insert elements.values();
		
		return elements;
	}
}