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
      body: Stack(
        children: [
          Container(
            color: Colors.white,
          ),
          SafeArea(
            child: Container(
              color: backColor ?? Colors.white,
            ),
          ),
          SafeArea(
            child: ListView(
              children: [
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: defaultMargin,
                      ),
                      height: 100.0,
                      color: Colors.white,
                      child: Row(
                        children: [
                          onBackButtonPressed != null
                              ? GestureDetector(
                                  onTap: () {
                                    if (onBackButtonPressed != null) {
                                      onBackButtonPressed();
                                    }
                                  },
                                  child: Container(
                                    width: 24.0,
                                    height: 24.0,
                                    margin: EdgeInsets.only(
                                      right: 26.0,
                                    ),
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                          'assets/back_arrow.png',
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              : SizedBox(),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children:[
                                  

                                ]
                              )
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
