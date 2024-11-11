import 'dart:io';
import 'package:aspire_hub_new/profile/screen2.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';

class Code1 extends StatefulWidget {
  const Code1({super.key});

  @override
  _Code1State createState() => _Code1State();
}

class _Code1State extends State<Code1> {
  // Controllers for each TextField
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _mobileNumberController = TextEditingController();

  final ImagePicker _imagePicker = ImagePicker();
  XFile? _selectedFile;

  Future uploadImage({required String fileName}) async {
    print("ADD IMAGE TO FIREBASE");
    await FirebaseStorage.instance
        .ref()
        .child(fileName)
        .putFile(File(_selectedFile!.path));
  }

  Future downloadImageURL({required String fileName}) async {
    print("GET URL TO FIREBASE");
    String url =
        await FirebaseStorage.instance.ref().child(fileName).getDownloadURL();
    print("UPLOADED URL :$url");
    return url;
  }

  void addDataToFirebase({String? url}) {
    print("UPLOAD DATA TO CLOUD");

    Map<String, dynamic> data = {
      'profilePic': url,
      'firstName': _firstNameController.text.trim(),
      'lastName': _lastNameController.text.trim(),
      'email': _emailController.text.trim(),
      'mobileNumber': _mobileNumberController.text.trim(),
    };

    FirebaseFirestore.instance.collection("studentInfo").add(data)
    .then((value) {
      print("Data successfully added!");
    }).catchError((error) {
      print("Error adding data: $error");
    });


    _firstNameController.clear();
    _lastNameController.clear();
    _emailController.clear();
    _mobileNumberController.clear();
    _selectedFile = null;

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("Data added"),
      ),
    );
  }

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
                    height: screenWidth * 0.4,
                    width: screenWidth * 0.4,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    clipBehavior: Clip.antiAlias,
                    child: (_selectedFile == null)
                        ? Image.network(
                            "https://icons.veryicon.com/png/o/miscellaneous/standard/avatar-15.png",
                            fit: BoxFit.cover,
                          )
                        : Image.file(
                            File(_selectedFile!.path),
                            fit: BoxFit.cover,
                          ),
                  ),
                  Positioned(
                    bottom: 20,
                    right: 7,
                    child: GestureDetector(
                      onTap: () async {
                        _selectedFile = await _imagePicker.pickImage(
                            source: ImageSource.gallery);
                        if (_selectedFile != null) {
                          print("File = ${_selectedFile!.path} ");
                          setState(() {});
                        }
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
            buildTextInput("First Name", screenWidth, _firstNameController),
            buildTextInput("Last Name", screenWidth, _lastNameController),
            buildTextInput("Email", screenWidth, _emailController),
            buildTextInput("Mobile Number", screenWidth, _mobileNumberController),
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
               onTap: () async {
                  if (_firstNameController.text.trim().isNotEmpty &&
                      _lastNameController.text.trim().isNotEmpty &&
                      _emailController.text.trim().isNotEmpty &&
                      _mobileNumberController.text.trim().isNotEmpty) {

                       //Add data to Firestore
                        addDataToFirebase();

                        // Clear the input fields
        _firstNameController.clear();
        _lastNameController.clear();
        _emailController.clear();
        _mobileNumberController.clear();

                        setState(() {});

                         Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Code2()),
        );
                    // String fileName =
                    //     "profile_pic_${_firstNameController.text}_${DateTime.now()}";

                    // if (_selectedFile != null) {
                    //   try {
                    //     // Add image to Firebase Storage
                    //     //await uploadImage(fileName: fileName);

                    //     // Get image URL from Firebase Storage
                    //     //String url = await downloadImageURL(fileName: fileName);

                    //     // Add data to Firestore
                    //     //addDataToFirebase(url: url);

                    //     setState(() {});

                    //     // Navigate to next screen
                    //     Navigator.push(
                    //       context,
                    //       MaterialPageRoute(
                    //           builder: (context) => const Code2()),
                    //     );
                    //   } catch (e) {
                    //     ScaffoldMessenger.of(context).showSnackBar(
                    //       SnackBar(content: Text("Error uploading data: $e")),
                    //     );
                    //   }
                    // }
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Please fill in all required fields."),
                      ),
                    );
                  }
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

  Widget buildTextInput(
      String label, double screenWidth, TextEditingController controller) {
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
            controller: controller,
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
            const SizedBox(width: 5),
            Icon(icon, color: iconColor),
          ],
        ),
      ),
    );
  }
} 