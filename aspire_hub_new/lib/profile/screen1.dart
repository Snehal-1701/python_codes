import 'package:aspire_hub_new/profile/screen2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Code1 extends StatelessWidget {
  const Code1({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 50),
            Center(
              child: Text(
                "Hi there, Let's Begin",
                style: GoogleFonts.quicksand(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 20),
            // Profile image with Edit icon
            Center(
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Container(
                    height: screenWidth * 0.4,  // Increased size of the profile image
                    width: screenWidth * 0.4,   // Increased size of the profile image
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    clipBehavior: Clip.antiAlias,
                    child: Icon(Icons.person, size: screenWidth * 0.3),  // Larger icon size
                  ),
                  Positioned(
                    bottom: 20,
                    right: 7,  // Changed to bottom-right
                    child: GestureDetector(
                      onTap: () {
                        // Action when the edit icon is tapped
                        print('Edit icon tapped');
                        // Add any functionality here (like opening the image picker, etc.)
                      },
                      child: CircleAvatar(
                        radius: 18,
                        backgroundColor: Colors.black.withOpacity(0.5),
                        child: const Icon(
                          Icons.edit,
                          color: Colors.white,
                          size: 18,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: Text(
                "Tell a bit about yourself👋",
                style: GoogleFonts.quicksand(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const SizedBox(height: 15),
            buildTextInput("First Name", screenWidth),
            buildTextInput("Last Name", screenWidth),
            buildTextInput("Email", screenWidth),
            buildTextInput("Mobile Number", screenWidth),
            const SizedBox(height: 15),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Select your job position in which you are interested to work...",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  buildJobPosition("Software Developer",
                      Icons.developer_mode_outlined, Colors.green, screenWidth),
                  buildJobPosition("Security Analyst", Icons.security_outlined,
                      Colors.blue, screenWidth),
                ],
              ),
            ),
            const SizedBox(height: 6),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  buildJobPosition("Data Science Specialist",
                      Icons.data_exploration_outlined, Colors.red, screenWidth),
                  buildJobPosition(
                      "Cloud Architect", Icons.cloud, Colors.blue, screenWidth),
                ],
              ),
            ),
            const SizedBox(height: 6),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  buildJobPosition(
                      "Network Engineer",
                      Icons.cell_tower_outlined,
                      const Color.fromARGB(156, 73, 56, 6),
                      screenWidth),
                  buildJobPosition("Database Analyst", Icons.storage,
                      Colors.blue, screenWidth),
                ],
              ),
            ),
            Center(
              child: GestureDetector(
                onTap: () {
                  // Navigate to the next screen
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Code2()),
                  );
                },
                child: Container(
                  margin: const EdgeInsets.all(15),
                  height: screenWidth * 0.1,
                  width: screenWidth * 0.5,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    color: Colors.black,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Get Started",
                        style: GoogleFonts.quicksand(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(width: 10),
                      const Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                        size: 25,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }

  Widget buildTextInput(String label, double screenWidth) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: GoogleFonts.quicksand(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.grey,
            ),
          ),
          TextField(
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide:
                    const BorderSide(color: Color.fromRGBO(0, 139, 148, 1)),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }

  Widget buildJobPosition(
      String title, IconData icon, Color iconColor, double screenWidth) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      child: Container(
        height: screenWidth * 0.1,
        width: screenWidth * 0.5,
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          color: Color.fromARGB(255, 228, 205, 135),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: GoogleFonts.quicksand(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(width: screenWidth * 0.02),
            Icon(
              icon,
              size: screenWidth * 0.06,
              color: iconColor,
            ),
          ],
        ),
      ),
    );
  }
}
