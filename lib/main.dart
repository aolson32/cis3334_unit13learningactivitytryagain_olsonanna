import 'package:flutter/material.dart';
// import 'package:just_audio/just_audio.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  //const MyApp({super.key});
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  //const MyHomePage({super.key, required this.title});
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();

}

class imageNames{
  String name;

  imageNames(this.name);
}


class _MyHomePageState extends State<MyHomePage> {
    List<imageNames> imagesNames = [];

    _MyHomePageState(){
      imagesNames.add(imageNames('assets/images/in_the_circle_2.jpg'));
      imagesNames.add(imageNames('assets/images/in_the_circle_3.jpg'));
      imagesNames.add(imageNames('assets/images/in_the_circle_4.jpg'));
    }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // ElevatedButton(child: Text('Click me'), onPressed: () {
            //   AudioPlayer player = AudioPlayer();
            //   player.setAsset('assets/audio/by_the_fire_1.mp3');
            //   player.play();
            // }, ),
            SizedBox(
              height: 500,
              child: PageView.builder(
                itemCount: imagesNames.length,
                itemBuilder: (BuildContext context, int position){
                  return ListTile(
                      leading: Image.asset(
                        //'assets/images/in_the_circle_2.jpg', - this is for one singular image
                          imagesNames[position].name,
                          fit: BoxFit.cover,
                          height: double.infinity
                      )
                  );
                },
              ),
            ),
          ],
        ),
      )
    );
  }
}
