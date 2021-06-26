import 'package:flutter/material.dart';

class OnBoardingInstructions {
  final String image, title, subtitle;

  OnBoardingInstructions(this.image, this.title, this.subtitle);
}

class MyColors {
  static const grey = Color(0xfff3f3f3),
      orange = Color(0xffffb755),
      red = Color(0xffed5568),
      lightGreen = Color(0xffdbf3e8),
      darkGreen = Color(0xff4ac18e),
      blue = Color(0xff40beee);
}

class VeterinerInfo {
  final String name,
      image,
      type,
      reviewCount,
      about,
      workingHours,
      patientsCount,
      experience,
      mobile,
      certifications;
  final double reviews;

  VeterinerInfo({
    this.name,
    this.image,
    this.type,
    this.reviews,
    this.reviewCount,
    this.about,
    this.mobile,
    this.workingHours,
    this.patientsCount,
    this.experience,
    this.certifications,
  });
}

List<VeterinerInfo> veterinerInfo = [
  VeterinerInfo(
    image:
    "https://image.freepik.com/vecteurs-libre/contexte-du-docteur_1270-84.jpg",
    about:
    "Incidunt placeat eos magni quas quam in dignissimos. Asperiores porro distinctio nemo excepturi labore?",
    certifications: "10",
    experience: "15",
    name: "Dr Halime Baktaş",
    patientsCount: "385",
    reviewCount: "1000",
    reviews: 4.3,
    mobile: "054378998237",
  //  type: "General Practitioner",
    workingHours: "Mon - Fri 09:00 - 17:00",
  ),
  VeterinerInfo(
    image:
    "https://image.freepik.com/vecteurs-libre/contexte-du-docteur_1270-84.jpg",
    about:
    "Incidunt placeat eos magni quas quam in dignissimos. Asperiores porro distinctio nemo excepturi labore?",
    certifications: "5",
    experience: "7",
    name: "Dr Mehmet Aslan",
    patientsCount: "200",
    reviewCount: "1500",
    mobile: "054378998237",
    reviews: 4.3,
   // type: "General Practitioner",
    workingHours: "Mon - Fri 09:00 - 17:00",
  ),
  VeterinerInfo(
    image:
    "https://image.freepik.com/vecteurs-libre/contexte-du-docteur_1270-84.jpg",
    about:
    "Incidunt placeat eos magni quas quam in dignissimos. Asperiores porro distinctio nemo excepturi labore?",
    certifications: "4",
    experience: "10",
    name: "Dr Furkan Temel",
    patientsCount: "300",
    mobile: "054378998237",
    reviewCount: "1320",
    reviews: 4.3,
  //  type: "General Practitioner",
    workingHours: "Mon - Fri 09:00 - 17:00",
  ),
];



