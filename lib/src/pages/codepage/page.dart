import 'dart:async';
import 'package:myapp/src/teta_files/imports.dart';
import 'package:myapp/constants.dart' as constantz;
import 'package:myapp/auth/auth_state.dart';

import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class PageCodePage extends StatefulWidget {
  const PageCodePage({
    Key? key,
  }) : super(key: key);

  @override
  _StateCodePage createState() => _StateCodePage();
}

class _StateCodePage extends AuthState<PageCodePage>
    with SingleTickerProviderStateMixin {
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
        'name': "CodePage",
      },
      isUserIdPreferableIfExists: true,
    );

    unawaited(
      Future.delayed(
        Duration.zero,
        () async {},
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      resizeToAvoidBottomInset: true,
      backgroundColor: const Color(0xFF000000),
      body: IntrinsicHeight(
        child: Stack(
          children: [
            AnimationConfiguration.staggeredGrid(
              columnCount: 2,
              position: 0,
              duration: Duration(
                milliseconds: 500,
              ),
              child: SlideAnimation(
                child: Padding(
                  padding: getValueForScreenType<EdgeInsets>(
                    context: context,
                    mobile: const EdgeInsets.only(
                      left: 20,
                      top: 50,
                      right: 20,
                    ),
                    tablet: const EdgeInsets.only(
                      left: 20,
                      top: 50,
                      right: 20,
                    ),
                    desktop: const EdgeInsets.only(
                      left: 20,
                      top: 50,
                      right: 20,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Congrats!',
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
                      Text('your code is down below',
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
                      AnimationConfiguration.staggeredList(
                        position: 0,
                        duration: Duration(
                          milliseconds: 2000,
                        ),
                        child: FadeInAnimation(
                          child: Padding(
                            padding: getValueForScreenType<EdgeInsets>(
                              context: context,
                              mobile: const EdgeInsets.only(
                                top: 50,
                              ),
                              tablet: const EdgeInsets.only(
                                top: 50,
                              ),
                              desktop: const EdgeInsets.only(
                                top: 50,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('75913',
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        color: Color(0xFFFFFFFF).withOpacity(1),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 40,
                                        fontStyle: FontStyle.normal,
                                        decoration: TextDecoration.none,
                                      ),
                                    ),
                                    textAlign: TextAlign.left,
                                    textDirection: TextDirection.ltr,
                                    maxLines: 1),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
