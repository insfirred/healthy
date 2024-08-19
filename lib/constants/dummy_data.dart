// import 'package:healthy_life/constants/enums.dart';
// import 'package:healthy_life/models/appointment.dart';
// import 'package:healthy_life/models/routine.dart';

// import '../models/assessment.dart';
// import '../models/challenge.dart';
// import '../models/resource.dart';

// List<Assessment> allAssessments = [
//   const Assessment(
//     id: 'id',
//     name: 'Fitness Assessment',
//     description:
//         'Get started on your fitness goals with our physical assessment and vital scan',
//     imageUrl:
//         'https://firebasestorage.googleapis.com/v0/b/rootally-task-d7090.appspot.com/o/waste%2Fassessment_image.png?alt=media&token=5a6a71a7-0f7c-4ade-a4c3-bd60cc9e9147',
//     workoutImageUrl:
//         'https://firebasestorage.googleapis.com/v0/b/rootally-task-d7090.appspot.com/o/waste%2Fworkout.png?alt=media&token=29037a24-0a6a-4ad1-be25-05cd64d6bf38',
//     durationInSec: 4 * 60,
//     resources: [
//       Resource(
//         id: 'id',
//         name: 'Key Body Vitals',
//         imageUrl:
//             'https://firebasestorage.googleapis.com/v0/b/rootally-task-d7090.appspot.com/o/waste%2Fresource.png?alt=media&token=b21df3ec-d52f-4c84-9303-e1b8017806e8',
//       ),
//       Resource(
//         id: 'id',
//         name: 'Posture Analysis',
//         imageUrl:
//             'https://firebasestorage.googleapis.com/v0/b/rootally-task-d7090.appspot.com/o/waste%2Fresource.png?alt=media&token=b21df3ec-d52f-4c84-9303-e1b8017806e8',
//       ),
//       Resource(
//         id: 'id',
//         name: 'Body Composition',
//         imageUrl:
//             'https://firebasestorage.googleapis.com/v0/b/rootally-task-d7090.appspot.com/o/waste%2Fresource.png?alt=media&token=b21df3ec-d52f-4c84-9303-e1b8017806e8',
//       ),
//       Resource(
//         id: 'id',
//         name: 'Instant Reports',
//         imageUrl:
//             'https://firebasestorage.googleapis.com/v0/b/rootally-task-d7090.appspot.com/o/waste%2Fresource.png?alt=media&token=b21df3ec-d52f-4c84-9303-e1b8017806e8',
//       ),
//     ],
//     prerequisites: [
//       'Ensure that you are in a well-lit space',
//       'Allow camera access and place your device against a stable object or wall',
//       'Avoiding wearing baggy clothes',
//       'Make sure you exercise as per the instruction provided by the trainer',
//       'Watch the short preview before each exercise',
//     ],
//     benefits: [
//       'Holistic Insight into Physical Health Across Multiple Key Areas',
//       'Enables Early Interventions, Improving Preventive Care and Health Outcomes',
//       'Tailored Lifestyle and Health Recommendations Based on Detailed Assessment Results',
//     ],
//   ),
//   const Assessment(
//     id: 'id',
//     name: 'Health Risk Assesment',
//     description:
//         'Identify and mitigate health risks with precise, proactive assessments',
//     imageUrl:
//         'https://firebasestorage.googleapis.com/v0/b/rootally-task-d7090.appspot.com/o/waste%2Fassessment_image.png?alt=media&token=5a6a71a7-0f7c-4ade-a4c3-bd60cc9e9147',
//     workoutImageUrl:
//         'https://firebasestorage.googleapis.com/v0/b/rootally-task-d7090.appspot.com/o/waste%2Fworkout.png?alt=media&token=29037a24-0a6a-4ad1-be25-05cd64d6bf38',
//     durationInSec: 4 * 60,
//     resources: [
//       Resource(
//         id: 'id',
//         name: 'Key Body Vitals',
//         imageUrl:
//             'https://firebasestorage.googleapis.com/v0/b/rootally-task-d7090.appspot.com/o/waste%2Fresource.png?alt=media&token=b21df3ec-d52f-4c84-9303-e1b8017806e8',
//       ),
//       Resource(
//         id: 'id',
//         name: 'Posture Analysis',
//         imageUrl:
//             'https://firebasestorage.googleapis.com/v0/b/rootally-task-d7090.appspot.com/o/waste%2Fresource.png?alt=media&token=b21df3ec-d52f-4c84-9303-e1b8017806e8',
//       ),
//       Resource(
//         id: 'id',
//         name: 'Body Composition',
//         imageUrl:
//             'https://firebasestorage.googleapis.com/v0/b/rootally-task-d7090.appspot.com/o/waste%2Fresource.png?alt=media&token=b21df3ec-d52f-4c84-9303-e1b8017806e8',
//       ),
//       Resource(
//         id: 'id',
//         name: 'Instant Reports',
//         imageUrl:
//             'https://firebasestorage.googleapis.com/v0/b/rootally-task-d7090.appspot.com/o/waste%2Fresource.png?alt=media&token=b21df3ec-d52f-4c84-9303-e1b8017806e8',
//       ),
//     ],
//     prerequisites: [
//       'Ensure that you are in a well-lit space',
//       'Allow camera access and place your device against a stable object or wall',
//       'Avoiding wearing baggy clothes',
//       'Make sure you exercise as per the instruction provided by the trainer',
//       'Watch the short preview before each exercise',
//     ],
//     benefits: [
//       'Holistic Insight into Physical Health Across Multiple Key Areas',
//       'Enables Early Interventions, Improving Preventive Care and Health Outcomes',
//       'Tailored Lifestyle and Health Recommendations Based on Detailed Assessment Results',
//     ],
//   ),
// ];

