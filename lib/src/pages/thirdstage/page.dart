import 'dart:async';
import 'package:myapp/src/teta_files/imports.dart';
import 'package:myapp/constants.dart' as constantz;
import 'package:myapp/auth/auth_state.dart';

import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class PageThirdStage extends StatefulWidget {
  const PageThirdStage({
    Key? key,
  }) : super(key: key);

  @override
  _StateThirdStage createState() => _StateThirdStage();
}

class _StateThirdStage extends AuthState<PageThirdStage>
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
        'name': "ThirdStage",
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
                      Text('Nice!',
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
                      Text("you did it, i'm so proud of you.",
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
                        padding: getValueForScreenType<EdgeInsets>(
                          context: context,
                          mobile: const EdgeInsets.only(
                            top: 20,
                          ),
                          tablet: const EdgeInsets.only(
                            top: 20,
                          ),
                          desktop: const EdgeInsets.only(
                            top: 20,
                          ),
                        ),
                        child: GestureDetector(
                          onTap: () async {
                            await Navigator.push<void>(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PageLastStage(
                                  tableName:
                                      datasets['null']?[index]?['null'] ?? '',
                                ),
                              ),
                            );
                          },
                          child: Container(
                              width: double.maxFinite,
                              height: 48,
                              decoration: BoxDecoration(
                                color: Color(0xFF3285FF).withOpacity(1),
                                borderRadius:
                                    getValueForScreenType<BorderRadius>(
                                  context: context,
                                  mobile: BorderRadius.only(
                                    topLeft: Radius.circular(8),
                                    topRight: Radius.circular(8),
                                    bottomRight: Radius.circular(8),
                                    bottomLeft: Radius.circular(8),
                                  ),
                                  tablet: BorderRadius.only(
                                    topLeft: Radius.circular(8),
                                    topRight: Radius.circular(8),
                                    bottomRight: Radius.circular(8),
                                    bottomLeft: Radius.circular(8),
                                  ),
                                  desktop: BorderRadius.only(
                                    topLeft: Radius.circular(8),
                                    topRight: Radius.circular(8),
                                    bottomRight: Radius.circular(8),
                                    bottomLeft: Radius.circular(8),
                                  ),
                                ),
                                border: null,
                              ),
                              child: Center(
                                child: Text(
                                  'Continue',
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                      color: Color(0xFFFFFFFF).withOpacity(1),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                      fontStyle: FontStyle.normal,
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                                  textAlign: TextAlign.center,
                                  textDirection: TextDirection.ltr,
                                ),
                              )),
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
