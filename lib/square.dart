square() {
  for (int i = 1; i <= 5; i++) {
    String stars = '*' * 5;
    print(stars);
  }
}


squareTwo() {
  //int rows = 5;
  for (int i = 1; i <= 5; i++) {
    String stars = '';

    for (int j = 1; j <= 5; j++) {
      stars += '*';
    }

    print(stars);
  }
}

void main() {
  squareTwo();
}