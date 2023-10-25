import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';

import '/auth/base_auth_user_provider.dart';

import '/index.dart';
import '/main.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'serialization_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? HomePageWidget() : LoginWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? HomePageWidget() : LoginWidget(),
        ),
        FFRoute(
          name: 'Wallet',
          path: '/wallet',
          builder: (context, params) => WalletWidget(),
        ),
        FFRoute(
          name: 'Setting',
          path: '/setting',
          builder: (context, params) => SettingWidget(),
        ),
        FFRoute(
          name: 'OTPverificationlogin',
          path: '/oTPverificationlogin',
          builder: (context, params) => OTPverificationloginWidget(),
        ),
        FFRoute(
          name: 'Register',
          path: '/register',
          builder: (context, params) => RegisterWidget(),
        ),
        FFRoute(
          name: 'HomePage',
          path: '/homePage',
          builder: (context, params) => HomePageWidget(),
        ),
        FFRoute(
          name: 'landingscreen',
          path: '/landingscreen',
          builder: (context, params) => LandingscreenWidget(),
        ),
        FFRoute(
          name: 'OTPverification',
          path: '/oTPverification',
          builder: (context, params) => OTPverificationWidget(),
        ),
        FFRoute(
          name: 'createyourprofile2',
          path: '/createyourprofile2',
          builder: (context, params) => Createyourprofile2Widget(),
        ),
        FFRoute(
          name: 'login',
          path: '/login',
          builder: (context, params) => LoginWidget(),
        ),
        FFRoute(
          name: 'createyourprofile2Continue',
          path: '/createyourprofile2Continue',
          builder: (context, params) => Createyourprofile2ContinueWidget(),
        ),
        FFRoute(
          name: 'createyourprofile3',
          path: '/createyourprofile3',
          builder: (context, params) => Createyourprofile3Widget(),
        ),
        FFRoute(
          name: 'createyourprofile4',
          path: '/createyourprofile4',
          builder: (context, params) => Createyourprofile4Widget(),
        ),
        FFRoute(
          name: 'CountrySelector',
          path: '/countrySelector',
          builder: (context, params) => CountrySelectorWidget(),
        ),
        FFRoute(
          name: 'createyourprofile',
          path: '/createyourprofile',
          builder: (context, params) => CreateyourprofileWidget(),
        ),
        FFRoute(
          name: 'Discover',
          path: '/discover',
          builder: (context, params) => DiscoverWidget(),
        ),
        FFRoute(
          name: 'aiChat',
          path: '/aiChat',
          builder: (context, params) => AiChatWidget(),
        ),
        FFRoute(
          name: 'profile',
          path: '/profile',
          builder: (context, params) => ProfileWidget(
            profileRef: params.getParam(
                'profileRef', ParamType.DocumentReference, false, ['users']),
          ),
        ),
        FFRoute(
          name: 'Postdetails',
          path: '/postdetails',
          builder: (context, params) => PostdetailsWidget(
            userpostref: params.getParam('userpostref',
                ParamType.DocumentReference, false, ['userspost']),
          ),
        ),
        FFRoute(
          name: 'verfyingastravellers',
          path: '/verfyingastravellers',
          builder: (context, params) => VerfyingastravellersWidget(),
        ),
        FFRoute(
          name: 'editProfile',
          path: '/editProfile',
          builder: (context, params) => EditProfileWidget(),
        ),
        FFRoute(
          name: 'loading',
          path: '/loading',
          asyncParams: {
            'transaction': getDoc(
                ['Transaction_History'], TransactionHistoryRecord.fromSnapshot),
          },
          builder: (context, params) => LoadingWidget(
            transaction: params.getParam('transaction', ParamType.Document),
            amount: params.getParam('amount', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'addedtoWallet',
          path: '/addedtoWallet',
          builder: (context, params) => AddedtoWalletWidget(
            amount: params.getParam('amount', ParamType.String),
            currency: params.getParam('currency', ParamType.String),
            transactionid: params.getParam('transactionid', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'receiverProfile',
          path: '/receiverProfile',
          asyncParams: {
            'transactiondocument': getDoc(
                ['Transaction_History'], TransactionHistoryRecord.fromSnapshot),
          },
          builder: (context, params) => ReceiverProfileWidget(
            transactiondocument:
                params.getParam('transactiondocument', ParamType.Document),
          ),
        ),
        FFRoute(
          name: 'History',
          path: '/history',
          builder: (context, params) => HistoryWidget(),
        ),
        FFRoute(
          name: 'paymentSuccessful',
          path: '/paymentSuccessful',
          builder: (context, params) => PaymentSuccessfulWidget(
            transactionid: params.getParam('transactionid',
                ParamType.DocumentReference, false, ['Transaction_History']),
          ),
        ),
        FFRoute(
          name: 'test123',
          path: '/test123',
          asyncParams: {
            'transaction': getDoc(
                ['Transaction_History'], TransactionHistoryRecord.fromSnapshot),
          },
          builder: (context, params) => Test123Widget(
            transaction: params.getParam('transaction', ParamType.Document),
          ),
        ),
        FFRoute(
          name: 'receiverProfileIndia',
          path: '/receiverProfileIndia',
          asyncParams: {
            'transactiondocument': getDoc(
                ['Transaction_History'], TransactionHistoryRecord.fromSnapshot),
          },
          builder: (context, params) => ReceiverProfileIndiaWidget(
            transactiondocument:
                params.getParam('transactiondocument', ParamType.Document),
          ),
        ),
        FFRoute(
          name: 'paymentSuccessfulIyIndia',
          path: '/paymentSuccessfulIyIndia',
          builder: (context, params) => PaymentSuccessfulIyIndiaWidget(
            transactionid: params.getParam('transactionid',
                ParamType.DocumentReference, false, ['Transaction_History']),
          ),
        ),
        FFRoute(
          name: 'loadingIndia',
          path: '/loadingIndia',
          asyncParams: {
            'transaction': getDoc(
                ['Transaction_History'], TransactionHistoryRecord.fromSnapshot),
          },
          builder: (context, params) => LoadingIndiaWidget(
            transaction: params.getParam('transaction', ParamType.Document),
            amount: params.getParam('amount', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'paywithPhone',
          path: '/paywithPhone',
          builder: (context, params) => PaywithPhoneWidget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
      observers: [routeObserver],
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.extraMap.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, [
    bool isList = false,
    List<String>? collectionNamePath,
  ]) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(param, type, isList,
        collectionNamePath: collectionNamePath);
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.location);
            return '/login';
          }
          return null;
        },
        pageBuilder: (context, state) {
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Center(
                  child: SizedBox(
                    width: 50.0,
                    height: 50.0,
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(
                        Color(0xEA000000),
                      ),
                    ),
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder: PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).transitionsBuilder,
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouter.of(context).location;
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}
