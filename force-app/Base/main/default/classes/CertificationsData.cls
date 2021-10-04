public without sharing class CertificationsData {

	public static Map<String, Certification__c> loadTheData () {
	
		Map<String, Certification__c> certs = new Map<String, Certification__c>{
		'AWCP Server'         => new Certification__c(CERTIFICATION_DESCRIPTION__C='AW Computing Certified Professional Server',    NAME='AWCP Server',       STATUS__C='Active'),
		'AWCA Network'        => new Certification__c(CERTIFICATION_DESCRIPTION__C='AW Computing Certified Associate Network',      NAME='AWCA Network',      STATUS__C='Active'),
		'AWCA Security'       => new Certification__c(CERTIFICATION_DESCRIPTION__C='AW Computing Certified Associate Security',     NAME='AWCA Security',     STATUS__C='Active'),
		'AWCM Network'        => new Certification__c(CERTIFICATION_DESCRIPTION__C='AW Computing Certified Master Network',         NAME='AWCM Network',      STATUS__C='Active'),
		'AWCP Security'       => new Certification__c(CERTIFICATION_DESCRIPTION__C='AW Computing Certified Professional Security',  NAME='AWCP Security',     STATUS__C='Active'),
		'AWCA Server'         => new Certification__c(CERTIFICATION_DESCRIPTION__C='AW Computing Certified Associate Server',       NAME='AWCA Server',       STATUS__C='Active'),
		'AWCM Server'         => new Certification__c(CERTIFICATION_DESCRIPTION__C='AW Computing Certified Master Server',          NAME='AWCM Server',       STATUS__C='Active'),
		'AWCM Security'       => new Certification__c(CERTIFICATION_DESCRIPTION__C='AW Computing Certified Master Security',        NAME='AWCM Security',     STATUS__C='Active'),
		'AWCP Network'        => new Certification__c(CERTIFICATION_DESCRIPTION__C='AW Computing Certified Professional Network',   NAME='AWCP Network',      STATUS__C='Active'),
		'AW Code Of Conduct'  => new Certification__c(CERTIFICATION_DESCRIPTION__C='Tests knowledge of AW policies and procedures.',NAME='AW Code Of Conduct',STATUS__C='Active')
		};
		insert certs.values();
		
		return certs;
	}
}