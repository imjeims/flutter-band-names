import 'package:flutter/material.dart';

import 'package:band_names/src/models/band.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Band> bands = [
    Band(id: '1', name: 'Metalica', votes: 5),
    Band(id: '2', name: 'Queen', votes: 4),
    Band(id: '3', name: 'Bon Jovi', votes: 6),
    Band(id: '4', name: 'Silent Heroes', votes: 8)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'BandNames',
          style: TextStyle(color: Colors.black87),
        ),
        backgroundColor: Colors.white,
        elevation: 1,
      ),
      body: ListView.builder(
        itemCount: bands.length,
        itemBuilder: (context, i) => bandTile(bands[i]),
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add), elevation: 1, onPressed: () {}),
    );
  }

  ListTile bandTile(Band band) {
    return ListTile(
      leading: CircleAvatar(
        child: Text(band.name.substring(0, 2)),
        backgroundColor: Colors.blue[100],
      ),
      title: Text(band.name),
      trailing: Text(
        '${band.votes}',
        style: const TextStyle(fontSize: 20),
      ),
      onTap: () {
        print(band.name);
      },
    );
  }
}
