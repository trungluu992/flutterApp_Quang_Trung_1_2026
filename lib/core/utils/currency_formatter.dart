class CurrencyFormatter {
  static String format(int amount) {
    final text = amount.toString();

    final buffer = StringBuffer();

    int count = 0;

    for (int i = text.length - 1; i >= 0; i--) {
      count++;

      buffer.write(text[i]);

      if (count % 3 == 0 && i != 0) {
        buffer.write('.');
      }
    }

    return '${buffer.toString().split('').reversed.join()}đ';
  }
}
