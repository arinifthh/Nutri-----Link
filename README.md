# Nutri Link

By Single Code 

Team Member : NUR ARINI FATIHAH BINTI MODH SABIR

Nutri Link is a mobile application built with Flutter to address the United Nations Sustainable Development Goal of Zero Hunger. This app facilitates the connection between **Donors** and **Needy Organizations** by creating a portal where both parties can promote themselves, communicate, and make impactful contributions toward reducing hunger in communities.

## Table of Contents

- [Features](#features)
- [Setup](#setup)
- [Dependencies](#dependencies)
- [Usage](#usage)
- [Acknowledgments](#acknowledgments)

---

## Features

- **Donor Portal**: Allows donors to view a list of organizations in need and connect with them directly.
- **Needed Portal**: Provides a platform for organizations or individuals in need to post their requirements and promote themselves for potential donors.
- **Promotion and Reach**: Both donors and needy organizations can post information that is visible to each other, fostering a community of support.

---

## Setup

To set up the project locally, follow these steps:

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/yourusername/nutri_link.git
   cd nutri_link
   ```

2. **Install Flutter Dependencies**:
   Ensure Flutter is installed on your system. You can download it from [Flutter's official website](https://flutter.dev/docs/get-started/install).

3. **Install Project Dependencies**:
   Inside the project directory, run:
   ```bash
   flutter pub get
   ```

4. **Set Up Firebase**:
   - [Create a Firebase project](https://firebase.google.com/), and add an Android app to your project.
   - Download the `google-services.json` file from Firebase Console and place it in the `android/app` directory.
   - Update Firebase settings in `android/build.gradle` and `android/app/build.gradle` according to the project setup requirements.

5. **Run the App**:
   To test on Chrome (web):
   ```bash
   flutter run -d chrome
   ```
   To test on an Android emulator or a connected device:
   ```bash
   flutter run
   ```

---

## Dependencies

The following dependencies are used in the Nutri Link app:

- **Firebase Core**: For connecting to Firebase and managing backend services.
- **Firebase Auth**: For authenticating users (e.g., donors and needy organizations).
- **Cloud Firestore**: For storing and retrieving data related to donations and needs.
- **Provider**: For state management throughout the app.
- **Flutter SDK**: The core framework used to build this cross-platform app.

You can find these in the `pubspec.yaml` file.

---

## Usage

Once the app is running, follow these steps to use Nutri Link:

1. **Donor Portal**:
   - Go to the Donor portal to see a list of organizations in need.
   - View individual organization profiles and find contact details to make a donation or offer help.

2. **Needed Portal**:
   - Organizations or individuals in need can create a profile under the Needed portal.
   - Post your requirements to attract potential donors who want to contribute to zero hunger.

3. **Communication**:
   - Both donors and needy parties can view each other's postings and connect directly, fostering an open and supportive network.

---

## Acknowledgments

Nutri Link was developed as a hackathon project to address SDG Goal #2: Zero Hunger. I believe in the app's potential to make an impact on food scarcity and hunger in our communities.

---

## Note

Please be advised that due to a persistent database connection error, the current version of Nutri Link does not fully represent the original system. The app design I initially spent three days developing was not able to be completed due to this issue, and what is currently available is a simplified last-minute solution. I decided to submit it  to qualify for the certificate and badge. 

Thank you for your understanding, and I hope the core concept of Nutri Link still conveys its intended purpose!
