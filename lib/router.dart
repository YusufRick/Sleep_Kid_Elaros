import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sleep_kids_app/views/auth/login_screen.dart';
import 'package:sleep_kids_app/views/auth/signup_screen.dart';
import 'package:sleep_kids_app/views/home/home_screen.dart';
import 'package:sleep_kids_app/views/home/education_screen.dart';
import 'package:sleep_kids_app/views/home/goal_screen.dart';
import 'package:sleep_kids_app/views/home/sleep_tracking_screen.dart';
import 'package:sleep_kids_app/views/home/analytics_screen.dart';
import 'package:sleep_kids_app/views/home/bedtime_stories_screen.dart';
import 'package:sleep_kids_app/views/home/profile_screen.dart';
import 'package:sleep_kids_app/widgets/main_layout.dart';

final GoRouter router = GoRouter(
  initialLocation: '/login', // Default to login page
  routes: [
    // 🚀 No navbar for login & signup pages
    GoRoute(
      path: '/login',
      builder: (context, state) => LoginScreen(),
    ),
    GoRoute(
      path: '/signup',
      builder: (context, state) => SignUpScreen(),
    ),

    // ✅ Wrap all authenticated pages inside `MainLayout`
    GoRoute(
      path: '/home',
      builder: (context, state) => MainLayout(child: const HomeScreen()),
    ),
    GoRoute(
      path: '/sleep-tracking',
      builder: (context, state) => MainLayout(child: const SleepTrackingScreen()),
    ),
    GoRoute(
      path: '/analytics',
      builder: (context, state) => MainLayout(child: const AnalyticsScreen()),
    ),
    GoRoute(
      path: '/bedtime-stories',
      builder: (context, state) => MainLayout(child: const BedtimeStoriesScreen()),
    ),
    GoRoute(
      path: '/profile',
      builder: (context, state) => MainLayout(child: const ProfileScreen()),
    ),
    GoRoute(
      path: '/goal',
      builder: (context, state) => MainLayout(child: const GoalScreen()),
    ),
    GoRoute(
      path: '/education',
      builder: (context, state) => MainLayout(child: const EducationScreen()),
    ),
  ],
);
