extension NullableStringX on String? {
  bool get isNullOrEmpty {
    final string = this;
    return string == null || string.isEmpty;
  }
}
