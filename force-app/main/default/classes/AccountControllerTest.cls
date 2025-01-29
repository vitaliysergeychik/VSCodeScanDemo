@isTest
private class AccountControllerTest {

@isTest
    static void testGetAllActiveAccounts() {
        List<Account> accounts = [SELECT Id, Name, Active__c FROM Account WHERE Active__c = 'Yes' WITH SECURITY_ENFORCED];
        Test.startTest();
        List<Account> result = AccountController.getAllActiveAccounts();
        Test.stopTest();
        System.assertEquals(accounts.size(), result.size(), 'Expected all accounts to be returned');
    }
@isTest
    static void testGetAllInactiveAccounts() {
        List<Account> accounts = [SELECT Id, Name, Active__c FROM Account WHERE Active__c = 'No' WITH SECURITY_ENFORCED];
        Test.startTest();
        List<Account> result = AccountController.getAllInactiveAccounts();
        Test.stopTest();
        System.assertEquals(accounts.size(), result.size(), 'Expected all accounts to be returned');
    }
}