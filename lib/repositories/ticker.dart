class Ticker {
  Stream<int> tick({required int ticks}) {
    if (ticks < 0) {
      throw ArgumentError('ticks cannot be negative');
    }
    return Stream.periodic(
      const Duration(seconds: 1),
      (x) => ticks - x - 1,
    ).take(ticks);
  }
}
