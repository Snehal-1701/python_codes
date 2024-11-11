
import 'package:aspire_hub_new/info/info_screen_1.dart';
import 'package:aspire_hub_new/info/skill_screen.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MaterialApp(
    home: EducationScreen(),
  ));
}

// EducationScreen widget
class EducationScreen extends StatefulWidget {
  const EducationScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _EducationScreenState createState() => _EducationScreenState();
}

class _EducationScreenState extends State<EducationScreen> {
  bool isAddingEducation = false;

  final TextEditingController _institutionController = TextEditingController();
  final TextEditingController _courseController = TextEditingController();
  final TextEditingController _scoreController = TextEditingController();

  @override
  void dispose() {
    _institutionController.dispose();
    _courseController.dispose();
    _scoreController.dispose();
    super.dispose();
  }

  void _toggleEducationForm() {
    setState(() {
      isAddingEducation = !isAddingEducation;
    });
  }

  void _onNextPressed() {
    // Navigate to SkillsScreen
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const SkillsScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const ProgressBar(currentIndex: 1), // Reusable progress bar
            const SizedBox(height: 24),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.pink[50],
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Education",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  isAddingEducation ? _buildEducationForm() : _buildAddButton(),
                ],
              ),
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: _onNextPressed,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text("Next"),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAddButton() {
    return GestureDetector(
      onTap: _toggleEducationForm,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 1),
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        child: const Center(
          child: Text(
            "+ Add Education",
            style: TextStyle(fontSize: 16, color: Colors.black),
          ),
        ),
      ),
    );
  }

  Widget _buildEducationForm() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomTextField(
          controller: _institutionController,
          label: "Institution Name",
          hintText: "eg. XYZ University",
        ),
        const SizedBox(height: 16),
        CustomTextField(
          controller: _courseController,
          label: "Course Name",
          hintText: "eg. Computer Science",
        ),
        const SizedBox(height: 16),
        CustomTextField(
          controller: _scoreController,
          label: "Score",
          hintText: "eg. 3.8/4.0",
          keyboardType: TextInputType.number,
        ),
        const SizedBox(height: 16),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              print('Institution: ${_institutionController.text}');
              print('Course: ${_courseController.text}');
              print('Score: ${_scoreController.text}');
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              padding: const EdgeInsets.symmetric(vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: const Text("Save"),
          ),
        ),
      ],
    );
  }
}

// Reusable progress bar widget
class ProgressBar extends StatelessWidget {
  final int currentIndex;

  const ProgressBar({super.key, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(
        6,
        (index) => Expanded(
          child: Container(
            height: 4,
            margin: const EdgeInsets.symmetric(horizontal: 2),
            decoration: BoxDecoration(
              color: index == currentIndex ? Colors.purple : Colors.purple[100],
              borderRadius: BorderRadius.circular(2),
            ),
          ),
        ),
      ),
    );
  }
}
