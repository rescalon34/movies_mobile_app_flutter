import 'package:intl/intl.dart';

extension DateUtilExtensions on String? {

  parseDateToMonthYear({String format = monthYearFormat}) {

    DateTime dateTime = DateTime.parse(this ?? "");

    // Format the given date object to "MMMM, yyyy".
    String formattedDate = DateFormat(format).format(dateTime);
    return formattedDate;
  }
}

/// MARK: - const variables for date formatting.
const String monthYearFormat = 'MMMM, yyyy';