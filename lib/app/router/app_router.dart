import 'package:go_router/go_router.dart';

import '../../features/auth/login/login_screen.dart';
import '../../features/auth/register/register_screen.dart';
import '../../features/home/home_screen.dart';
import '../../features/splash/splash_screen.dart';

import '../../features/food_detail/food_detail_screen.dart';
import '../../features/home/models/food.dart';
import '../../features/cart/cart_screen.dart';
import '../../features/favorites/favorites_screen.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(path: '/', builder: (context, state) => const SplashScreen()),
    GoRoute(path: '/login', builder: (context, state) => const LoginScreen()),
    GoRoute(
      path: '/register',
      builder: (context, state) => const RegisterScreen(),
    ),
    GoRoute(path: '/home', builder: (context, state) => const HomeScreen()),

    GoRoute(
      path: '/food-detail',
      builder: (context, state) {
        final food = state.extra as Food;

        return FoodDetailScreen(food: food);
      },
    ),

    GoRoute(path: '/cart', builder: (context, state) => const CartScreen()),

    GoRoute(
      path: '/favorites',
      builder: (context, state) => const FavoritesScreen(),
    ),
  ],
);
