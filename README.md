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
   
4. **Run the App**:
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

- **Provider**: For state management throughout the app.
- **Flutter SDK**: The core framework used to build this cross-platform app.

You can find these in the `pubspec.yaml` file.

---

## Usage

Once the app is running, follow these steps to use Nutri Link:

1. **Donor Portal**:
   - Go to the Donor portal and tap on 'Reach The Needed" to see a list of Personal user, Food Bank or Community Kitchen in need.
   - View their details and find contact details to make a donation or offer help.
     
   - Go to the Donor portal and tap on 'Be The Donor" and tap on Organisation, Restaurant or Personal button to fill the form details.
   - Your Details will appear on Needed portal at the "Reach The Donor" part. (not function yet, only show dummy data)

2. **Needed Portal**:
   - Go to the Needed portal and tap on 'Reach The Donor" to see a list of Personal user, Organisation or Restaurant that got food surplus to donate.
   - View their details and find contact details to ask a donation or ask for help.
  
   - Go to the Needed portal and tap on 'Let The Donor Reach You" and tap on Food Bank, Community Kitchen or Personal button to fill the form details.
   - Your Details will appear on Donor portal at the "Reach The Needed" part. (not function yet, only show dummy data)

3. **Communication**:
   - Both donors and needy parties can view each other's details and connect directly, fostering an open and supportive network.

---

## Acknowledgments

Nutri Link was developed as a hackathon project to address SDG Goal #2: Zero Hunger. I believe in the app's potential to make an impact on food scarcity and hunger in our communities.

---
## Future Planning

Please note that the current version of Nutri Link represents a simplified version due to a database connection issue. Moving forward, I plan to configure the database for user authentication and implement a dashboard to encourage donors. This dashboard will highlight top donors, allowing individuals and businesses, such as restaurants, to showcase their contributions. This feature aims to promote continuous food donations by providing recognition and visibility for top contributors within the community.

---

Thank you for your understanding, and I hope the core concept of Nutri Link conveys its intended purpose!
