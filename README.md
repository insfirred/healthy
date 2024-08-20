# Healthy Life

## UI overview:
This app contains two screens, HomeView and AssessmentView.

In HomeView, there is a section which contains AssessmentSection and AppointmentSection, whenever the user taps on any assessment item on the AssessmentSection, it will navigate to AssessmentView where all the info about assessment is available,I created explicit animations to when user switches from assessment section to appointment section. Below these sections there is a Challenge card which display challenge's data. Below it, there is a horizontal scrollable list to display all the workout routine data.
When the data loads from database, there is a CircularProgressIndicator in the center.

In AssessmentView, I used CustomScrollBar to create a parallax effect between TopAppbar and below section while scrolling. The image in appbar is wrapped in Hero tag which is linked to image in assessment item on the HomeView which makes the image animate through the screen.


## Project Structure overview:
```
-lib/
	-contants/ (contains enums and constanst values)
 
  -models/ (contains assessment, appointment, challenges, workout_routine models)
  
  -theme/ (contains app theme)
  
  -ui/
		-home/
			-home_view.dart (contains presentation of home view)
			-home_view_model.dart(contains business logic for fetching data and modifying states)
   
   -assessment/
			-assessment_view.dart (contains presentation of assessment view)
```

## Apk link
- Download APK from [here](https://drive.google.com/file/d/1Ws6mcsxKgquwrzGs_9__DWazB83l9nGu/view?usp=sharing)

## Screenshots

https://github.com/user-attachments/assets/aae31e06-5262-4543-8b57-03bf252a302f

<img src="https://github.com/user-attachments/assets/668070d9-8289-4540-b667-4ecdf484351b" width="300">
<img src="https://github.com/user-attachments/assets/634e9bbb-60b5-4301-a330-92e0e7996496" width="300">
<img src="https://github.com/user-attachments/assets/2e92ace5-b5a8-4e0d-a328-4ea697eae539" width="300">
