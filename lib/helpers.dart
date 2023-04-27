/// Metadata decorator to indicate what a func is subscribed to
const subscribe = 1;

extension IntExt on int {
  String toFriendlyString() {
    if (this > 1000000000000) {
      return "${this ~/ 1000000000000}t";
    } else if (this > 1000000000) {
      return "${this ~/ 1000000}b";
    } else if (this > 1000000) {
      return "${this ~/ 1000000}m";
    } else if (this > 8192) {
      return "${this ~/ 1000}k";
    } else {
      return toString();
    }
  }
}
