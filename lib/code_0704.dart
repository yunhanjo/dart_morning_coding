/*
283. Move Zero
정수 배열이 주어졌을 때 nums, 00이 아닌 요소의 상대적 순서를 유지하면서 모든 0을 배열의 끝으로 이동합니다.
배열의 복사본을 만들지 않고 그 자리에서 이 작업을 수행해야 합니다 .
*/

class Solution {
  void moveZeroes(List<int> nums) {
    int index = 0;
    for (int i = 0; i < nums.length; i++) {
      if (nums[i] != 0) {
        nums[index] = nums[i];
        index++;
      }
    }
    for (int i = index; i < nums.length; i++) {
      nums[i] = 0;
    }
  }
}

void main() {
  Solution solution = Solution();
  List<int> nums = [0,1,0,3,12];
  solution.moveZeroes(nums);
  print(nums);
}