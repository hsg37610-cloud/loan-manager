/// Integer division rounded half away from zero. [den] must be > 0.
int roundDiv(int num, int den) {
  if (den <= 0) throw ArgumentError('Denominator must be positive');
  final n = num < 0 ? -num : num;
  final q = (2 * n + den) ~/ (2 * den);
  return num < 0 ? -q : q;
}