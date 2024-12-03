import 'package:flutter/material.dart';
import 'package:kino/theme/mytheme.dart';
import 'package:kino/vtoroi_screen/second_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kino',
      theme: myTheme,
      home: const MyHomePage(title: 'Kino'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> perviy = [
    'lib/assets/images/perviy1.jpg',
    'lib/assets/images/perviy2.jpg',
    'lib/assets/images/perviy3.jpg',
    'lib/assets/images/perviy4.jpg',
    'lib/assets/images/perviy5.jpg',
  ];
  final List<String> vtoroy = [
    'lib/assets/images/vtoroy1.jpg',
    'lib/assets/images/vtoroy2.jpg',
    'lib/assets/images/vtoroy3.jpg',
    'lib/assets/images/vtoroy4.jpg',
    'lib/assets/images/vtoroy5.jpg',
  ];
  final List<String> tretiy = [
    'lib/assets/images/tretiy1.jpg',
    'lib/assets/images/tretiy2.jpg',
    'lib/assets/images/tretiy3.jpg',
    'lib/assets/images/tretiy4.jpg',
    'lib/assets/images/tretiy5.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: ListView(
        children: <Widget>[
          // Отступ между AppBar и слайдером
          const SizedBox(height: 20),
          
          const Align(
            alignment: Alignment.centerLeft,
            child: Text('   Топ 10 фильмов этой недели', style: TextStyle(color: Color.fromRGBO(255, 238, 0,  1.0),fontSize: 20.0,fontFamily: 'Times New Roman', ),),
          ),
          
          const SizedBox(height: 10),
          // Строка с фотографиями посередине сверху
          Center(
            child: SizedBox(
              height: 300, // Высота контейнера для GridView
              child: ListView.builder(
                scrollDirection: Axis.horizontal, // Горизонтальная прокрутка
                itemCount: 1000, // Бесконечная прокрутка
                itemBuilder: (context, index) {
                  int imageIndex = index % perviy.length;
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      perviy[imageIndex],
                      width: 150,
                      height: 300,
                      fit: BoxFit.cover,
                    ),
                  );
                },
              ),
            ),
          ),
          const SizedBox(height: 10),
           const Align(
            alignment: Alignment.centerLeft,
            child: Text('   Новинки', style: TextStyle(color: Color.fromRGBO(255, 238, 0,  1.0),fontSize: 20.0,fontFamily: 'Times New Roman', ),),
            
          ),
          const SizedBox(height: 10),
           Center(
            child: SizedBox(
              height: 300, // Высота контейнера для GridView
              child: ListView.builder(
                scrollDirection: Axis.horizontal, // Горизонтальная прокрутка
                itemCount: 1000, // Бесконечная прокрутка
                itemBuilder: (context, index) {
                  int imageIndex = index % vtoroy.length;
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      vtoroy[imageIndex],
                      width: 150,
                      height: 300,
                      fit: BoxFit.cover,
                    ),
                  );
                },
              ),
            ),
          ),
          const SizedBox(height: 10),
           const Align(
            alignment: Alignment.centerLeft,
            child: Text('   Сериалы', style: TextStyle(color: Color.fromRGBO(255, 238, 0,  1.0),fontSize: 20.0,fontFamily: 'Times New Roman', ),),
          ),
          const SizedBox(height: 10),
           Center(
            child: SizedBox(
              height: 300, // Высота контейнера для GridView
              child: ListView.builder(
                scrollDirection: Axis.horizontal, // Горизонтальная прокрутка
                itemCount: 1000, // Бесконечная прокрутка
                itemBuilder: (context, index) {
                  int imageIndex = index % tretiy.length;
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      tretiy[imageIndex],
                      width: 150,
                      height: 300,
                      fit: BoxFit.cover,
                    ),
                  );
                },
              ),
            ),
          ),
          const SizedBox(height: 10),
        
        ],
      ),
          
             bottomNavigationBar: Container
             (
               height: 60,
               decoration: BoxDecoration
               (
                 color: Theme.of(context).primaryColor,
                 borderRadius: const BorderRadius.only
                 (
                   topLeft: Radius.circular(20),
                   topRight: Radius.circular(20),
                 ),
               ),
               child: Row
               (
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                 children: 
                 [
                   
                   IconButton(
                     enableFeedback: false,
                     onPressed: ()
                      {
                      Navigator.push
                      (
                        context,
                        MaterialPageRoute(builder: (context) => MovieListScreen()),
                      );
                       },
                     icon: const Icon
                    (
                     Icons.search,
                     color: Color.fromRGBO(255, 238, 0,  1.0),
                     size: 35,
                    ),
                  ),
                 ]
                ),
          )// Отступ между GridView и кнопками
    );
  }
}