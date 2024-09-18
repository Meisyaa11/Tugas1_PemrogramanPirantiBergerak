import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset(
              'assets/logo.png',
              height: 40,
            ),
            const SizedBox(width: 10),
            const Text(
              'GoEats',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                fontFamily: 'Roboto', 
                color: Colors.white,
              ),
            ),
          ],
        ),
        backgroundColor: Colors.green[700],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Service buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _serviceBtn(
                  icon: Icons.location_on,
                  title: 'Near You',
                  color: Colors.green[300]!,
                  onTap: () {},
                ),
                _serviceBtn(
                  icon: Icons.star,
                  title: 'Most Popular',
                  color: Colors.green[300]!,
                  onTap: () {},
                ),
                _serviceBtn(
                  icon: Icons.card_giftcard,
                  title: 'Voucher',
                  color: Colors.green[300]!,
                  onTap: () {},
                ),
              ],
            ),
            const SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _serviceBtn(
                  icon: Icons.fastfood,
                  title: 'Snacks',
                  color: Colors.green[300]!,
                  onTap: () {},
                ),
                _serviceBtn(
                  icon: Icons.local_drink,
                  title: 'Beverages',
                  color: Colors.green[300]!,
                  onTap: () {},
                ),
                _serviceBtn(
                  icon: Icons.restaurant_menu,
                  title: 'All Restos',
                  color: Colors.green[300]!,
                  onTap: () {},
                ),
              ],
            ),
            const SizedBox(height: 20),

            const Text(
              'Recommended Restaurants for You',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),

            // Daftar Restoran
            Expanded(
              child: SizedBox(
                height: 180,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _recAndFs(
                      image: 'assets/restaurant1.jpg',
                      name: 'Mentai Go',
                    ),
                    _recAndFs(
                      image: 'assets/restaurant2.jpeg',
                      name: 'Sushi Tei',
                    ),
                    _recAndFs(
                      image: 'assets/restaurant3.jpeg',
                      name: 'Naspad Bang Umar',
                    ),
                    _recAndFs(
                      image: 'assets/restaurant4.jpg',
                      name: 'Kebab Awang Long',
                    ),
                  ],
                ),
              ),
            ),

            const Text(
              'Flash Sale',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),

            // Daftar Flash Sale
            Expanded(
              child: SizedBox(
                height: 180,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _recAndFs(
                      image: 'assets/item1.jpeg',
                      name: 'Paket Ayam Manja',
                      price: 'Rp 20.000,-',
                    ),
                    _recAndFs(
                      image: 'assets/item2.jpg',
                      name: 'Pisang Coklat',
                      price: 'Rp 16.000,-',
                    ),
                    _recAndFs(
                      image: 'assets/item3.jpg',
                      name: 'Takoyaki Ayam',
                      price: 'Rp 25.000,-',
                    ),
                    _recAndFs(
                      image: 'assets/item4.jpg',
                      name: 'Duo Frappe',
                      price: 'Rp 48.000,-',
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

  // buat bikin service button
  Widget _serviceBtn({
    required IconData icon,
    required String title,
    required Color color,
    required Function() onTap,
  }) {
    return Column(
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: color,
            padding: const EdgeInsets.all(20.0),
            shape: const CircleBorder(),
          ),
          onPressed: onTap,
          child: Icon(
            icon,
            color: Colors.white,
            size: 40,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  // buat bikin recommendation sm flash sale
  Widget _recAndFs({
    required String image,
    required String name,
    String? price,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      width: 150,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              image,
              height: 90,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            name,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          if (price != null)
            Text(
              price,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.redAccent,
                fontWeight: FontWeight.bold,
              ),
            ),
        ],
      ),
    );
  }
}
