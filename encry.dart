  import 'dart:io';

List<String> alphabet = [
      'a',
      'b',
      'c',
      'd',
      'e',
      'f',
      'g',
      'h',
      'i',
      'j',
      'k',
      'l',
      'm',
      'n',
      'o',
      'p',
      'q',
      'r',
      's',
      't',
      'u',
      'v',
      'w',
      'x',
      'y',
      'z'
    ];

    void main() {
      stdout.write("Enter the encryption key: ");
      // if the entered k is null, then set k as 0
      var k = int.parse(stdin.readLineSync() ?? "0");
      stdout.write("Enter the plaintext: ");
      // not including the uppercase
      var plaintext = (stdin.readLineSync() ?? "").toLowerCase();
      var encryptedText = "";
      for (var char in plaintext.split('')) {
        // if the char is a letter, then match the alphabet
        if (char.contains(RegExp(r'[a-z]'))) {
          for (var i = 0; i < 26; i++) {
            if (alphabet[i] == char) {
              // if the matched letter is 26-k below, then find the letter over k interval
              if (i < 26 - k) {
                encryptedText += alphabet[i + k];
              } else {
                // if above, return the start point
                encryptedText += alphabet[i + k - 26];
              }
            }
          }
        } else {
          // if not, then simply add it
          encryptedText += char;
        }
      }
      print("The encryptedText is: $encryptedText");
      print("the plian text is: $plaintext");
    }