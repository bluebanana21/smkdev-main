import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:smkdev/screens/detail_merchant.dart';
import 'package:smkdev/screens/home_screen.dart';
import 'package:smkdev/screens/transactions.dart';

/// The route configuration.
final GoRouter router = GoRouter(
  initialLocation: '/details',
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      name: 'hafizh',
      builder: (BuildContext context, GoRouterState state) {
        return const HomeScreen();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'details',
          builder: (BuildContext context, GoRouterState state) {
            return const DetailMerchantScreen();
          },
        ),
        GoRoute(
          path: 'transaction',
          builder: (BuildContext context, GoRouterState state) {
            return const TransactionScreen();
          },
        ),
      ],
    ),
  ],
);
