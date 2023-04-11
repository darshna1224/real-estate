import 'package:flutter/material.dart';
import 'package:real_estate/core/contants/sizes.dart';


class DetailApartmentScreen extends StatefulWidget {
  const DetailApartmentScreen({super.key});

  @override
  State<DetailApartmentScreen> createState() => _DetailApartmentScreenState();
}

class _DetailApartmentScreenState extends State<DetailApartmentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: Sizes.s377,
            decoration: BoxDecoration(
                                      
                                      image: const DecorationImage(
                                          image: AssetImage(
                                            'assets/images/image/studioapatment.png',
                                          ),
                                          fit: BoxFit.cover)),
          )
        ],
      ),
    );
  }
}