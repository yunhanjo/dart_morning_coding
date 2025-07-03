void main() {
 print("Hello World".length);
}

    int lengthOfLastWord(String s) {
      //trim()은 공백제거, split()은 특정 패턴에 맞춰 분리
      var splitString = s.trim().split(' ');
        
        return splitString.last.length;
    }


