//* Uygulamadaki stringlerin tutulduğu singleton sınıf

class StringConstants {
  static StringConstants? _instance;
  static StringConstants? get instance {
    if (_instance != null) {
      return _instance;
    } else {
      _instance = StringConstants.init();
      return _instance!;
    }
  }

  StringConstants.init();

  final String listViewFirstSubtitle = "Sistem tahmini: ";
  final String listViewSecondSubtitle = "Tahmin oranı: ";
  final String listViewThirthSubtitle = "Tahmin yüzdesi: ";
}
