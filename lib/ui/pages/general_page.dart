part of 'pages.dart';

class GeneralPage extends StatelessWidget {
  final String title;
  final String subtitle;
  final Function onBackButtonPressed;
  final Widget child;
  final Color backColor;

  GeneralPage(
      {this.title = "Title",
      this.subtitle = "subtitle",
      this.onBackButtonPressed,
      this.child,
      this.backColor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
      ),
    );
  }
}
