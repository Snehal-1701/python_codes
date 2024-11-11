// // import 'package:flutter/material.dart';
// // import 'package:google_fonts/google_fonts.dart';

// // void main() {
// //   runApp(const ResumeAnalyse());
// // }

// // class ResumeAnalyse extends StatelessWidget {
// //   const ResumeAnalyse({super.key});

// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       debugShowCheckedModeBanner: false,
// //       home: Resumes(),
// //     );
// //   }
// // }

// // class Resumes extends StatefulWidget {
// //   State createState() => ResumeScreen();
// // }

// // class ResumeScreen extends State {
// //   List<List<Color>> gradientCards = [
// //     [
// //       const Color.fromARGB(255, 6, 98, 173),
// //       const Color.fromARGB(255, 4, 61, 107)
// //     ],
// //     [const Color.fromARGB(255, 3, 116, 44), const Color.fromARGB(255, 1, 37, 2)]
// //   ];

// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: Column(
// //         children: [
// //           Container(
// //             height: 200,
// //             decoration: const BoxDecoration(
// //               gradient: LinearGradient(
// //                 colors: [
// //                   Color.fromARGB(255, 2, 81, 33),
// //                   Color.fromARGB(255, 1, 40, 2),
// //                 ],
// //               ),
// //             ),
// //             child: Row(
// //               children: [
// //                 Padding(
// //                   padding: EdgeInsets.only(top: 100.0, left: 10.0, right: 20.0),
// //                   child: Column(
// //                     children: [
// //                       Text(
// //                         "Build/Analyse",
// //                         style: GoogleFonts.quicksand(
// //                             textStyle: TextStyle(
// //                                 color: Colors.white,
// //                                 fontSize: 30,
// //                                 fontWeight: FontWeight.w600)),
// //                       ),
// //                       Text(
// //                         "Resumes✨",
// //                         style: GoogleFonts.quicksand(
// //                             color: Colors.white,
// //                             fontSize: 30,
// //                             fontWeight: FontWeight.w600),
// //                       ),
// //                     ],
// //                   ),
// //                 ),
// //                 Image.asset("assets/img3.png", height: 170, width: 170)
// //               ],
// //             ),
// //           ),
// //           Expanded(
// //             child: SingleChildScrollView(
// //               child: Column(
// //                 children: [
// //                   const SizedBox(
// //                     height: 30,
// //                   ),
// //                   Container(
// //                     width: 400,
// //                     height: 200,
// //                     decoration: BoxDecoration(
// //                         borderRadius: BorderRadius.circular(10.0),
// //                         gradient: const LinearGradient(colors: [
// //                           Color.fromARGB(255, 6, 98, 173),
// //                           Color.fromARGB(255, 2, 46, 82)
// //                         ])),
// //                     child: Row(
// //                       children: [
// //                         Padding(
// //                           padding: EdgeInsets.all(10.0),
// //                           child: Column(
// //                             crossAxisAlignment: CrossAxisAlignment.start,
// //                             children: [
// //                               Text(
// //                                 "Let's build a",
// //                                 style: GoogleFonts.quicksand(
// //                                     color: Colors.white,
// //                                     fontSize: 20,
// //                                     fontWeight: FontWeight.w300),
// //                               ),
// //                               Text("Standard Resume ",
// //                                   style: GoogleFonts.quicksand(
// //                                     textStyle: TextStyle(
// //                                         color: Colors.white,
// //                                         fontSize: 20,
// //                                         fontWeight: FontWeight.w600),
// //                                   )),
// //                               Container(
// //                                   width: 150,
// //                                   child: Text(
// //                                     "Just provide your proffesional info and build a resume within a seconds ",
// //                                     style: GoogleFonts.quicksand(
// //                                       textStyle: TextStyle(
// //                                           color: Colors.white,
// //                                           fontSize: 14,
// //                                           fontWeight: FontWeight.w200),
// //                                     ),
// //                                   )),
// //                               const SizedBox(
// //                                 height: 5,
// //                               ),
// //                               GestureDetector(
// //                                 child: Container(
// //                                   width: 93,
// //                                   height: 30,
// //                                   decoration: BoxDecoration(
// //                                       color: Colors.black,
// //                                       borderRadius:
// //                                           BorderRadius.circular(17.0)),
// //                                   child: const Row(
// //                                     children: [
// //                                       Padding(
// //                                         padding: EdgeInsets.all(4.0),
// //                                         child: Text(
// //                                           " Create",
// //                                           style: TextStyle(
// //                                               color: Colors.white,
// //                                               fontSize: 15),
// //                                         ),
// //                                       ),
// //                                       SizedBox(width: 10),
// //                                       Icon(
// //                                         Icons.arrow_forward,
// //                                         color: Colors.white,
// //                                       ),
// //                                     ],
// //                                   ),
// //                                 ),
// //                               )
// //                             ],
// //                           ),
// //                         ),
// //                         const SizedBox(width: 30),
// //                         Image.asset("assets/123.png", height: 150, width: 150),
// //                       ],
// //                     ),
// //                   ),
// //                   const SizedBox(height: 10),
// //                   Container(
// //                     width: 400,
// //                     height: 200,
// //                     decoration: BoxDecoration(
// //                         borderRadius: BorderRadius.circular(10.0),
// //                         gradient: const LinearGradient(colors: [
// //                           Color.fromARGB(255, 4, 148, 8),
// //                           Color.fromARGB(255, 3, 107, 6),
// //                         ])),
// //                     child: Row(
// //                       children: [
// //                         Padding(
// //                           padding: EdgeInsets.all(10.0),
// //                           child: Column(
// //                             crossAxisAlignment: CrossAxisAlignment.start,
// //                             children: [
// //                               Text(
// //                                 "Let's analyse a",
// //                                 style: GoogleFonts.quicksand(
// //                                   textStyle: const TextStyle(
// //                                       color: Colors.white,
// //                                       fontSize: 20,
// //                                       fontWeight: FontWeight.w300),
// //                                 ),
// //                               ),
// //                               Text("Your Resume ",
// //                                   style: GoogleFonts.quicksand(
// //                                     textStyle: const TextStyle(
// //                                         color: Colors.white,
// //                                         fontSize: 20,
// //                                         fontWeight: FontWeight.w600),
// //                                   )),
// //                               Container(
// //                                 width: 150,
// //                                 child: Text(
// //                                     "Upload your resume and find if you pass basic and advanced checks ",
// //                                     style: GoogleFonts.quicksand(
// //                                       textStyle: const TextStyle(
// //                                           color: Colors.white,
// //                                           fontSize: 14,
// //                                           fontWeight: FontWeight.w200),
// //                                     )),
// //                               ),
// //                               const SizedBox(
// //                                 height: 5,
// //                               ),
// //                               GestureDetector(
// //                                 child: Container(
// //                                   width: 93,
// //                                   height: 30,
// //                                   decoration: BoxDecoration(
// //                                       color: Colors.black,
// //                                       borderRadius:
// //                                           BorderRadius.circular(17.0)),
// //                                   child: const Padding(
// //                                     padding: const EdgeInsets.only(left: 3.0),
// //                                     child: const Row(
// //                                       children: [
// //                                         Text(
// //                                           " Analyse",
// //                                           style: TextStyle(
// //                                               color: Colors.white,
// //                                               fontSize: 15),
// //                                         ),
// //                                         SizedBox(width: 5),
// //                                         Icon(
// //                                           Icons.arrow_forward,
// //                                           color: Colors.white,
// //                                         ),
// //                                       ],
// //                                     ),
// //                                   ),
// //                                 ),
// //                               )
// //                             ],
// //                           ),
// //                         ),
// //                         const SizedBox(width: 30),
// //                         Image.asset("assets/1.png", height: 200, width: 200)
// //                       ],
// //                     ),
// //                   ),
// //                   const SizedBox(height: 10),
// //                   Container(
// //                     width: 400,
// //                     height: 200,
// //                     decoration: BoxDecoration(
// //                         borderRadius: BorderRadius.circular(10.0),
// //                         gradient: const LinearGradient(colors: [
// //                           Color.fromARGB(255, 139, 126, 1),
// //                           Color.fromARGB(255, 79, 71, 1),
// //                         ])),
// //                     child: Row(
// //                       children: [
// //                         Padding(
// //                           padding: EdgeInsets.all(10.0),
// //                           child: Column(
// //                             crossAxisAlignment: CrossAxisAlignment.start,
// //                             children: [
// //                               Text("Let's analyse your",
// //                                   style: GoogleFonts.quicksand(
// //                                     textStyle: const TextStyle(
// //                                         color: Colors.white,
// //                                         fontSize: 20,
// //                                         fontWeight: FontWeight.w300),
// //                                   )),
// //                               Text("LinkedIn Profile ",
// //                                   style: GoogleFonts.quicksand(
// //                                     textStyle: const TextStyle(
// //                                         color: Colors.white,
// //                                         fontSize: 20,
// //                                         fontWeight: FontWeight.w600),
// //                                   )),
// //                               Container(
// //                                 width: 150,
// //                                 child: Text(
// //                                     "Check if you linkedIn profile aligns with the algorithm ",
// //                                     style: GoogleFonts.quicksand(
// //                                       textStyle: const TextStyle(
// //                                           color: Colors.white,
// //                                           fontSize: 14,
// //                                           fontWeight: FontWeight.w200),
// //                                     )),
// //                               ),
// //                               const SizedBox(
// //                                 height: 7,
// //                               ),
// //                               GestureDetector(
// //                                 child: Container(
// //                                   width: 93,
// //                                   height: 30,
// //                                   decoration: BoxDecoration(
// //                                       color: Colors.black,
// //                                       borderRadius:
// //                                           BorderRadius.circular(17.0)),
// //                                   child: const Padding(
// //                                     padding: const EdgeInsets.only(left: 3.0),
// //                                     child: const Row(
// //                                       children: [
// //                                         Text(
// //                                           " Analyse",
// //                                           style: TextStyle(
// //                                               color: Colors.white,
// //                                               fontSize: 15),
// //                                         ),
// //                                         SizedBox(width: 5),
// //                                         Icon(
// //                                           Icons.arrow_forward,
// //                                           color: Colors.white,
// //                                         ),
// //                                       ],
// //                                     ),
// //                                   ),
// //                                 ),
// //                               )
// //                             ],
// //                           ),
// //                         ),
// //                         const SizedBox(width: 30),
// //                         Image.asset("assets/11.png", height: 150, width: 150),
// //                       ],
// //                     ),
// //                   ),
// //                   const SizedBox(height: 10),
// //                   GestureDetector(
// //                     child: Container(
// //                       width: 100,
// //                       height: 50,
// //                       decoration: BoxDecoration(
// //                           borderRadius: BorderRadius.circular(10.0),
// //                           color: Colors.black),
// //                       child: Center(
// //                         child: Text(
// //                           "Back",
// //                           style: GoogleFonts.quicksand(
// //                               textStyle:
// //                                   TextStyle(fontSize: 20, color: Colors.white)),
// //                         ),
// //                       ),
// //                     ),
// //                   ),
// //                   const SizedBox(height: 10),
// //                 ],
// //               ),
// //             ),
// //           )
// //         ],
// //       ),
// //     );
// //   }
// // }


// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// void main() {
//   runApp(const ResumeAnalyse());
// }

// class ResumeAnalyse extends StatelessWidget {
//   const ResumeAnalyse({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Resumes(),
//     );
//   }
// }

// class Resumes extends StatefulWidget {
//   @override
//   State createState() => ResumeScreen();
// }

// class ResumeScreen extends State<Resumes> {
//   final List<List<Color>> gradientCards = [
//     [
//       const Color.fromARGB(255, 6, 98, 173),
//       const Color.fromARGB(255, 4, 61, 107),
//     ],
//     [
//       const Color.fromARGB(255, 3, 116, 44),
//       const Color.fromARGB(255, 1, 37, 2),
//     ],
//   ];

//   @override
//   Widget build(BuildContext context) {
//     double width = MediaQuery.of(context).size.width;
//     double height = MediaQuery.of(context).size.height;

//     return Scaffold(
//       body: Column(
//         children: [
//           Container(
//             height: height * 0.3,
//             decoration: const BoxDecoration(
//               gradient: LinearGradient(
//                 colors: [
//                   Color.fromARGB(255, 2, 81, 33),
//                   Color.fromARGB(255, 1, 40, 2),
//                 ],
//               ),
//             ),
//             child: Padding(
//               padding: EdgeInsets.symmetric(horizontal: width * 0.05),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         "Build/Analyse",
//                         style: GoogleFonts.quicksand(
//                           textStyle: TextStyle(
//                               color: Colors.white,
//                               fontSize: width * 0.07,
//                               fontWeight: FontWeight.w600),
//                         ),
//                       ),
//                       Text(
//                         "Resumes✨",
//                         style: GoogleFonts.quicksand(
//                           color: Colors.white,
//                           fontSize: width * 0.07,
//                           fontWeight: FontWeight.w600,
//                         ),
//                       ),
//                     ],
//                   ),
//                   Image.asset("assets/img3.png",
//                       height: height * 0.2, width: height * 0.2),
//                 ],
//               ),
//             ),
//           ),
//           Expanded(
//             child: SingleChildScrollView(
//               child: Column(
//                 children: [
//                   SizedBox(height: height * 0.03),
//                   buildCard(
//                     title: "Let's build a",
//                     subtitle: "Standard Resume",
//                     description:
//                         "Just provide your professional info and build a resume within seconds",
//                     image: "assets/123.png",
//                     gradient: [
//                       const Color.fromARGB(255, 6, 98, 173),
//                       const Color.fromARGB(255, 2, 46, 82),
//                     ],
//                   ),
//                   SizedBox(height: height * 0.02),
//                   buildCard(
//                     title: "Let's analyse a",
//                     subtitle: "Your Resume",
//                     description:
//                         "Upload your resume and find if you pass basic and advanced checks",
//                     image: "assets/1.png",
//                     gradient: [
//                       const Color.fromARGB(255, 4, 148, 8),
//                       const Color.fromARGB(255, 3, 107, 6),
//                     ],
//                   ),
//                   SizedBox(height: height * 0.02),
//                   buildCard(
//                     title: "Let's analyse your",
//                     subtitle: "LinkedIn Profile",
//                     description:
//                         "Check if your LinkedIn profile aligns with the algorithm",
//                     image: "assets/11.png",
//                     gradient: [
//                       const Color.fromARGB(255, 139, 126, 1),
//                       const Color.fromARGB(255, 79, 71, 1),
//                     ],
//                   ),
//                   SizedBox(height: height * 0.03),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget buildCard({
//     required String title,
//     required String subtitle,
//     required String description,
//     required String image,
//     required List<Color> gradient,
//   }) {
//     double width = MediaQuery.of(context).size.width;
//     double height = MediaQuery.of(context).size.height;