// Challenge todaysChallenge = const Challenge(
//   id: 'id',
//   name: 'Push Up 20 times',
//   imageUrl:
//       'https://firebasestorage.googleapis.com/v0/b/rootally-task-d7090.appspot.com/o/waste%2Fchallenge.png?alt=media&token=7a709ded-2693-49a3-a203-7e36d03670a8',
//   totalSteps: 10,
//   stepsCompleted: 20,
// );

// List<Routine> allRoutines = [
//   const Routine(
//     id: 'id1',
//     name: 'Sweat Starter',
//     imageUrl:
//         'https://firebasestorage.googleapis.com/v0/b/rootally-task-d7090.appspot.com/o/waste%2Froutine.png?alt=media&token=c229252c-0feb-4274-ab61-9dac263fd4dc',
//     type: 'Full Body',
//     tags: ['Lose Weight'],
//     difficulty: Difficulty.medium,
//   ),
//   const Routine(
//     id: 'id1',
//     name: 'Sweat Starter',
//     imageUrl:
//         'https://firebasestorage.googleapis.com/v0/b/rootally-task-d7090.appspot.com/o/waste%2Froutine.png?alt=media&token=c229252c-0feb-4274-ab61-9dac263fd4dc',
//     type: 'Full Body',
//     tags: ['Lose Weight'],
//     difficulty: Difficulty.medium,
//   ),
//   const Routine(
//     id: 'id1',
//     name: 'Sweat Starter',
//     imageUrl:
//         'https://firebasestorage.googleapis.com/v0/b/rootally-task-d7090.appspot.com/o/waste%2Froutine.png?alt=media&token=c229252c-0feb-4274-ab61-9dac263fd4dc',
//     type: 'Full Body',
//     tags: ['Lose Weight'],
//     difficulty: Difficulty.medium,
//   ),
// ];

// List<Appointment> allAppointments = [
//   const Appointment(
//     id: 'id',
//     name: 'Cancer 2nd Opinion',
//     imageUrl:
//         'https://firebasestorage.googleapis.com/v0/b/rootally-task-d7090.appspot.com/o/waste%2Fappointment.png?alt=media&token=c6c58fe5-0153-4635-bb87-9485248a912b',
//   ),
//   const Appointment(
//     id: 'id',
//     name: 'Physiotherapy',
//     imageUrl:
//         'https://firebasestorage.googleapis.com/v0/b/rootally-task-d7090.appspot.com/o/waste%2Fappointment.png?alt=media&token=c6c58fe5-0153-4635-bb87-9485248a912b',
//   ),
//   const Appointment(
//     id: 'id',
//     name: 'Fitness Appointment',
//     imageUrl:
//         'https://firebasestorage.googleapis.com/v0/b/rootally-task-d7090.appspot.com/o/waste%2Fappointment.png?alt=media&token=c6c58fe5-0153-4635-bb87-9485248a912b',
//   ),
// ];
