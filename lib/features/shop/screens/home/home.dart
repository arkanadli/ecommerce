import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:ecommerce/utils/device/device_utility.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../common/widgets/custom_shapes/g_primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/g_search_container.dart';
import '../../../../common/widgets/products/cart/g_cart_counter_icon.dart';
import '../../../../common/widgets/texts/g_section_heading.dart';
import 'widgets/g_home_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header
            GPrimaryHeaderContainer(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // APP BAR
                  GHomeAppBar(),
                  SizedBox(
                    height: GSizes.spaceBtwSections,
                  ),
                  // SEARCH BAR
                  GSearchContainer(
                    icon: Iconsax.search_normal,
                    showBackground: true,
                    showBorder: true,
                    text: 'Search in Store',
                  ),
                  SizedBox(
                    height: GSizes.spaceBtwSections,
                  ),

                  // -- CATEGORIES --
                  Padding(
                    padding: EdgeInsets.only(left: GSizes.defaultSpace),
                    child: Column(
                      children: [
                        GSectionHeading(
                          text: 'Popular Categories',
                          showButton: false,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
