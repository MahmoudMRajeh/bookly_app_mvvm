import 'package:alarm_app/config/routes.dart';
import 'package:alarm_app/core/utils/app_colors.dart';
import 'package:alarm_app/core/utils/service_locator.dart' as di;
import 'package:alarm_app/features/home/presentaion/manager/featured%20books%20cubit/featured_books_cubit.dart';
import 'package:alarm_app/features/home/presentaion/manager/newst%20books%20cubit/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) {
            return FeaturedBooksCubit(di.sl())..fetchFeaturedBooks();
          },
        ),
        BlocProvider(create: (context) {
          return NewestBooksCubit(di.sl());
        }),
      ],
      child: MaterialApp.router(
        routerConfig: AppRoutes.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: AppColors.primaryColor,
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
          appBarTheme: AppBarTheme(
            color: AppColors.primaryColor,
          ),
        ),
      ),
    );
  }
}
