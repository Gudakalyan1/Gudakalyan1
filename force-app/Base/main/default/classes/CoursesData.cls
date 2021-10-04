public without sharing class CoursesData {

	public static Map<String, Course__c> loadTheData (Map<String, Certification__c> certs) {
	
		Map<String, Course__c> courses = new Map<String, Course__c>{
			'[201] AWCP Server'           => new Course__c(NAME='[201] AWCP Server',          COURSE_DESCRIPTION__C='Learn advanced techniques and best practices when installing and maintaining AW Computing servers.', DURATION__C=5,STATUS__C='Active',CERTIFICATION__c=certs.get('AWCP Server').Id),
			'[102] AWCA Network'          => new Course__c(NAME='[102] AWCA Network',         COURSE_DESCRIPTION__C='Learn the fundamentals of installing and maintaining AW Computing networks.',                        DURATION__C=4,STATUS__C='Active',CERTIFICATION__c=certs.get('AWCA Network').Id),
			'[103] AWCA Security'         => new Course__c(NAME='[103] AWCA Security',        COURSE_DESCRIPTION__C='Learn the fundamentals of securing AW Computing networks.',                                          DURATION__C=4,STATUS__C='Active',CERTIFICATION__c=certs.get('AWCA Security').Id),
			'[302] AWCM Network'          => new Course__c(NAME='[302] AWCM Network',         COURSE_DESCRIPTION__C='Learn advanced troubleshooting techniques when installing and maintaining AW Computing networks.',   DURATION__C=5,STATUS__C='Active',CERTIFICATION__c=certs.get('AWCM Network').Id),
			'[203] AWCP Security'         => new Course__c(NAME='[203] AWCP Security',        COURSE_DESCRIPTION__C='Learn advanced techniques and best pratices when securing AW Computing networks.',                   DURATION__C=5,STATUS__C='Active',CERTIFICATION__c=certs.get('AWCP Security').Id),
			'[101] AWCA Server'           => new Course__c(NAME='[101] AWCA Server',          COURSE_DESCRIPTION__C='Learn the fundamentals of installing and maintaining AW Computing servers.',                         DURATION__C=4,STATUS__C='Active',CERTIFICATION__c=certs.get('AWCA Server').Id),
			'[301] AWCM Server'           => new Course__c(NAME='[301] AWCM Server',          COURSE_DESCRIPTION__C='Learn advanced troubleshooting techniques when installing and maintaining AW Computing servers.',    DURATION__C=5,STATUS__C='Active',CERTIFICATION__c=certs.get('AWCM Server').Id),
			'[303] AWCM Security'         => new Course__c(NAME='[303] AWCM Security',        COURSE_DESCRIPTION__C='Learn advanced troubleshooting techniques when securing AW Computing networks.',                     DURATION__C=5,STATUS__C='Active',CERTIFICATION__c=certs.get('AWCM Security').Id),
			'[202] AWCP Network'          => new Course__c(NAME='[202] AWCP Network',         COURSE_DESCRIPTION__C='Learn advanced techniques and best practices when installing and maintaining AW Computing networks.',DURATION__C=5,STATUS__C='Active',CERTIFICATION__c=certs.get('AWCP Network').Id),
			'[401] Data Recovery'         => new Course__c(NAME='[401] Data Recovery',        COURSE_DESCRIPTION__C='Learn techniques and best practices around data recovery.',                                          DURATION__C=3,STATUS__C='Active'),
			'[402] Managing Network Load' => new Course__c(NAME='[402] Managing Network Load',COURSE_DESCRIPTION__C='Learn techniques and best practices around managing network load.',                                  DURATION__C=3,STATUS__C='Active')
		};
		insert courses.values();
		
		return courses;
	}
}