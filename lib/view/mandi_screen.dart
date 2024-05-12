import 'package:agriculture_app/model/card_model.dart';
import 'package:agriculture_app/view/helpers/color_constants.dart';
import 'package:flutter/material.dart';

class MandiScreen extends StatelessWidget {
  const MandiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 20),
          productCards(
            'Favorites',
            'Azadpur Mandi',
            'Desi (Potato)',
            'Rs 1365/Q',
            'assets/potato.png',
          ),
          const SizedBox(height: 10),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 5,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(
                  right: 10,
                  top: 10,
                  bottom: 10,
                  left: 5,
                ),
                child: Container(
                  padding: const EdgeInsets.all(12),
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 15,
                                  horizontal: 5,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.blue.withOpacity(0.1),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: const Image(
                                  image: AssetImage(
                                    'assets/potato.png',
                                  ),
                                ),
                              ),
                              const SizedBox(width: 10),
                              Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Azadpur Mandi',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                      ),
                                    ),
                                    const SizedBox(height: 6),
                                    Text(
                                      'Desi (Potato)',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12,
                                        color: blackColor.withOpacity(0.4),
                                      ),
                                    ),
                                    const SizedBox(height: 6),
                                    Text(
                                      'Updated on 28/3/24',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                        color: blackColor.withOpacity(0.6),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Icon(
                            Icons.favorite_rounded,
                            size: 30,
                            color: blackColor,
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          priceText('Min', 'Rs 1365/Q'),
                          priceText('Max', 'Rs 1565/Q'),
                          priceText('Avg', 'Rs 1465/Q'),
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
    );
  }

  priceText(heading, price) {
    return Row(
      children: [
        Text(
          heading,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: blackColor.withOpacity(0.4),
            fontSize: 12,
          ),
        ),
        const SizedBox(width: 10),
        Text(
          price,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: blackColor,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
