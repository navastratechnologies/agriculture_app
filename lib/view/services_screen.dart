import 'package:agriculture_app/view/helpers/color_constants.dart';
import 'package:flutter/material.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 2,
        title: const Text(
          'Services',
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
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 10,
                  spreadRadius: 1,
                ),
              ],
            ),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.1),
                    ),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Search here',
                        prefixIcon: Icon(
                          Icons.search_rounded,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                const Icon(
                  Icons.filter_list_rounded,
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 2,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(10),
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
                          crossAxisAlignment: CrossAxisAlignment.start,
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
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
