/* 문제
길이 n인 정수 배열 prices가 주어집니다. prices[i]는 i번째 날에 해당 주식의 가격을 나타냅니다.

한 번의 거래(한 주를 매수하고, 이후의 다른 하루에 매도)로 얻을 수 있는 최대 이익을 구하세요.
이익을 낼 수 없는 경우에는 0을 반환합니다.

* 조건
1. 1 <= prices.length <= 10^5
2. 0 <= prices[i] <= 10^4

* 예시
예제 1
	입력: prices = [7,1,5,3,6,4]
	출력: 5
	설명: 주식을 1에 사고 6에 팔면 이익이 5가 됩니다. (6 - 1 = 5)

예제 2
	입력: prices = [7,6,4,3,1]
	출력: 0
	설명: 이 경우 주식을 사서 팔 수 있는 이익이 없습니다. (최대 이익이 0)*/

  import 'dart:math';

class Solution {
    int maxProfit(List<int> prices) {
    int minPrice = prices[0];
    int maxProfit = 0;

    for (int price in prices) {
      minPrice = min(minPrice, price);
      maxProfit = max(maxProfit, price - minPrice);
    }

    print(maxProfit);
    return maxProfit;
    }
}

void main() {
  Solution solution = Solution();

  List<int> prices = [7,1,5,3,6,4];
  //List<int> prices = [7,6,4,3,1];
  solution.maxProfit(prices);
}
