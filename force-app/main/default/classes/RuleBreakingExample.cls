public with sharing class RuleBreakingExample {
    public void RuleBreakingExample(){
        Blob hardCodedKey = Blob.valueOf('0000000000000000');
        Blob hardCodedIV = Blob.valueOf('Hardcoded IV 123');
        Blob data = Blob.valueOf('Data to be encrypted');
        
        //Bad: use of hard coded key/iv.
        Blob encrypted = Crypto.encrypt('AES128', hardCodedKey, hardCodedIV, data);
        
        //Good: this is preferred.
        // key = Crypto.generateAesKey(128);
        //Blob data = Blob.valueOf('Data to be encrypted');
        //Blob encrypted = Crypto.encryptWithManagedIV('AES128', key, data);
      }
}