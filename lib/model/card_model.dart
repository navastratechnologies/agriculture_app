import 'package:agriculture_app/view/helpers/color_constants.dart';
import 'package:flutter/material.dart';

cards(title, heading, subHeading, image) {
  return Container(
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
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
            const Icon(Icons.chevron_right_rounded),
          ],
        ),
        SizedBox(
          height: 100,
          child: ListView.builder(
            itemCount: 5,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(
                  right: 10,
                  top: 10,
                  bottom: 10,
                  left: 5,
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
                  child: Row(
                    children: [
                      Container(
                        height: 60,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage(
                              image,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              heading,
                              style: const TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                              ),
                            ),
                            const SizedBox(height: 6),
                            Text(
                              subHeading,
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                                color: blackColor.withOpacity(0.4),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 10),
                      Icon(
                        Icons.chevron_right_rounded,
                        size: 40,
                        color: blackColor.withOpacity(0.4),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    ),
  );
}

productCards(title, heading, subHeading, price, image) {
  return Container(
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
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
            const Icon(Icons.chevron_right_rounded),
          ],
        ),
        SizedBox(
          height: 120,
          child: ListView.builder(
            itemCount: 5,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(
                  right: 10,
                  top: 10,
                  bottom: 10,
                  left: 5,
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
                  child: Row(
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
                        child: Image(
                          image: AssetImage(
                            image,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              heading,
                              style: const TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                              ),
                            ),
                            const SizedBox(height: 6),
                            Text(
                              subHeading,
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                                color: blackColor.withOpacity(0.4),
                              ),
                            ),
                            const SizedBox(height: 6),
                            Text(
                              price,
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: blackColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 30),
                      Icon(
                        Icons.favorite_rounded,
                        size: 30,
                        color: greenColor,
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    ),
  );
}
