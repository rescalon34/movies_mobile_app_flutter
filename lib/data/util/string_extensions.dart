import 'network_constants.dart';

/// String Extensions file to call functions like: value.getPosterUrl();
extension StringExtensions on String? {
  String getPosterUrl({String posterWidth = Constants.w500PosterWidth}) {
    if (this != null) {
      return Constants.baseImageURL + posterWidth + this!;
    } else {
      return "";
    }
  }
}
