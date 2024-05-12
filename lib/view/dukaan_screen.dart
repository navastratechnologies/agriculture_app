import 'package:agriculture_app/model/card_model.dart';
import 'package:agriculture_app/view/helpers/color_constants.dart';
import 'package:agriculture_app/view/helpers/responsive_size_helper.dart';
import 'package:agriculture_app/view/product_detail_screen.dart';
import 'package:agriculture_app/view/services_screen.dart';
import 'package:agriculture_app/view/shops_list_screen.dart';
import 'package:flutter/material.dart';

class DukaanScreen extends StatefulWidget {
  const DukaanScreen({super.key});

  @override
  State<DukaanScreen> createState() => _DukaanScreenState();
}

class _DukaanScreenState extends State<DukaanScreen> {
  final catList = ['Fertilizers', 'Pesticides', 'Seeds'];
  String selectedCat = 'Fertilizers';
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            children: [
              for (int index = 0; index < catList.length; index++)
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 5,
                    ),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          selectedCat = catList[index];
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 3,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: selectedCat == catList[index]
                              ? greenColor
                              : whiteColor,
                          border: Border.all(
                            color: selectedCat == catList[index]
                                ? greenColor
                                : blackColor.withOpacity(0.5),
                          ),
                        ),
                        child: Row(
                          children: [
                            selectedCat == catList[index]
                                ? const SizedBox(
                                    height: 28,
                                  )
                                : const CircleAvatar(
                                    radius: 14,
                                    child: Image(
                                      image: AssetImage(
                                        'assets/bananas.png',
                                      ),
                                      height: 20,
                                      width: 20,
                                    ),
                                  ),
                            const SizedBox(width: 5),
                            Text(
                              catList[index],
                              style: TextStyle(
                                color: selectedCat == catList[index]
                                    ? whiteColor
                                    : blackColor,
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
            ],
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (contxt) => const ShopsListScreen(),
                ),
              );
            },
            child: cards(
              'Shops',
              'Agricane Corporation',
              '21km away',
              'assets/shop.jpg',
            ),
          ),
          const SizedBox(height: 20),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (contxt) => const ServicesScreen(),
                ),
              );
            },
            child: cards(
              'Services',
              'Soil Testing',
              'Yaara',
              'assets/shop.jpg',
            ),
          ),
          const SizedBox(height: 20),
          Container(
            width: displayWidth(context),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: whiteColor,
              boxShadow: [
                BoxShadow(
                  color: blackColor.withOpacity(0.1),
                  blurRadius: 10,
                  spreadRadius: 1,
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Products',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
                const SizedBox(height: 20),
                GridView.builder(
                  shrinkWrap: true,
                  itemCount: 6,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 10.0,
                    childAspectRatio: 1.5 / 2,
                  ),
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (builder) => const ProductDetailScreen(),
                        ),
                      ),
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: whiteColor,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: blackColor.withOpacity(0.1),
                              blurRadius: 10,
                              spreadRadius: 1,
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/shimo.jpg',
                              height: 80,
                              width: 80,
                            ),
                            const Divider(),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Shimo',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                  ),
                                ),
                                const SizedBox(height: 6),
                                Text(
                                  'by Chambal Fertilizers',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                    color: blackColor.withOpacity(0.4),
                                  ),
                                ),
                                const SizedBox(height: 6),
                                Text(
                                  'From ₹400',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                    color: greenColor,
                                  ),
                                ),
                                Text(
                                  '1kg',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                    color: blackColor.withOpacity(0.4),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