//     return Container(
//       width: width * 0.9,
//       height: height * 0.25,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(10.0),
//         gradient: LinearGradient(colors: gradient),
//       ),
//       child: Row(
//         children: [
//           Padding(
//             padding: EdgeInsets.all(width * 0.03),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   title,
//                   style: GoogleFonts.quicksand(
//                     color: Colors.white,
//                     fontSize: width * 0.05,
//                     fontWeight: FontWeight.w300,
//                   ),
//                 ),
//                 Text(
//                   subtitle,
//                   style: GoogleFonts.quicksand(
//                     color: Colors.white,
//                     fontSize: width * 0.05,
//                     fontWeight: FontWeight.w600,
//                   ),
//                 ),
//                 Container(
//                   width: width * 0.4,
//                   child: Text(
//                     description,
//                     style: GoogleFonts.quicksand(
//                       color: Colors.white,
//                       fontSize: width * 0.035,
//                       fontWeight: FontWeight.w200,
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: height * 0.01),
//                 GestureDetector(
//                   child: Container(
//                     width: width * 0.23,
//                     height: height * 0.05,
//                     decoration: BoxDecoration(
//                       color: Colors.black,
//                       borderRadius: BorderRadius.circular(17.0),
//                     ),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Text(
//                           " Analyse",
//                           style: TextStyle(
//                               color: Colors.white, fontSize: width * 0.04),
//                         ),
//                         Icon(
//                           Icons.arrow_forward,
//                           color: Colors.white,
//                           size: width * 0.04,
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           const Spacer(),
//           Image.asset(image, height: height * 0.15, width: width * 0.3),
//         ],
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const ResumeAnalyse());
}

