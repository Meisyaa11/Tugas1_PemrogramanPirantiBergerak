import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[700],
        title: const Text(
          'Account',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            fontFamily: 'Roboto',
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 60,
              backgroundColor: Colors.green,
              child: Icon(
                Icons.person,
                size: 60,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Meisya Violetta',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'bcd@gmail.com',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 30),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    ListTile(
                      leading: const Icon(Icons.phone, color: Colors.green),
                      title: const Text('Phone'),
                      subtitle: const Text('+62 82150 6780'),
                      trailing: IconButton(
                        icon: const Icon(Icons.edit, color: Colors.grey),
                        onPressed: () {},
                      ),
                    ),
                    const Divider(),
                    ListTile(
                      leading:
                          const Icon(Icons.location_on, color: Colors.green),
                      title: const Text('Address'),
                      subtitle: const Text('Sungai Mahakam'),
                      trailing: IconButton(
                        icon: const Icon(Icons.edit, color: Colors.grey),
                        onPressed: () {},
                      ),
                    ),
                    const Divider(),
                    ListTile(
                      leading:
                          const Icon(Icons.credit_card, color: Colors.green),
                      title: const Text('Payment Method'),
                      subtitle: const Text('DANA **** 1234'),
                      trailing: IconButton(
                        icon: const Icon(Icons.edit, color: Colors.grey),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
