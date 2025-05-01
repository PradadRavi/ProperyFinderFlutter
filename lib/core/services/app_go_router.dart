import 'package:go_router/go_router.dart';
import 'package:propertyfinder/src/home/presentation/views/home_screen.dart';

final router = GoRouter(routes: [
  GoRoute(
    path: "/",
    builder: (context, state) => HomeScreen(),
  )
],);
