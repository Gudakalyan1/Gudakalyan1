public with sharing class UsersData {

	public static Map<String, User> loadTheUsers () {

		// If the instructor users already exist don't create them just return the map
		List<User> userslist = [SELECT Id, Alias FROM User];
		if ( userslist.size()>4 ) { // There are 4 users by default in a scratch org
			Map<String, User> usersmap = new Map<String, User>();
			for (User u : userslist) {
				usersmap.put(u.Alias, u);
			}
			return usersmap;
		}

		String usernameRandomBit = String.valueOf(Math.random()).substring(2, 14);
		Id chatterProfileId = [SELECT Id FROM Profile WHERE Name = 'Chatter External User' LIMIT 1].Id;
		Id trainingProfileId = [SELECT Id FROM Profile WHERE Name = 'Training User' LIMIT 1].Id;

		// Training users - don't think we need this one
		//users.add(new User(Alias = 'ELTOROIT', Email = 'ELTOROIT.awtraining@example.com', FirstName = 'Andres', LastName = 'Perez', ProfileId = trainingProfileId));

		// Instructors
		Map<String, User> users = new Map<String, User>{
		'AKATO'    => new User(Username='AKATO.' + usernameRandomBit + '@awtraining.com',   Alias='AKATO',   FirstName='Akira',  LastName='Kato',   Email='akato.awtraining@example.com',   ProfileId=chatterProfileId,Is_Instructor__c=true,CommunityNickname='AKATO.awtraining',   EmailEncodingKey='ISO-8859-1',LanguageLocaleKey='en_US',LocaleSidKey='en_US',TimeZoneSidKey='America/Los_Angeles'),
		'EPETERS'  => new User(Username='EPETERS.' + usernameRandomBit + '@awtraining.com', Alias='EPETERS', FirstName='Eugene', LastName='Peters', Email='epeters.awtraining@example.com', ProfileId=chatterProfileId,Is_Instructor__c=true,CommunityNickname='EPETERS.awtraining', EmailEncodingKey='ISO-8859-1',LanguageLocaleKey='en_US',LocaleSidKey='en_US',TimeZoneSidKey='America/Los_Angeles'),
		'HROSEN'   => new User(Username='HROSEN.' + usernameRandomBit + '@awtraining.com',  Alias='HROSEN',  FirstName='Heidi',  LastName='Rosen',  Email='hrosen.awtraining@example.com',  ProfileId=chatterProfileId,Is_Instructor__c=true,CommunityNickname='HROSEN.awtraining',  EmailEncodingKey='ISO-8859-1',LanguageLocaleKey='en_US',LocaleSidKey='en_US',TimeZoneSidKey='America/Los_Angeles'),
		'KTRAN'    => new User(Username='KTRAN.' + usernameRandomBit + '@awtraining.com',   Alias='KTRAN',   FirstName='Kim',    LastName='Tran',   Email='ktran.awtraining@example.com',   ProfileId=chatterProfileId,Is_Instructor__c=true,CommunityNickname='KTRAN.awtraining',   EmailEncodingKey='ISO-8859-1',LanguageLocaleKey='en_US',LocaleSidKey='en_US',TimeZoneSidKey='America/Los_Angeles'),
		'PHUGHES'  => new User(Username='PHUGHES.' + usernameRandomBit + '@awtraining.com', Alias='PHUGHES', FirstName='Patrick',LastName='Hughes', Email='phughes.awtraining@example.com', ProfileId=chatterProfileId,Is_Instructor__c=true,CommunityNickname='PHUGHES.awtraining', EmailEncodingKey='ISO-8859-1',LanguageLocaleKey='en_US',LocaleSidKey='en_US',TimeZoneSidKey='America/Los_Angeles'),
		'RMONTOYA' => new User(Username='RMONTOYA.' + usernameRandomBit + '@awtraining.com',Alias='RMONTOYA',FirstName='Raymond',LastName='Montoya',Email='rmontoya.awtraining@example.com',ProfileId=chatterProfileId,Is_Instructor__c=true,CommunityNickname='RMONTOYA.awtraining',EmailEncodingKey='ISO-8859-1',LanguageLocaleKey='en_US',LocaleSidKey='en_US',TimeZoneSidKey='America/Los_Angeles'),
		'SVINCENT' => new User(Username='SVINCENT.' + usernameRandomBit + '@awtraining.com',Alias='SVINCENT',FirstName='Sasha',  LastName='Vincent',Email='svincent.awtraining@example.com',ProfileId=chatterProfileId,Is_Instructor__c=true,CommunityNickname='SVINCENT.awtraining',EmailEncodingKey='ISO-8859-1',LanguageLocaleKey='en_US',LocaleSidKey='en_US',TimeZoneSidKey='America/Los_Angeles'),
		'VBOUDIN'  => new User(Username='VBOUDIN.' + usernameRandomBit + '@awtraining.com', Alias='VBOUDIN', FirstName='Viviane',LastName='Boudin', Email='vboudin.awtraining@example.com', ProfileId=chatterProfileId,Is_Instructor__c=true,CommunityNickname='VBOUDIN.awtraining', EmailEncodingKey='ISO-8859-1',LanguageLocaleKey='en_US',LocaleSidKey='en_US',TimeZoneSidKey='America/Los_Angeles')
		};

		insert users.values();

		return users;
	}
}
