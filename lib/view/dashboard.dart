import 'package:agriculture_app/view/dukaan_screen.dart';
import 'package:agriculture_app/view/helpers/color_constants.dart';
import 'package:agriculture_app/view/helpers/responsive_size_helper.dart';
import 'package:agriculture_app/view/mandi_screen.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  bool showFilters = false;

  List serviceList = [
    'Fertilizers',
    'Insectisides',
    'Fungisides',
    'Commerce',
    'Soil Testing',
    'Seedings',
  ];

  List cropList = ['Apple', 'Banana', 'Add More'];

  String selectedService = 'Fertilizers', selectedCrop = 'Apple';

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        drawer: const Drawer(),
        appBar: showFilters
            ? null
            : AppBar(
                backgroundColor: Colors.white,
                elevation: 2,
                title: const Text(
                  'Dukan',
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
        body: Stack(
          children: [
            showFilters
                ? SafeArea(
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      height: displayHeight(context),
                      width: displayWidth(context),
                      decoration: BoxDecoration(
                        color: whiteColor,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Filter',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: whiteColor,
                                ),
                              ),
                              const Text(
                                'Filter',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    showFilters = false;
                                  });
                                },
                                child: const Icon(
                                  Icons.close_rounded,
                                  size: 30,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          const Text(
                            'Services',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Expanded(
                            child: GridView.builder(
                              itemCount: serviceList.length,
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                crossAxisSpacing: 10.0,
                                mainAxisSpacing: 10.0,
                                childAspectRatio: 7 / 2,
                              ),
                              physics: const NeverScrollableScrollPhysics(),
                              itemBuilder: (BuildContext context, int index) {
                                return InkWell(
                                  onTap: () {
                                    setState(() {
                                      selectedService = serviceList[index];
                                    });
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 10,
                                      vertical: 3,
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color:
                                          selectedService == serviceList[index]
                                              ? greenColor
                                              : whiteColor,
                                      border: Border.all(
                                        color: selectedService ==
                                                serviceList[index]
                                            ? greenColor
                                            : blackColor.withOpacity(0.5),
                                      ),
                                    ),
                                    child: Center(
                                      child: Text(
                                        serviceList[index],
                                        style: TextStyle(
                                          color: selectedService ==
                                                  serviceList[index]
                                              ? whiteColor
                                              : blackColor,
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                          const SizedBox(height: 20),
                          const Text(
                            'Crop',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                : Column(
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
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 5),
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
                            InkWell(
                              onTap: () {
                                setState(() {
                                  showFilters = true;
                                });
                              },
                              child: const Icon(
                                Icons.filter_list_rounded,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        decoration: const BoxDecoration(
                          color: Colors.white,
                        ),
                        child: const TabBar(
                          indicatorColor: Colors.green,
                          indicatorSize: TabBarIndicatorSize.tab,
                          labelColor: Colors.green,
                          labelStyle: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                          tabs: [
                            Tab(text: 'DUKAAN'),
                            Tab(text: 'MANDI'),
                          ],
                        ),
                      ),
                      const Expanded(
                        child: TabBarView(
                          children: [
                            DukaanScreen(),
                            MandiScreen(),
                          ],
                        ),
                      ),
                    ],
                  ),
          ],
        ),
      ),
    );
  }
}
