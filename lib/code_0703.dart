//유효한 애너그램
void main() {
  var s = "anagram";
  var t = "nagaram";
  print(isAnagram(s, t));
}

bool isAnagram (String s, String t) {
 var list1 = s.split('')..sort();
 var list2 = t.split('')..sort();

print(list1);
print(list2);

 return list1.join() == list2.join();
}
