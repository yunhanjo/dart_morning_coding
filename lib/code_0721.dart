bool isHappy(int n) {
  // Step 1: 중복 확인을 위한 Set 생성
  Set<int> seen = {};
 
  // Step 2: 반복해서 숫자의 제곱 합 계산
  while (n != 1 && !seen.contains(n)) {
    seen.add(n); // 현재 숫자를 Set에 추가
    n = getSquareSum(n); // 제곱 합 계산
  }

  // Step 3: 숫자가 1이면 행복한 숫자, 아니면 false 반환
  return n == 1;
}

// 숫자의 각 자리 제곱 합을 계산하는 함수
int getSquareSum(int num) {
  int sum = 0;
  while (num > 0) {
    int digit = num % 10; // 현재 자리 숫자    
    sum += digit * digit; // 제곱 합산    
    num ~/= 10; // 다음 자리로 이동 (정수를 반환하는 나누기 + 대입)
  }
  return sum;
}

void main() {
  //int n = 1;
  int n = 2;
  print(isHappy(n));
}