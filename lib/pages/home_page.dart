import 'package:flutter/material.dart';
import 'package:yumquick_app/widgets/custom_text_field.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Map<String, String> _categories = {
    'assets/icons/snacks.png': 'Snacks',
    'assets/icons/meal.png': 'Meals',
    'assets/icons/veagan.png': 'Dinner',
    'assets/icons/drinks.png': 'Drinks',
    'assets/icons/dessert.png': 'Dessert',
  };

  final List<String> _bestSellers = [
    'assets/images/sushi.png',
    'assets/images/rice.png',
    'assets/images/egg.png',
    'assets/images/berry.png',
  ];

  final List<String> _recommendedItems = [
    'assets/images/burgur.png',
    'assets/images/roll.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5CB58),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: CustomTextField(
                          obscureText: false,
                          hintText: 'Search',
                          suffixIcon: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Icon(Icons.menu, color: Colors.deepOrange),
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      _customButton('assets/icons/cart.png'),
                      const SizedBox(width: 5),
                      _customButton('assets/icons/notification.png'),
                      const SizedBox(width: 5),
                      _customButton('assets/icons/person.png'),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Good Morning,',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    'Rise and Shine! It\'s breakfast time',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.deepOrange,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.only(left: 24, right: 20, top: 10),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10),
                      SizedBox(
                        height: 100,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children:
                              _categories.entries.map((entry) {
                                return Padding(
                                  padding: const EdgeInsets.only(right: 30),
                                  child: Column(
                                    children: [
                                      Center(child: Image.asset(entry.key)),
                                      const SizedBox(height: 8),
                                      Text(
                                        entry.value,
                                        style: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              }).toList(),
                        ),
                      ),
                      Divider(color: Colors.yellow.shade100, thickness: 2),
                      Row(
                        children: const [
                          Text(
                            'Best Seller',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w800,
                              color: Colors.black,
                            ),
                          ),
                          Spacer(),
                          Text(
                            'View all',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.deepOrange,
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.deepOrange,
                            size: 16,
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        height: 120,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemCount: _bestSellers.length,
                          separatorBuilder:
                              (_, __) => const SizedBox(width: 18),
                          itemBuilder: (context, index) {
                            return Image.asset(
                              _bestSellers[index],
                              fit: BoxFit.contain,
                            );
                          },
                        ),
                      ),
                      const SizedBox(height: 20),
                      _discountCard(),

                      const SizedBox(height: 14),
                      const Text(
                        'Recommended ',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w800,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 14),
                      GridView.count(
                        crossAxisCount: 2,
                        crossAxisSpacing: 18,
                        mainAxisSpacing: 18,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        childAspectRatio: 1.2,
                        children:
                            _recommendedItems.map((item) {
                              return ClipRRect(
                                borderRadius: BorderRadius.circular(16),
                                child: Image.asset(item, fit: BoxFit.cover),
                              );
                            }).toList(),
                      ),

                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _customButton(String imagePath) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(child: Image.asset(imagePath, height: 24)),
    );
  }

  Widget _discountCard() {
    return SizedBox(
      width: double.infinity,
      height: 150,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              'assets/images/card.png',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          const Positioned(
            top: 20,
            left: 14,
            child: Text(
              textAlign: TextAlign.center,
              'Experience our\nDelicious new dish',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          ),
          const Positioned(
            bottom: 30,
            left: 24,
            child: Text(
              textAlign: TextAlign.center,
              '30% off',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
