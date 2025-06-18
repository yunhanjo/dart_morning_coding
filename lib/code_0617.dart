class Solution {
  String findTheDifference(String s, String t) {
    print(s.codeUnits);
    List<int> sCodeUnits = s.codeUnits;
    int sSum = 0;
    for (var i = 0; i < sCodeUnits.length; i++) {
      sSum = sSum + sCodeUnits[i];
    }
    List<int> tCodeUnits = t.codeUnits;
    int tSum = 0;
    for (var i = 0; i < tCodeUnits.length; i++) {
      tSum = tSum + tCodeUnits[i];
    }
    int gap = tSum - sSum;
    print(gap);
    return String.fromCharCode(gap);
  }
}

void main() {
  String result = Solution().findTheDifference("abc", "abcd");
  print('result : $result');
}
