import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';
import 'package:wdb106_sample/model/model.dart';
import 'package:wdb106_sample/pages/common/cart_controller/cart_controller.dart';
import 'package:wdb106_sample/pages/common/cart_controller/cart_state.dart';

import 'app.dart';

void main() => runApp(
      MultiProvider(
        providers: [
          Provider<ApiClient>(create: (context) => MockyApiClient()),
          Provider(create: (context) => ItemStore()),
          Provider(create: (context) => CartStore()),
          StateNotifierProvider<CartController, CartState>(
            create: (context) => CartController()..initialize(),
          ),
        ],
        child: const App(),
      ),
    );
