import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/appointment.dart';
import '../../models/assessment.dart';
import '../../models/challenge.dart';
import '../../models/routine.dart';

part 'home_view_model.freezed.dart';

final homeViewModelProvider =
    StateNotifierProvider.autoDispose<HomeViewModel, HomeViewState>(
  (ref) => HomeViewModel(
    firestore: FirebaseFirestore.instance,
    ref: ref,
  ),
);

class HomeViewModel extends StateNotifier<HomeViewState> {
  final FirebaseFirestore firestore;
  final AutoDisposeStateNotifierProviderRef ref;

  HomeViewModel({
    required this.firestore,
    required this.ref,
  }) : super(const HomeViewState()) {
    _fetchAllData();
  }

  toggleTabs() =>
      state = state.copyWith(isFirstSelected: !state.isFirstSelected);

  _fetchAllData() async {
    try {
      state = state.copyWith(status: HomeViewStatus.loading);

      await _fetchAssessments();
      await _fetchAppointments();
      await _fetchChallenges();
      await _fetchRoutines();

      state = state.copyWith(status: HomeViewStatus.success);
    } catch (e) {
      state = state.copyWith(
        status: HomeViewStatus.error,
        errorMessage: e.toString(),
      );
    }
  }

  _fetchAssessments() async {
    List<Assessment> allAssessments = [];
    var snapshot = await firestore.collection('assessments').get();

    for (var assessmentSnapshot in snapshot.docs) {
      assessmentSnapshot.data();
      if (assessmentSnapshot.exists) {
        allAssessments.add(Assessment.fromJson(assessmentSnapshot.data()));
      }
    }

    state = state.copyWith(assessments: allAssessments);
  }

  _fetchAppointments() async {
    List<Appointment> allAppointments = [];
    var snapshot = await firestore.collection('appointments').get();

    for (var appointmentSnapshot in snapshot.docs) {
      appointmentSnapshot.data();
      if (appointmentSnapshot.exists) {
        allAppointments.add(Appointment.fromJson(appointmentSnapshot.data()));
      }
    }

    state = state.copyWith(appointments: allAppointments);
  }

  _fetchChallenges() async {
    var snapshot = await firestore.collection('challenge').get();

    if (snapshot.docs.first.exists) {
      Challenge challenge = Challenge.fromJson(snapshot.docs.first.data());

      state = state.copyWith(challenge: challenge);
    }
  }

  _fetchRoutines() async {
    List<Routine> allRoutines = [];
    var snapshot = await firestore.collection('routines').get();

    for (var routineSnapshot in snapshot.docs) {
      routineSnapshot.data();
      if (routineSnapshot.exists) {
        allRoutines.add(Routine.fromJson(routineSnapshot.data()));
      }
    }

    state = state.copyWith(routines: allRoutines);
  }
}

@freezed
class HomeViewState with _$HomeViewState {
  const factory HomeViewState({
    @Default(true) bool isFirstSelected,
    @Default([]) List<Assessment> assessments,
    Challenge? challenge,
    @Default([]) List<Routine> routines,
    @Default([]) List<Appointment> appointments,
    @Default(HomeViewStatus.initial) HomeViewStatus status,
    String? errorMessage,
  }) = _HomeViewState;
}

enum HomeViewStatus {
  initial,
  loading,
  success,
  error,
}