class ResumeAnalyse extends StatelessWidget {
  const ResumeAnalyse({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Resumes(),
    );
  }
}

class Resumes extends StatefulWidget {
  const Resumes({super.key});

  @override
  State createState() => ResumeScreen();
}

class ResumeScreen extends State<Resumes> {
  List<List<Color>> gradientCards = [
    [
      const Color.fromARGB(255, 6, 98, 173),
      const Color.fromARGB(255, 4, 61, 107)
    ],
    [const Color.fromARGB(255, 3, 116, 44), const Color.fromARGB(255, 1, 37, 2)]
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        children: [
          Container(
            height: size.height * 0.25,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 2, 81, 33),
                  Color.fromARGB(255, 1, 40, 2),
                ],
              ),
            ),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: size.height * 0.15,
                      left: size.width * 0.03,
                      right: size.width * 0.05),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Build/Analyse",
                        style: GoogleFonts.quicksand(
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: size.width * 0.075,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      Text(
                        "Resumes✨",
                        style: GoogleFonts.quicksand(
                          color: Colors.white,
                          fontSize: size.width * 0.075,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                Image.asset("assets/img3.png",
                    height: size.height * 0.2, width: size.width * 0.4),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: size.height * 0.03),
                  _buildCard(
                    size,
                    title1: "Let's build a",
                    title2: "Standard Resume",
                    description:
                        "Just provide your professional info and build a resume within seconds",
                    imagePath: "assets/123.png",
                    gradient: [
                      const Color.fromARGB(255, 6, 98, 173),
                      const Color.fromARGB(255, 2, 46, 82)
                    ],
                    buttonText: "Create",
                  ),
                  SizedBox(height: size.height * 0.02),
                  _buildCard(
                    size,
                    title1: "Let's analyse a",
                    title2: "Your Resume",
                    description:
                        "Upload your resume and find if you pass basic and advanced checks",
                    imagePath: "assets/1.png",
                    gradient: [
                      const Color.fromARGB(255, 4, 148, 8),
                      const Color.fromARGB(255, 3, 107, 6)
                    ],
                    buttonText: "Analyse",
                  ),
                  SizedBox(height: size.height * 0.02),
                  _buildCard(
                    size,
                    title1: "Let's analyse your",
                    title2: "LinkedIn Profile",
                    description:
                        "Check if your LinkedIn profile aligns with the algorithm",
                    imagePath: "assets/11.png",
                    gradient: [
                      const Color.fromARGB(255, 139, 126, 1),
                      const Color.fromARGB(255, 79, 71, 1)
                    ],
                    buttonText: "Analyse",
                  ),
                  SizedBox(height: size.height * 0.02),
                  GestureDetector(
                    child: Container(
                      width: size.width * 0.3,
                      height: size.height * 0.07,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.black,
                      ),
                      child: Center(
                        child: Text(
                          "Back",
                          style: GoogleFonts.quicksand(
                            textStyle: TextStyle(
                                fontSize: size.width * 0.05,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: size.height * 0.03),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildCard(Size size,
      {required String title1,
      required String title2,
      required String description,
      required String imagePath,
      required List<Color> gradient,
      required String buttonText}) {
    return Container(
      width: size.width * 0.9,
      height: size.height * 0.25,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        gradient: LinearGradient(colors: gradient),
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.all(size.width * 0.03),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title1,
                  style: GoogleFonts.quicksand(
                    color: Colors.white,
                    fontSize: size.width * 0.05,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                Text(
                  title2,
                  style: GoogleFonts.quicksand(
                    color: Colors.white,
                    fontSize: size.width * 0.05,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  width: size.width * 0.4,
                  child: Text(
                    description,
                    style: GoogleFonts.quicksand(
                      color: Colors.white,
                      fontSize: size.width * 0.035,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.01),
                GestureDetector(
                  child: Container(
                    width: size.width * 0.25,
                    height: size.height * 0.04,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(17.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          " $buttonText",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: size.width * 0.04,
                          ),
                        ),
                        SizedBox(width: size.width * 0.02),
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                          size: size.width * 0.04,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: size.width * 0.05),
          Image.asset(imagePath, height: size.height * 0.15, width: size.width * 0.35),
        ],
      ),
    );
  }
}