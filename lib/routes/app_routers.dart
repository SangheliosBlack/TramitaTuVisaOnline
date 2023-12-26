import 'package:auto_route/auto_route.dart';
import 'package:skeleton/pages/dashboard_page.dart';

import 'package:skeleton/pages/pages.dart';
import 'package:skeleton/views/admin/home_page.dart';
import 'package:skeleton/views/views.dart';

part 'app_routers.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        CustomRoute(
            page: SplashRoute.page,
            transitionsBuilder: TransitionsBuilders.fadeIn,
            reverseDurationInMilliseconds: 800,
            durationInMilliseconds: 800,
            path: '/splash'),
        CustomRoute(
            page: DashboardRoute.page,
            initial: true,
            transitionsBuilder: TransitionsBuilders.fadeIn,
            reverseDurationInMilliseconds: 100,
            durationInMilliseconds: 100,
            path: "/admin",
            
            children: [
              CustomRoute(
                  page: HomeRoute.page,
                  transitionsBuilder: TransitionsBuilders.fadeIn,
                  reverseDurationInMilliseconds: 100,
                  durationInMilliseconds: 100,
                  path: ''),
            ]),
        CustomRoute(
            page: WelcomeRoute.page,
            transitionsBuilder: TransitionsBuilders.fadeIn,
            reverseDurationInMilliseconds: 100,
            durationInMilliseconds: 100,
            children: [
              CustomRoute(
                  page: LoginViewRoute.page,
                  transitionsBuilder: TransitionsBuilders.fadeIn,
                  reverseDurationInMilliseconds: 100,
                  durationInMilliseconds: 100,
                  path: 'login'),
              CustomRoute(
                  initial: true,
                  page: WelcomeViewRoute.page,
                  transitionsBuilder: TransitionsBuilders.fadeIn,
                  reverseDurationInMilliseconds: 100,
                  durationInMilliseconds: 100,
                  path: ''),
              CustomRoute(
                  page: VisaPrimeraVezRoute.page,
                  transitionsBuilder: TransitionsBuilders.fadeIn,
                  reverseDurationInMilliseconds: 0,
                  durationInMilliseconds: 0,
                  path: 'visa-primera-vez'),
              CustomRoute(
                  page: VisaRenovacionRoute.page,
                  transitionsBuilder: TransitionsBuilders.fadeIn,
                  reverseDurationInMilliseconds: 0,
                  durationInMilliseconds: 0,
                  path: 'visa-renovacion'),
              CustomRoute(
                  page: PasaporteRoute.page,
                  transitionsBuilder: TransitionsBuilders.fadeIn,
                  reverseDurationInMilliseconds: 0,
                  durationInMilliseconds: 0,
                  path: 'pasaporte-mexicano'),
              CustomRoute(
                  page: GlobalEntryRoute.page,
                  transitionsBuilder: TransitionsBuilders.fadeIn,
                  reverseDurationInMilliseconds: 0,
                  durationInMilliseconds: 0,
                  path: 'global-entry'),
            ],
            path: '/'),
        CustomRoute(
            page: AuthRoute.page,
            transitionsBuilder: TransitionsBuilders.fadeIn,
            reverseDurationInMilliseconds: 400,
            durationInMilliseconds: 400,
            path: '/auth'),
      ];
}
