# movies_mobile_app_flutter 🎬
A small flutter project to show movies from a watchlist.

## Project Overview #####
The **MoviesMobileApp**! project is a basic app developed in Flutter. It aims to show movies from a watchlist, demonstrate the usage of some Flutter technologies like GoRouter, TypeSafeGoRouter, Bloc, etc. As this is a basic project, there are some features that are not yet completed, however it has pretty good amount of techs to play around with.

## Features
- A splash screen to decide where to navigate next depending on the user session.
- A login screen to "mock" a real login feature.
- Display some empty screens to allow navigation between different subflows.
- Display a list of Watchlist movies with the ability to see the details of a movie after tapping on it.
- A profile screen that only shows static content with the ability to "mock" a logout session.

## Technical overview.
This project is built using the Flutter framework in conbination with some third party flutter libs to handle Networking API calls. 
The [TMDB](https://www.themoviedb.org/) API provides the watchlist movies data that is displayed on the App.

## Technical stack.
- DIO + Retrofit for networking API calls.
- getIt for DI.
- intl for localization and date formatting.
- GoRouter + TypeSafeGoRouter for navigation.
- SharedPreferences to store flags and non-sensitive data within the app.
- Repository pattern + Clean Architecture.
- Bloc for state management.
- Material3
- Adaptive Icons (Depending on the platform, the icons are adapted to their corresponding "look and feel").
- Montserrat font family.

<div style="display: flex; justify-content: space-between;">
  <h1>iOS App</h1>
<h3>Login, Profile</h3>
  <img src="https://github.com/user-attachments/assets/aab42ee6-75df-40b1-b865-28108698da34" alt="Login" style="width: 25%;"/>
    <img src="https://github.com/user-attachments/assets/9adbc854-89b0-4d8e-849d-581f9a741aad" alt="Profile" style="width: 25%;"/>
    <img src="https://github.com/user-attachments/assets/06b23d49-ba73-48e8-9a91-dfe55b21bebd" alt="Profile - Logout" style="width: 25%;"/>
<h3>Watchlist, Details, No content</h3>
  <img src="https://github.com/user-attachments/assets/fa10fac1-d0a3-4373-bd33-8d13ed3528da" alt="Watchlist" style="width: 25%;"/>
  <img src="https://github.com/user-attachments/assets/eac210b9-13a1-4704-8e5e-60582f5f61ef" alt="Watchlist - Details" style="width: 25%;"/>
  <img src="https://github.com/user-attachments/assets/56e20a16-b5da-435b-bbb5-b9dd84a60997" alt="Coming Soon" style="width: 25%;"/>
  <h1>Android App</h1>
<h3>Login, Profile</h3>
  <img src="https://github.com/user-attachments/assets/7045ec21-5fa5-495f-9a91-d469be6e50e3" alt="Login" style="width: 25%;"/>
  <img src="https://github.com/user-attachments/assets/72b5e18e-74b9-4018-8f95-febaed87f833" alt="Profile" style="width: 25%;"/>
  <img src="https://github.com/user-attachments/assets/a73445a0-d85d-464c-ab15-e80ec2147d7a" alt="Profile - Logout" style="width: 25%;"/>
<h3>Watchlist, Details, No content</h3>
  <img src="https://github.com/user-attachments/assets/2c8b0a5c-479a-49e5-afbe-8a853fc48ae6" alt="Watchlist" style="width: 25%;"/>
  <img src="https://github.com/user-attachments/assets/f1f0bcb5-76f2-40f3-a1d1-5067420672e1" alt="Watchlist - Details" style="width: 25%;"/>
  <img src="https://github.com/user-attachments/assets/cab3f1d8-ae0e-4eb2-b067-e69ff7140b60" alt="Coming Soon" style="width: 25%;"/>
</div>

## License

This project is licensed under the Apache 2.0 License.
