import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../constents/thems.dart';

class AdsBannerWidget extends StatelessWidget {
  const AdsBannerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 170,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(
                left: 20,
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Apple Store', style: AppTheme.kBigTitle),
                    const Gap(8),
                    Text(
                      'Find The Apple Product and accsorices you are looking for you',
                      style: AppTheme.kBodyText.copyWith(color: kWhiteColor),
                    ),
                    const Gap(4),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: kWhiteColor,
                          foregroundColor: kPrimaryColor,
                        ),
                        onPressed: () {},
                        child: const Text('Shop New Year')),
                  ]),
            ),
          ),
          Image.asset('assets/general/landing.png'),
        ],
      ),
    );
  }
}
