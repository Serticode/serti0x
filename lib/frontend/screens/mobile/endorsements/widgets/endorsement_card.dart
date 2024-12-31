import 'package:flutter/material.dart';
import 'package:serti0x/frontend/screens/mobile/endorsements/widgets/endorsement_user_image.dart';
import 'package:serti0x/frontend/shared/app_colours.dart';
import 'package:serti0x/frontend/utilities/app_extensions.dart';

class EndorsementCard extends StatelessWidget {
  const EndorsementCard({
    required this.endorsementUserImageURL,
    required this.endorsementTitle,
    required this.endorsementBody,
    required this.endorsementUserNameAndCareerDetails,
    super.key,
  });

  final String endorsementUserImageURL;
  final String endorsementTitle;
  final String endorsementBody;
  final String endorsementUserNameAndCareerDetails;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        EndorsementUserImage(
          endorsementUserImageURL: endorsementUserImageURL,
        ),

        //!
        endorsementTitle.txt12(
          context: context,
          color: appColours.peach,
          fontWeight: FontWeight.w500,
        ),

        //!
        endorsementBody
            .txt14(
              context: context,
              fontWeight: FontWeight.w500,
              textAlign: TextAlign.center,
            )
            .fadeInFromBottom(),

        //!
        endorsementUserNameAndCareerDetails
            .txt12(
              context: context,
              textAlign: TextAlign.center,
              color: appColours.grey600,
            )
            .fadeInFromBottom(
              delay: const Duration(milliseconds: 400),
            ),
      ],
    );
  }
}
