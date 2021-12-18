// ignore_for_file: constant_identifier_names

enum MatchServiceEndPoints { MATCH }

extension MatchServiceExtension on MatchServiceEndPoints {
  String rawValue() {
    switch (this) {
      case MatchServiceEndPoints.MATCH:
        return 'v0/b/sahavar-1.appspot.com/o/data.json?alt=media';
    }
  }
}
