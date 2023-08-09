import 'package:flutter/material.dart';
import 'package:privacy_policy/components/back_menu.dart';

class PrivacyPolicy extends StatefulWidget {
  const PrivacyPolicy({super.key});

  @override
  State<PrivacyPolicy> createState() => _PrivacyPolicyState();
}

class _PrivacyPolicyState extends State<PrivacyPolicy> {
  String selectedSection = 'Highlights';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BackMenu(
        title: "Privacy Policy",
        onMenuPressed: () {},
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Text(
              "What is the Privacy Policy and what does it cover?",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10, bottom: 5),
              child: const Text(
                "Last updated: June 15, 2023",
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color.fromARGB(255, 82, 81, 81),
                    fontSize: 15,
                    fontWeight: FontWeight.normal),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10, bottom: 5),
              child: const Text(
                "Welcome to the NSBM N-Side app. We are committed to protecting your privacy and providing a secure and seamless experience. This Privacy Policy outlines how we collect, use, disclose, and protect your personal information. By using the App, you consent to the practices described in this policy.",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                margin: const EdgeInsets.only(top: 10, bottom: 5),
                child: const Text(
                  "Information We Collect",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10, bottom: 5),
              child: const Text(
                "We collect the following types of information when you use our App:",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            const SizedBox(height: 16),
            RichText(
              text: const TextSpan(
                style: TextStyle(color: Colors.black, fontSize: 16),
                children: [
                  TextSpan(
                    text: 'Personal Information: ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text:
                        'During account registration, we collect your name, email address, student ID, and other relevant information.',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            RichText(
              text: const TextSpan(
                style: TextStyle(color: Colors.black, fontSize: 16),
                children: [
                  TextSpan(
                    text: 'Usage Data: ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text:
                        'We gather data on how you interact with the App, including your actions within the app, navigation paths, and usage patterns. This information helps us enhance the user experience and optimize our services.',
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                margin: const EdgeInsets.only(top: 10, bottom: 5),
                child: const Text(
                  "How We Use Your Information",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10, bottom: 5),
              child: const Text(
                "We use the collected information for the following purposes:",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            const SizedBox(height: 16),
            RichText(
              text: const TextSpan(
                style: TextStyle(color: Colors.black, fontSize: 16),
                children: [
                  TextSpan(
                    text: 'Account Management: ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text:
                        'We use your personal information to create and manage your account, allowing you to access personalized features.',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            RichText(
              text: const TextSpan(
                style: TextStyle(color: Colors.black, fontSize: 16),
                children: [
                  TextSpan(
                    text: 'Timetable and Lecture Information:',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text:
                        'We display daily timetables, lecture hall details, real-time availability updates, and directions based on your personalized schedule.',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            RichText(
              text: const TextSpan(
                style: TextStyle(color: Colors.black, fontSize: 16),
                children: [
                  TextSpan(
                    text: 'Communication:',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text:
                        'We send notifications, updates, and important information related to your academic schedule, events, and announcements.',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            RichText(
              text: const TextSpan(
                style: TextStyle(color: Colors.black, fontSize: 16),
                children: [
                  TextSpan(
                    text: 'Improvement of Services:',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text:
                        'Usage data helps us analyze user behavior and preferences, enabling us to improve the Apps functionality, content, and features.',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            // DropdownButton<String>(
            //   value: selectedSection,
            //   onChanged: (newValue) {
            //     setState(() {
            //       selectedSection = newValue!;
            //     });
            //   },
            //   items: [
            //     'How We Use Your Information',
            //     'Information Sharing',
            //     'Data Security',

            //     // ... Add other sections here ...
            //   ].map<DropdownMenuItem<String>>((String value) {
            //     return DropdownMenuItem<String>(
            //       value: value,
            //       child: Text(value),
            //     );
            //   }).toList(),
            // ),
          ],
        ),
      ),
    );
  }
}
