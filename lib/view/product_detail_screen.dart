import 'package:agriculture_app/view/helpers/color_constants.dart';
import 'package:agriculture_app/view/helpers/responsive_size_helper.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ProductDetailScreen extends StatefulWidget {
  const ProductDetailScreen({super.key});

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  final items = [
    Image.asset('assets/shimo.jpg'),
    Image.asset('assets/shimo.jpg'),
    Image.asset('assets/shimo.jpg'),
  ];

  int currentIndex = 0;

  final weightList = ['1kg', '2kg', '3kg'];
  String selectedWeight = '1kg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 2,
        title: const Text(
          'Description',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notification_important_outlined,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
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
                children: [
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 10,
                      right: 20,
                    ),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Icon(Icons.share),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 10,
                      right: 10,
                      bottom: 10,
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      child: CarouselSlider(
                        options: CarouselOptions(
                          aspectRatio: 2.0,
                          enlargeCenterPage: true,
                          onPageChanged: (index, reason) {
                            setState(() {
                              currentIndex = index;
                            });
                          },
                        ),
                        items: items,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: items.length,
                      itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.all(5),
                        child: Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color:
                                currentIndex == index ? greenColor : whiteColor,
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: currentIndex == index
                                  ? greenColor
                                  : blackColor.withOpacity(0.2),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
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
                    'Category - Fertilzers',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: blackColor.withOpacity(0.6),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'From ₹400',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: greenColor,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      for (int index = 0; index < weightList.length; index++)
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 5,
                            ),
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  selectedWeight = weightList[index];
                                });
                              },
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                  vertical: 3,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: selectedWeight == weightList[index]
                                      ? greenColor
                                      : whiteColor,
                                  border: Border.all(
                                    color: selectedWeight == weightList[index]
                                        ? greenColor
                                        : blackColor.withOpacity(0.5),
                                  ),
                                ),
                                child: Text(
                                  weightList[index],
                                  style: TextStyle(
                                    color: selectedWeight == weightList[index]
                                        ? whiteColor
                                        : blackColor,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Product Description',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    "SHIMO is a novel technology Broad spectrum insecticide in the form of a suspension concentrate belonging to anthracitic diamide group.SHIMO has a unique mode of action called Ryanodine Receptor Activators that disrupt normal muscle functions within the pest, resulting in impaired muscle paralysis, feeding cessation lethargy and eventually insect death.SHIMO High larvicidal potency works through ingestion.SHIMO has Rapid damage control because of quick feeding cessation. It can control pests at a low rate of application.",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: blackColor.withOpacity(0.4),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
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
                    'Shops',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 10),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      return Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: whiteColor,
                          border: Border(
                            bottom: BorderSide(
                              color: blackColor.withOpacity(0.2),
                            ),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 60,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: const DecorationImage(
                                      image: AssetImage(
                                        'assets/shop.jpg',
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Soil Testing',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16,
                                        ),
                                      ),
                                      const SizedBox(height: 6),
                                      Text(
                                        'Yaara',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12,
                                          color: blackColor.withOpacity(0.4),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Icon(
                              Icons.chevron_right_rounded,
                              color: blackColor.withOpacity(0.4),
                              size: 30,
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
