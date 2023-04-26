import 'package:flutter_test/flutter_test.dart';
import 'package:swipe_2048/num_box.dart';

void main() {
  group("NumberBox.canMerge()", () {
    test("None liner order", () {
      var t = NumberBox(8).canMerge([
        NumberBox(2),
        NumberBox(2),
        NumberBox(8),
        NumberBox(4),
      ]);
      print(t);
      expect(false, t);
    });

    test("Small merge", () {
      expect(true, NumberBox(8).canMerge([NumberBox(8)]));
    });
    test("Correct merge", () {
      expect(
          true,
          NumberBox(8).canMerge([
            NumberBox(2),
            NumberBox(2),
            NumberBox(4),
            NumberBox(4),
          ]));
    });
  });
}
