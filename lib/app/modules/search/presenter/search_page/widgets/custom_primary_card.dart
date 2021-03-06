import 'package:flutter/material.dart';

import '../../../../../theme/app_colors.dart';

class CustomPrimaryCard extends StatelessWidget {
  final String description;
  final String temperature;
  final String wind;
  final String imageUrl;
  final String city;

  const CustomPrimaryCard({
    Key? key,
    required this.description,
    required this.temperature,
    required this.wind,
    required this.imageUrl,
    required this.city,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 18),
      constraints: const BoxConstraints(
        maxWidth: 358,
      ),
      decoration: BoxDecoration(
        color: AppColors.textColor.withOpacity(0.15),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                description,
                style: Theme.of(context).textTheme.headline5,
              ),
              const SizedBox(height: 34),
              Text(
                temperature,
                style: Theme.of(context).textTheme.headline4,
              ),
              Text(wind),
              const SizedBox(height: 12),
              Row(
                children: [
                  const Icon(
                    Icons.location_on_sharp,
                    color: Colors.yellow,
                  ),
                  Text(city),
                ],
              ),
            ],
          ),
          Image.asset(
            imageUrl,
            width: 64,
            height: 64,
          ),
        ],
      ),
    );
  }
}
