import 'package:flutter/material.dart';

import '../../constants/dimens.dart';
import '../../models/assessment.dart';
import 'components/assessment_appbar.dart';
import 'components/assessment_heading.dart';
import 'components/benefits_section.dart';
import 'components/prerequisite_section.dart';
import 'components/resource_section.dart';
import 'components/start_btn.dart';

class AssessmentView extends StatelessWidget {
  const AssessmentView({
    super.key,
    required this.bgColor,
    required this.assessment,
  });

  final Color bgColor;
  final Assessment assessment;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              collapsedHeight: 100,
              leadingWidth: 85,
              backgroundColor: bgColor,
              expandedHeight: 200,
              flexibleSpace: FlexibleSpaceBar(
                expandedTitleScale: 1,
                titlePadding: const EdgeInsets.only(
                  left: viewHorizontalPadding + 18,
                ),
                title: Center(
                  child: AssessmentAppBar(assessment: assessment),
                ),
                background: Align(
                  alignment: Alignment.centerRight,
                  child: Hero(
                    tag: assessment.id,
                    child: Image.network(
                      assessment.imageUrl,
                    ),
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 24,
                  horizontal: viewHorizontalPadding,
                ),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(26),
                    topRight: Radius.circular(26),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const AssessmentHeading('What do you get?'),
                    const SizedBox(height: 11),
                    ResourcesSection(resources: assessment.resources),
                    const SizedBox(height: 40),
                    const AssessmentHeading('How we do it?'),
                    PrerequisiteSection(
                      prerequisites: assessment.prerequisites,
                      imgUrl: assessment.workoutImageUrl,
                    ),
                    const SizedBox(height: 40),
                    const AssessmentHeading('Benefits'),
                    const SizedBox(height: 22),
                    BenefitsSection(benefits: assessment.benefits),
                    const SizedBox(height: 22),
                    const StartBtn()
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
