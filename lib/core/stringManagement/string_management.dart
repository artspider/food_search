class StringManagement {
  static String arrayToString(List<String> stringArray) {
    var textItem = "";
    int i = 1;
    for (var item in stringArray) {
      if (i == 1) {
        textItem = item;
      } else {
        textItem = textItem + ' ' + item;
      }
      i += 1;
    }

    return textItem;
  }
}
