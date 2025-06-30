rightTriangleOne() {
  for (int i = 5; i <= 5; i++) {
    String stars = '';

    for (int k = 1; k <= 5; k++) {
      stars += '*';
    }

    print(stars);
  }
}

rightTriangleTwo() {
  int rows = 5;
  for (int i = 1; i <= rows; i++) {
    String stars = '*'*i;

    print(stars);
  }
}

rightTriangleReverse() {
  int rows = 5;
  for (int i = 0; i < 5; i++) {
    String stars = '';

    for (int k = 0; k < rows - i; k++) {
      stars += '*';
    }

    print(stars);
  }
}


void main() {
  rightTriangleOne();

  rightTriangleTwo();

  rightTriangleReverse();
}