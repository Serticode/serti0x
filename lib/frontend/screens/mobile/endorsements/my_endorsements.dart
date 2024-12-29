import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:serti0x/frontend/screens/mobile/endorsements/widgets/my_endorsement_card_view.dart';
import 'package:serti0x/frontend/shared/app_colours.dart';
import 'package:serti0x/frontend/utilities/app_extensions.dart';

class MyEndorsements extends ConsumerWidget {
  const MyEndorsements({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        "His Vouchers".txt24(context: context),

        8.0.sizedBoxHeight,

        //!
        "What some of his peers say about him".txt16(
          context: context,
          color: appColours.grey700,
        ),

        //!
        8.0.sizedBoxHeight,

        //!
        Padding(
          padding: EdgeInsets.only(left: 120.0.w),
          child: "“"
              .txt(
                context: context,
                fontSize: 56.0,
                fontWeight: FontWeight.w700,
              )
              .alignCenterLeft(),
        ),

        const MyEndorsementCardView(),

        //!
        Padding(
          padding: EdgeInsets.only(right: 120.0.w),
          child: "”"
              .txt(
                context: context,
                fontSize: 56.0,
                fontWeight: FontWeight.w700,
              )
              .alignCenterRight(),
        )
      ],
    );
  }
}
