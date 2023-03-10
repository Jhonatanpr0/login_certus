import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:token/services/auth_services.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context);
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
          actions: [
            IconButton(
              onPressed: () async {
                await authService.signOut();
              },
              icon: const Icon(Icons.logout),
            ),
          ],
        ),
        body: Center(
          child: Column(
            children: const [
              SizedBox(height: 80),
              CircleAvatar(
                maxRadius: 100,
                backgroundImage: NetworkImage(
                    'https://github.githubassets.com/images/modules/logos_page/GitHub-Mark.png'),
              ),
              Text('Estas en el Home Screen'),
            ],
          ),
        ));
  }
}
