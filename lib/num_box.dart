class NumberBox {
  NumberBox(this._value);
  int _value;

  /// Merges the [NumberBox] provided into this [NumberBox] and the
  /// destroys the other boxes
  void mergeInto(List<NumberBox> boxes) {
    for (var box in boxes) {
      _value += box._value;
      box.destroy();
    }
  }

  /// Determines if the provided [NumberBox]s are able to be merged to this box
  bool canMerge(List<NumberBox> boxes) {
    if (boxes.isEmpty) return false;
    var items = boxes.toList()..add(this);
    if (items[0]._value != items[1]._value) return false;

    for (var i = 1; i < items.length - 1; i++) {
      if (items[i]._value == items[i + 1]._value) continue;
      if (items[i]._value == (items[i + 1]._value * 2).toInt()) continue;
      return false;
    }
    return true;
  }

  /// Handles removing the box from the screen
  void destroy() {}
}
