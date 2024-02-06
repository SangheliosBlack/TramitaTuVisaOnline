import 'package:auto_route/auto_route.dart';

import 'package:skeleton/pages/pages.dart';
import 'package:skeleton/views/admin/home_view_page.dart';
import 'package:skeleton/views/admin/plataforma_page.dart';
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
            initial: true,
            path: '/'),
        CustomRoute(
          page: UserDashboardRoute.page,
          transitionsBuilder: TransitionsBuilders.fadeIn,
          reverseDurationInMilliseconds: 100,
          durationInMilliseconds: 100,
          children: [
            CustomRoute(
                page: HomeRoute.page,
                transitionsBuilder: TransitionsBuilders.fadeIn,
                reverseDurationInMilliseconds: 100,
                durationInMilliseconds: 100,
                initial: true,
                path: ''),
            CustomRoute(
                page: PlataformaRoute.page,
                transitionsBuilder: TransitionsBuilders.fadeIn,
                reverseDurationInMilliseconds: 100,
                durationInMilliseconds: 100,
                path: 'plataforma'),
            CustomRoute(
                page: AdministracionRoute.page,
                transitionsBuilder: TransitionsBuilders.fadeIn,
                reverseDurationInMilliseconds: 100,
                durationInMilliseconds: 100,
                path: 'administracion'),
            CustomRoute(
                page: ReferidosRoute.page,
                transitionsBuilder: TransitionsBuilders.fadeIn,
                reverseDurationInMilliseconds: 100,
                durationInMilliseconds: 100,
                path: 'referidos'),
          ],
          path: "/dashboard",
        ),
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
                  path: 'visa_primera-vez'),
              CustomRoute(
                  page: VisaRenovacionRoute.page,
                  transitionsBuilder: TransitionsBuilders.fadeIn,
                  reverseDurationInMilliseconds: 0,
                  durationInMilliseconds: 0,
                  path: 'visa_renovacion'),
              CustomRoute(
                  page: PasaporteRoute.page,
                  transitionsBuilder: TransitionsBuilders.fadeIn,
                  reverseDurationInMilliseconds: 0,
                  durationInMilliseconds: 0,
                  path: 'pasaporte_mexicano'),
              CustomRoute(
                  page: GlobalEntryRoute.page,
                  transitionsBuilder: TransitionsBuilders.fadeIn,
                  reverseDurationInMilliseconds: 0,
                  durationInMilliseconds: 0,
                  path: 'global_entry'),
            ],
            path: '/welcome'),
      ];
}
