void main() {
  List a = [1, 2, 3, 7];
  List b = [1, 2, 3];

  var result = WholeProcess(a, b);
  print(result);
}

WholeProcess(List a, List b) {
  List small = a.length > b.length ? b : a;
  List big = a.length > b.length ? a : b;

  if (small.isEmpty && big.isEmpty) {
    return 'both are empty';
  }

  if (small.isEmpty) {
    return (a.isEmpty) ? 'b is superList of a' : 'a is superList of b';
  }

  if (big.length == small.length) {
    return (a.toString() == b.toString()) ? 'equal' : 'unequal';
  } else {
    for (int i = 0; i <= big.length - small.length; i++) {
      var subList = big.sublist(i, i + small.length);

      if (subList.toString() == small.toString()) {
        return a.length < b.length ? 'a is sublist of b' : 'b is sublist of a';
      }
    }
  }
  return 'unequal';
}
