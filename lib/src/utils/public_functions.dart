import 'dart:math';

class PublicFunc {
  static int randomGenerate() {
    Random random = Random();
    return random.nextInt(3);
  }
}
