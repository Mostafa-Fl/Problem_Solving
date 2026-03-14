num solution(int number) {
  return Iterable.generate(number)
      .where((element) => element % 3 == 0 || element % 5 == 0)
      .fold(0, (previousValue, element) => previousValue + element);
}

num anotherSolution(int number) {
  int sum = 0;
  if (num == 0) {
    return 0;
  }
  for (int i = 1; i < number; i++) {
    if (i % 3 == 0 || i % 5 == 0) {
      sum += i;
    }
  }
  return sum;
}
