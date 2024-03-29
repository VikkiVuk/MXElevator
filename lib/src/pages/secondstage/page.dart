import 'dart:async';
import 'package:myapp/src/teta_files/imports.dart';
import 'package:myapp/auth/auth_state.dart';

import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class PageSecondStage extends StatefulWidget {
  const PageSecondStage({
    Key? key,
    this.requiredClicks = 0,
  }) : super(key: key);

  final int requiredClicks;

  @override
  _StateSecondStage createState() => _StateSecondStage();
}

class _StateSecondStage extends AuthState<PageSecondStage>
    with SingleTickerProviderStateMixin {
  int clicks = 0;

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
        'name': "SecondStage",
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
              duration: const Duration(
                milliseconds: 700,
              ),
              child: SlideAnimation(
                child: Padding(
                  padding: getValueForScreenType<EdgeInsets>(
                    context: context,
                    mobile: const EdgeInsets.only(
                      left: 20,
                      top: 50,
                      right: 20,
                      bottom: 20,
                    ),
                    tablet: const EdgeInsets.only(
                      left: 20,
                      top: 50,
                      right: 20,
                      bottom: 20,
                    ),
                    desktop: const EdgeInsets.only(
                      left: 20,
                      top: 50,
                      right: 20,
                      bottom: 20,
                    ),
                  ),
                  child: GridView(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 1,
                      crossAxisCount: 1,
                      crossAxisSpacing: 2,
                      childAspectRatio: 1,
                    ),
                    shrinkWrap: true,
                    primary: true,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                              ''''$clicks'  '/'  ${widget.requiredClicks} ''',
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  color: const Color(0xFF7E7E7E).withOpacity(1),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20,
                                  fontStyle: FontStyle.normal,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                              textAlign: TextAlign.left,
                              textDirection: TextDirection.ltr,
                              maxLines: 1),
                          Text(
                              ''''Click the button '  ${widget.requiredClicks} ' times'  ''',
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  color: Color(0xFFFFFFFF).withOpacity(1),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  fontStyle: FontStyle.normal,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                              textAlign: TextAlign.left,
                              textDirection: TextDirection.ltr,
                              maxLines: 1),
                          Padding(
                            padding: getValueForScreenType<EdgeInsets>(
                              context: context,
                              mobile: const EdgeInsets.only(
                                top: 30,
                              ),
                              tablet: const EdgeInsets.only(
                                top: 30,
                              ),
                              desktop: const EdgeInsets.only(
                                top: 30,
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                SizedBox(),
                              ],
                            ),
                          ),
                        ],
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
