   
   void main(){
     String myText ="hi";
print(encrypt(myText));
print("now its time to see decrypted data ");
print(decrypt(myText));
print("its time to see the original string format ");
print(dataToString(myText));

   }
   
   var encryptionKey ='your encryption key';

    String encrypt(String data) {
    var charCount = data.length;
    var encrypted = [];
    var kp = 0;
    var kl = encryptionKey.length - 1;

    for (var i = 0; i < charCount; i++) {
      var other = data[i].codeUnits[0] ^ encryptionKey[kp].codeUnits[0];
      encrypted.insert(i, other);
      kp = (kp < kl) ? (++kp) : (0);
    }
    return dataToString(encrypted);
  }

   String decrypt(data) {
    return encrypt(data);
  }

   String dataToString(data) {
    var s = "";
    for (var i = 0; i < data.length; i++) {
      s += String.fromCharCode(data[i]);
    }
    return s;
  }