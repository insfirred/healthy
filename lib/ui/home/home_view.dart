import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../constants/dimens.dart';
import 'components/challenge_section.dart';
import 'components/home_nav_bar.dart';
import 'components/quick_access_section.dart';
import 'components/workout_routine_section.dart';
import 'home_view_model.dart';

class HomeView extends ConsumerWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final status = ref.watch(
      homeViewModelProvider.select((_) => _.status),
    );

    final error = ref.watch(
          homeViewModelProvider.select((_) => _.errorMessage),
        ) ??
        'Something went wrong';

    return Scaffold(
      body: SafeArea(
        child: status == HomeViewStatus.loading
            ? const Center(child: CircularProgressIndicator())
            : status == HomeViewStatus.error
                ? Center(
                    child: Text(error),
                  )
                : Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: viewHorizontalPadding,
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 17),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'Hello Jane',
                                  style: TextStyle(
                                    color: Color(0xFF255FD5),
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Image.asset(
                                  'assets/user.png',
                                  width: 23,
                                  height: 23,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 12),
                          const HomeNavBar(),
                          const SizedBox(height: 12),
                          const QuickAccessSection(),
                          const SizedBox(height: 14),
                          const ChallengeSection(),
                          const SizedBox(height: 20),
                          const WorkoutRoutineSection(),
                          const SizedBox(height: 20),
                        ],
                      ),
                    ),
                  ),
      ),
    );
  }
}
