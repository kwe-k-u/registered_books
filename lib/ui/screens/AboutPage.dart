import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("This application was not developed by any agency of the Government of Ghana.\n It was developed by an individual"+
        " in response to recent public outrage about books being used in schools depicting wrong imagery of some ethnic groups. \n List of "
            " approved books is obtained from the NACCA website at nacca.gov.gh"),
      ),
    );
  }
}
