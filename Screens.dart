import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text(
          'Home Page',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 30, color: Colors.white),
        ),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Home Page',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
                color: Color.fromARGB(255, 61, 58, 58)),
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
              style: const ButtonStyle(
                  minimumSize: MaterialStatePropertyAll(Size(232, 50)),
                  backgroundColor: MaterialStatePropertyAll(Colors.red)),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SecondPage(),
                    ));
              },
              child: const Text('Second Page'))
        ],
      )),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: const Text(
            'Second Page',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 30, color: Colors.white),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
          child: ListView.builder(
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(
                  'My Data No - ${index.toString()}',
                  style: TextStyle(color: Colors.teal.shade700, fontSize: 30),
                ),
              );
            },
          ),
        ));
  }
}
