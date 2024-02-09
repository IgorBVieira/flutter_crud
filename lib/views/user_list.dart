import 'package:flutter/material.dart';
import 'package:flutter_crud/components/user_tile.dart';
import 'package:flutter_crud/data/dummy_users.dart';

class UserList extends StatelessWidget {
  const UserList({super.key});

  @override
  Widget build(BuildContext context) {
    const users = {...dummyUsers};

    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Usuários'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add),
          )
        ],
      ),
      //O widget ListView.builder vai renderizar uma lista de itens
      // Aos poucos, baseado no tamanho da lista.
      body: ListView.builder(
        itemBuilder: (context, index) =>
            UserTile(users.values.elementAt(index)),
        itemCount: users.length,
      ),
    );
  }
}
