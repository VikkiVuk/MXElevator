import 'package:myapp/src/teta_files/imports.dart';
import 'package:myapp/auth/auth_state.dart';

import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class PageLastStage extends StatefulWidget {
  const PageLastStage({
    Key? key,
  }) : super(key: key);

  @override
  _StateLastStage createState() => _StateLastStage();
}

class _StateLastStage extends AuthState<PageLastStage>
    with SingleTickerProviderStateMixin {
  String robloxUsername = 'Roblox';
  String email = 'john.doe@example.com';

  var datasets = <String, dynamic>{};
  int index = 0;

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();

    TetaCMS.instance.analytics.insertEvent(
      TetaAnalyticsType.usage,
      'App usage: view page',
      <String, dynamic>{
        'name': "LastStage",
      },
      isUserIdPreferableIfExists: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      resizeToAvoidBottomInset: true,
      backgroundColor: const Color(0xFF000000),
      body: Stack(
        children: [
          AnimationConfiguration.staggeredGrid(
            columnCount: 2,
            position: 0,
            duration: Duration(
              milliseconds: 500,
            ),
            child: SlideAnimation(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  top: 50,
                  right: 20,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(r'''Last Step!''',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: Color(0xFFFFFFFF).withOpacity(1),
                            fontWeight: FontWeight.w600,
                            fontSize: 32,
                            fontStyle: FontStyle.normal,
                            decoration: TextDecoration.none,
                          ),
                        ),
                        textAlign: TextAlign.left,
                        textDirection: TextDirection.ltr,
                        maxLines: 1),
                    Text(r'''just fill in the details below''',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: Color(0xFFFFFFFF).withOpacity(1),
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            fontStyle: FontStyle.normal,
                            decoration: TextDecoration.none,
                          ),
                        ),
                        textAlign: TextAlign.left,
                        textDirection: TextDirection.ltr,
                        maxLines: 1),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 20,
                        right: 20,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(r'''ROBLOX USERNAME''',
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  color: Color(0xFF7A7A7A).withOpacity(1),
                                  fontWeight: FontWeight.w900,
                                  fontSize: 12,
                                  fontStyle: FontStyle.normal,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                              textAlign: TextAlign.left,
                              textDirection: TextDirection.ltr,
                              maxLines: 1),
                          Container(
                            margin: const EdgeInsets.only(
                              top: 8,
                              right: 16,
                            ),
                            width: double.maxFinite,
                            decoration: BoxDecoration(
                              color: Color(0xFF191919).withOpacity(1),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8),
                                topRight: Radius.circular(8),
                                bottomRight: Radius.circular(8),
                                bottomLeft: Radius.circular(8),
                              ),
                              border: null,
                            ),
                            child: TextField(
                              onChanged: (String value) async {
                                setState(() {
                                  robloxUsername = value;
                                });
                              },
                              onSubmitted: (String value) async {
                                setState(() {
                                  robloxUsername = value;
                                });
                              },
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Color(0xFF191919).withOpacity(1),
                                counterStyle: TextStyle(
                                  color: Color(0xFF191919).withOpacity(1),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(8),
                                    topRight: Radius.circular(8),
                                    bottomRight: Radius.circular(8),
                                    bottomLeft: Radius.circular(8),
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.transparent, width: 1),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(8),
                                    topRight: Radius.circular(8),
                                    bottomRight: Radius.circular(8),
                                    bottomLeft: Radius.circular(8),
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.transparent, width: 1),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(8),
                                    topRight: Radius.circular(8),
                                    bottomRight: Radius.circular(8),
                                    bottomLeft: Radius.circular(8),
                                  ),
                                ),
                                hintText: r'''Enter Here''',
                                hintStyle: TextStyle(
                                  color: Color(0xFF424242).withOpacity(1),
                                ),
                                contentPadding: const EdgeInsets.only(
                                  left: 16,
                                  right: 16,
                                ),
                              ),
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  color: Color(0xFFFFFFFF).withOpacity(1),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                  fontStyle: FontStyle.normal,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                              textAlign: TextAlign.left,
                              textDirection: TextDirection.ltr,
                              minLines: 1,
                              showCursor: true,
                              autocorrect: false,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 20,
                        right: 20,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(r'''EMAIL''',
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  color: Color(0xFF7A7A7A).withOpacity(1),
                                  fontWeight: FontWeight.w900,
                                  fontSize: 12,
                                  fontStyle: FontStyle.normal,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                              textAlign: TextAlign.left,
                              textDirection: TextDirection.ltr,
                              maxLines: 1),
                          Container(
                            margin: const EdgeInsets.only(
                              top: 8,
                              right: 16,
                            ),
                            width: double.maxFinite,
                            decoration: BoxDecoration(
                              color: Color(0xFF191919).withOpacity(1),
                              border: null,
                            ),
                            child: TextField(
                              onChanged: (String value) async {
                                setState(() {
                                  email = value;
                                });
                              },
                              onSubmitted: (String value) async {
                                setState(() {
                                  email = value;
                                });
                              },
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Color(0xFF191919).withOpacity(1),
                                counterStyle: TextStyle(
                                  color: Color(0xFF191919).withOpacity(1),
                                ),
                                border: OutlineInputBorder(),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.transparent, width: 1),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.transparent, width: 1),
                                ),
                                hintText: r'''Enter Here''',
                                hintStyle: TextStyle(
                                  color: Color(0xFF424242).withOpacity(1),
                                ),
                                contentPadding: const EdgeInsets.only(
                                  left: 16,
                                  right: 16,
                                ),
                              ),
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  color: Color(0xFFFFFFFF).withOpacity(1),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                  fontStyle: FontStyle.normal,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                              textAlign: TextAlign.left,
                              textDirection: TextDirection.ltr,
                              minLines: 1,
                              showCursor: true,
                              autocorrect: false,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 30,
                        right: 36,
                      ),
                      child: const SizedBox(),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
