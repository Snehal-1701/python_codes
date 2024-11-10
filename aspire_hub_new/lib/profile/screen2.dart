// ignore_for_file: sort_child_properties_last

import 'package:aspire_hub_new/profile/resume.dart';
import 'package:aspire_hub_new/profile/screen3.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Code2 extends StatefulWidget {
  const Code2({super.key});

  @override
  State<Code2> createState() => _Code1();
}

class _Code1 extends State<Code2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header Section
            Container(
              color: Colors.black,
              height: 200,
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Row for Welcome Text, hii.png, and img.png
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Welcome",
                              style: GoogleFonts.quicksand(
                                textStyle: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 25,
                                ),
                              ),
                            ),
                            Text(
                              "Snehal",
                              style: GoogleFonts.quicksand(
                                textStyle: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 25,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 60,
                        width: 60,
                        child:
                            Image.asset("assets/svg/image-landingpage/hii.png"),
                      ),
                      const SizedBox(width: 20), // Spacing between images
                      Container(
                        height: 120,
                        width: 120,
                        child:
                            Image.asset("assets/svg/image-landingpage/img.png"),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8), // Spacing between rows

                  // Row for Credits
                  Row(
                    children: [
                      Text(
                        "Available Credits : 200 ",
                        style: GoogleFonts.quicksand(
                          textStyle: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      const Icon(
                        Icons.flash_on,
                        color: Colors.amber,
                        size: 20,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                width: 550,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromARGB(255, 235, 228, 176),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        // Profile Image
                        Row(
                          children: [
                            const CircleAvatar(
                              backgroundImage: AssetImage(
                                  'assets/svg/image-landingpage/profile.jpg'), // Make sure profile.png exists in assets
                              radius: 30,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Hi, I'm AK \nyour Interview Coach!",
                              style: GoogleFonts.quicksand(
                                textStyle: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 52, 46, 2),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Container(
                        height: 3,
                        width: 400,
                        color: const Color.fromARGB(255, 221, 197, 13)),
                    // Column with text
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 4),
                        SizedBox(
                          width: 400,
                          child: Text(
                            "Let's complete your profile to unlock AI-powered interview mocks",
                            style: GoogleFonts.quicksand(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              textStyle: const TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        SizedBox(
                          width: 400,
                          child: Text(
                            "Profile details help us custom curate the app",
                            style: GoogleFonts.quicksand(
                              fontWeight: FontWeight.w600,
                              textStyle: const TextStyle(color: Colors.black87),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    // Row with Lock Icon and Button
                    SizedBox(
                      width: 330,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Code3(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: Text(
                          "Complete Now",
                          style: GoogleFonts.quicksand(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            textStyle: const TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Action Buttons
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ResumeAnalyse()),
                      );
                    },
                    child: ActionButton(
                      color: Colors.blue[100],
                      title: "Build Your Resume PDF For Free",
                      subtitle:
                          "Approved by HRs and takes only 2 mins to export",
                    ),
                  ),
                  ActionButton(
                    color: Colors.purple[100],
                    title: "Resume Review with Arya",
                    subtitle: "Receive in-depth, real-time resume feedback",
                  ),
                  ActionButton(
                    color: Colors.red[100],
                    title: "Rapid Practice Flash Card",
                    subtitle: "Brush through every aspect of any skill/tools",
                  ),
                ],
              ),
            ),
            // Company Profiles Section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Company Profiles 📈",
                    style: GoogleFonts.quicksand(
                      textStyle: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  const SizedBox(height: 4),

                  ///TEXT
                  Text(
                    "Hiring Process, Salaries, Benefits & Interview Experiences of Top Companies of India & Abroad",
                    style: GoogleFonts.quicksand(
                      textStyle: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CompanyIcon(
                        iconUrl:
                            'https://th.bing.com/th/id/OIP.eQtOvG9RteKqkemBQ2-2jQHaHa?w=197&h=197&c=7&r=0&o=5&dpr=1.3&pid=1.7',
                        companyName: 'Facebook/Meta',
                      ),
                      CompanyIcon(
                        iconUrl:
                            'https://th.bing.com/th/id/OIP.q2BNNZn6ww3cve-teMpaBQHaHM?w=171&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7',
                        companyName: 'Atlassian',
                      ),
                      CompanyIcon(
                        iconUrl:
                            'https://th.bing.com/th/id/OIP.NU47ZE8R8rFbMAB4a_w3FgHaHa?w=179&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7',
                        companyName: 'Google India',
                      ),
                      CompanyIcon(
                        iconUrl:
                            'https://th.bing.com/th?id=OIP.H_XU-kpbbMS7kjHFtI9q1wHaEK&w=333&h=187&c=8&rs=1&qlt=90&o=6&dpr=1.3&pid=3.1&rm=2',
                        companyName: 'Mastercard',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ActionButton extends StatelessWidget {
  final Color? color;
  final String title;
  final String subtitle;

  const ActionButton({
    Key? key,
    this.color,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // Makes the card full width
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: GoogleFonts.quicksand(
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color:
                        Color.fromARGB(255, 20, 54, 108), // Darker blue color
                  ),
                ),
              ),
              const SizedBox(height: 4),
              Text(
                subtitle,
                style: GoogleFonts.quicksand(
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
          const Icon(
            Icons.arrow_forward_ios,
            size: 20,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}

class CompanyIcon extends StatelessWidget {
  final String iconUrl;
  final String companyName;

  const CompanyIcon({
    Key? key,
    required this.iconUrl,
    required this.companyName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(
          iconUrl,
          width: 50,
          height: 50,
        ),
        const SizedBox(height: 4),
        Text(
          companyName,
          style: GoogleFonts.quicksand(
            textStyle: const TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}
