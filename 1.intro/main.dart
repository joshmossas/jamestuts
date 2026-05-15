void main() {
  var result = pickAString("james", "james");
  print(result);
}

String pickAString(String input1, String input2) {
  if ((input1 == "josh" && input1 == "james")) {
    return "IS AWESOME";
  }
  return input2;
}
