import 'package:flutter/material.dart';
import 'package:electronic_grader/core/theme/app_theme.dart';
import 'package:electronic_grader/features/dashboard/presentation/screens/dashboard_screen.dart';

class ElectronicGraderApp extends StatelessWidget {
  const ElectronicGraderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'المصحح الإلكتروني',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      locale: const Locale('ar', 'AE'),
      supportedLocales: const [
        Locale('ar', 'AE'),
      ],
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      builder: (context, child) {
        return Directionality(
          textDirection: TextDirection.rtl,
          child: child!,
        );
      },
      home: const DashboardScreen(),
    );
  }
}
