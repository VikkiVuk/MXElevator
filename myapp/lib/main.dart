  import 'package:myapp/src/teta_files/imports.dart';
  import 'package:supabase_flutter/supabase_flutter.dart';
  
  
  
  

  void main() async {
    WidgetsFlutterBinding.ensureInitialized();
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    TetaCMS.initialize(
      token: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6InZpa3RvcmJsYXphcmljMkBnbWFpbC5jb20iLCJlbWFpbF92ZXJpZmllZCI6dHJ1ZSwicHJvamVjdHMiOlsxOTUyMTEsMTk2MTc5XSwiaW1hZ2UiOiJodHRwczovL2xoMy5nb29nbGV1c2VyY29udGVudC5jb20vYS0vQUNOUEV1OExzWjJ3ZW1ma1VvN2w5aklwRmdPMWVmR1ctT2N4RTllSFhfVnlZZz1zOTYtYyIsIm5hbWUiOiJWaWt0b3IgQmxhemFyaWMiLCJlbWl0dGVyIjoiVGV0YS1BdXRoIiwiaWF0IjoxNjY0MDMwMzYyLCJleHAiOjQ4MTk3OTAzNjJ9.FvvUuIeJv-U5pM8173Udtne87IMvYKYPGT2uPNgzjRQ',
      prjId: 196179,
    );
    
      Supabase.initialize(
    url: 'https://ickltgejkjivioeqjyvy.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imlja2x0Z2Vqa2ppdmlvZXFqeXZ5Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2NjQwMTUyNDcsImV4cCI6MTk3OTU5MTI0N30.AZ6KqLawU8M1n78h9lh1V_IaHXSGWGqneyRKHo4wwZ4',
  );
  
    
    
    
    runApp(
      MyApp()
    );
  }

  class MyApp extends StatefulWidget {
    @override
    _MyAppState createState() => _MyAppState();
  }

  class _MyAppState extends State<MyApp> {
    @override
    void initState() {
      TranslatorGenerator.instance.init(
        mapLocales: [
          MapLocale('en', AppLocale.en),
        ],
        initLanguageCode: 'en',
      );
      TranslatorGenerator.instance.onTranslatedLanguage = _onTranslatedLanguage;
      super.initState();
    }

    void _onTranslatedLanguage(final Locale? locale) {
      setState(() {});
    }

    @override
    Widget build(BuildContext context) {
      return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (final context) => ThemeCubit(),
          ),
        ],
        child: Sizer(
          builder: (
            final context,
            final orientation,
            final deviceType,
          ) => MaterialApp(
            title: 'MX Elevator',
            supportedLocales: TranslatorGenerator.instance.supportedLocales,
            localizationsDelegates: TranslatorGenerator.instance.localizationsDelegates,
            home: SplashScreenView(
              navigateRoute: PageEntryPoint(
                key: ValueKey('PageEntryPoint English'),
              ),
              duration: 2200,
              imageSize: 80,
              imageSrc: 'assets/teta-app.png',
              text: '',
              textType: TextType.NormalText,
              textStyle: TextStyle(
                fontSize: 30.0,
              ),
              backgroundColor: Colors.black,
            ),
          ),
        ), 
      );
    }
  }

  
  