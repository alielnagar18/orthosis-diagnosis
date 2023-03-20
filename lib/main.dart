import 'package:flutter/material.dart';
import 'package:physical_therapy/screens/splash_screen.dart';
import 'package:physical_therapy/widgets/category_item.dart';
import './screens/meal_detail_screen.dart';
import './screens/categories_screen.dart';
import './screens/category_meals_screen.dart';


void main() => runApp( MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        accentColor: Colors.white,
        canvasColor: Colors.blue,
        textTheme: ThemeData.light().textTheme.copyWith(
          bodyLarge: TextStyle(color:Color.fromRGBO(20, 50, 50, 1)),
          bodyMedium: TextStyle(color:Color.fromRGBO(20, 50, 50, 1)),
          titleLarge: TextStyle(
            fontSize: 20,
            fontFamily: 'RobotoCondensed',
            fontWeight: FontWeight.bold,
          ),
        )
      ),
      //home:  MyHomePage(),
      routes: {
         '/':(context)=>splashScreen(),
        //'/':(context)=>CategoriesScreen(),
        CategoriesScreen.routeName: (context)=>CategoriesScreen(),
        CategoryMealsScreen.routeName: (context)=>CategoryMealsScreen(),
        MealDetailScreen.routeName: (context)=>MealDetailScreen(),

      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Physical Therapy'),
      ),
      body: null,

    );
  }
}
