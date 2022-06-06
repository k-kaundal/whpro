import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whpro/src/blocs/common/route_bloc/routes_bloc.dart';
import 'package:whpro/src/config/routes/routes.dart';
import 'package:whpro/src/ui/views/common/auth/login.dart';
import 'package:whpro/src/ui/views/demo.dart';
import 'package:whpro/src/ui/views/home.dart';
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WH-Pro',
      initialRoute: 'home',
      onGenerateRoute: AppRoutes.generateRoute,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }


  Widget buildNamedRoute(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/second': (context) => Login(),
      },
    );
  }
}


//
// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   State<MyApp> createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   final RoutesBloc routesBloc = RoutesBloc();
//
//
//  @override
//   void initState(){
//     super.initState();
//     routesBloc.add(GetUserDetails());
//   }
//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(create: (_)=>routesBloc,
//     child: BlocListener<RoutesBloc,RoutesState>(
//       listener: (context, state){
//         if(state is RoutesError){
//           print("Error");
//           // ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Error")));
//         }
//       },
//       child: BlocBuilder<RoutesBloc,RoutesState>(
//         builder: (context, state) {
//           if(state is RoutesInitial){
//             return MaterialApp(
//               initialRoute: 'home',
//               onGenerateRoute: (RouteSettings setting){
//                 if(setting.name =='home'){
//                   print("Initial");
//                  return MaterialPageRoute(builder: (context)=>Home());
//                 }else if(setting.name == 'demo'){
//                   return MaterialPageRoute(builder: (context)=>const Demo());
//                 }
//             },
//             );
//           }else if(state is RoutesWithUser){
//             return MaterialApp(
//               initialRoute: 'home',
//               onGenerateRoute: (RouteSettings setting){
//                 if(setting.name =='home'){
//                   print("With User");
//                   Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Home()));
//                 }else if(setting.name == 'demo'){
//                   return MaterialPageRoute(builder: (context)=>const Demo());
//                 }
//               },
//             );
//           }else if(state is RoutesWithOutUser){
//             return MaterialApp(
//               initialRoute: 'home',
//               onGenerateRoute: (RouteSettings setting){
//                 if(setting.name =='home'){
//                   print("With out User");
//                   Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Home()));
//                 }else if(setting.name == 'demo'){
//                   return MaterialPageRoute(builder: (context)=>const Demo());
//                 }
//               },
//             );
//           }else{
//             return MaterialApp(
//               initialRoute: 'home',
//               onGenerateRoute: (RouteSettings setting){
//                 if(setting.name =='home'){
//                   Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Home()));
//                 }else if(setting.name == 'demo'){
//                   return MaterialPageRoute(builder: (context)=>const Demo());
//                 }
//               },
//             );
//           }
//         },
//       ),
//     ),
//     );
//   }
// }
//
