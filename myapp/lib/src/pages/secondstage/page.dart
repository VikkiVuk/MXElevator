import 'package:myapp/src/teta_files/imports.dart';
import 'package:myapp/auth/auth_state.dart';

import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class PageSecondStage extends StatefulWidget {
  const PageSecondStage({
    Key? key,
    this.requiredClicks = 0,
    this.requiredClicks2 = 0,
  }) : super(key: key);

  final double requiredClicks;
  final int requiredClicks2;

  @override
  _StateSecondStage createState() => _StateSecondStage();
}

class _StateSecondStage extends AuthState<PageSecondStage>
    with SingleTickerProviderStateMixin {
  double clicks = 0;

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
              milliseconds: 700,
            ),
            child: SlideAnimation(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  top: 50,
                  right: 20,
                  bottom: 20,
                ),
                child: GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
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
                        Text('''${clicks} / ${widget.requiredClicks} ''',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: Color(0xFF7E7E7E).withOpacity(1),
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
                            '''Click the button  ${widget.requiredClicks}  times ''',
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
                          padding: const EdgeInsets.only(
                            top: 30,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(),
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
    );
  }
}
