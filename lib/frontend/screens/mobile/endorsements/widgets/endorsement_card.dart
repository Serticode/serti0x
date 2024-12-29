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
      children: [
        EndorsementUserImage(
          endorsementUserImageURL: endorsementUserImageURL,
        ),

        32.0.sizedBoxHeight,

        //!
        endorsementTitle.txt14(
          context: context,
          color: appColours.peach,
          fontWeight: FontWeight.w500,
        ),

        40.0.sizedBoxHeight,

        //!
        endorsementBody.txt14(
          context: context,
          fontWeight: FontWeight.w600,
          textAlign: TextAlign.center,
        ),

        40.0.sizedBoxHeight,

        //!
        endorsementUserNameAndCareerDetails.txt14(
          context: context,
          textAlign: TextAlign.center,
          color: appColours.grey600,
        ),
      ],
    );
  }
}
