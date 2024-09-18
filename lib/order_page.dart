import 'package:flutter/material.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Orders',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            fontFamily: 'Roboto',
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.green[700],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 3,
          ),
          children: [
            _foodOrders(
              image: 'assets/restaurant1.jpg',
              name: 'Mentai Go',
              status: 'In Progress',
              price: 'Rp 20.000,-',
            ),
            _foodOrders(
              image: 'assets/restaurant2.jpeg',
              name: 'Sushi Tei',
              status: 'Completed',
              price: 'Rp 25.000,-',
            ),
            _foodOrders(
              image: 'assets/restaurant3.jpeg',
              name: 'Naspad Bang Umar',
              status: 'Completed',
              price: 'Rp 18.000,-',
            ),
            _foodOrders(
              image: 'assets/restaurant1.jpg',
              name: 'Mentai Go',
              status: 'Completed',
              price: 'Rp 40.000,-',
            ),
          ],
        ),
      ),
    );
  }

  Widget _foodOrders({
    required String image,
    required String name,
    required String status,
    required String price,
  }) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Stack(
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  image,
                  height: 100,
                  width: 100,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      status,
                      style: TextStyle(
                        fontSize: 14,
                        color: status == 'Completed'
                            ? Colors.green
                            : Colors.orange,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      price,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            top: 5,
            right: 5,
            child: Icon(
              Icons.check_circle,
              color: status == 'Completed' ? Colors.green : Colors.grey,
              size: 24,
            ),
          ),
        ],
      ),
    );
  }
}
