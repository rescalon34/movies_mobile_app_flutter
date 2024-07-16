import 'package:flutter/cupertino.dart';

class GenericPage extends StatelessWidget {
  final String screenTitle;

  const GenericPage({
    super.key,
    this.screenTitle = "",
  });

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(screenTitle));
  }
}
