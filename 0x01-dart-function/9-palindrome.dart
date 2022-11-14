bool isPalindrome(String s) {
  if (s.length == 2) {
    return false;
  }
  String? reversed = s.split('').reversed.join();
  //compare the reversed string with the original string
  if (s == reversed) {
    return true;
  }
  return false;
}

main() {
  print(isPalindrome("aa"));
  print(isPalindrome("abcba"));
  print(isPalindrome("abcde"));
}