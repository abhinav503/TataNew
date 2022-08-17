class Problem {
  String longOperationMethod() {
    int counting = 1;
    while (counting <= 1000000000) {
      counting += 1;
    }
    return "$counting! times I print the value";
  }

  ll() {
    var list1 = ["Ok", "love", "Flutter"];

    final list2 = list1;
    list2[2] = "dart"; // will  compile
    // const list3 = list1; // will not compile
  }
}
