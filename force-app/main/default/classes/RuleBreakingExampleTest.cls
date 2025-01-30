@isTest
private class RuleBreakingExampleTest {

@isTest
    static void testRuleBreakingExample() {
        Test.startTest();
        RuleBreakingExample example = new RuleBreakingExample();
        Test.stopTest();
        // Bad: hard-coded key and IV in the encryption call
        Blob encrypted = Crypto.encrypt('AES128', Blob.valueOf('0000000000000000'),
                                        Blob.valueOf('Hardcoded IV 123'), Blob.valueOf('Data to be encrypted'));
        System.assertEquals(true, encrypted.size() > 0, 'Hard-coded key and IV should not be used');
    }
}