class Organ {
  final String name;
  final String description;
  final String imageUrl;
  final bool availableInIndia; // New field
  final String medicalCentre; // New field

  Organ({
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.availableInIndia,
    required this.medicalCentre,
  });
}



List<Organ> fakeOrgans = [
  Organ(
    name: 'Heart',
    description: 'Pumps blood throughout the body.',
    imageUrl: 'assets/heart.png',
    availableInIndia: true,
    medicalCentre: 'Apollo Hospitals, Delhi',
  ),
  Organ(
    name: 'Liver',
    description: 'Processes nutrients and detoxifies chemicals.',
    imageUrl: 'assets/kidneyyy.png',
    availableInIndia: false,
    medicalCentre: 'N/A',
  ),
  Organ(
    name: 'Kidney',
    description: 'Filters blood and produces urine.',
    imageUrl: 'assets/kidney.png',
    availableInIndia: true,
    medicalCentre: 'Max Super Speciality Hospital, Delhi',
  ),
  Organ(
    name: 'Lung',
    description: 'Helps in respiration and oxygen exchange.',
    imageUrl: 'assets/lungs.jpeg',
    availableInIndia: true,
    medicalCentre: 'Fortis Hospital, Mumbai',
  ),
  Organ(
    name: 'Pancreas',
    description: 'Produces insulin and enzymes for digestion.',
    imageUrl: 'assets/Pancreas.png',
    availableInIndia: false,
    medicalCentre: 'N/A',
  ),
  Organ(
    name: 'Intestine',
    description: 'Digests and absorbs nutrients.',
    imageUrl: 'assets/Intestine.jpeg',
    availableInIndia: true,
    medicalCentre: 'Medanta - The Medicity, Gurgaon',
  ),
  Organ(
    name: 'Cornea',
    description: 'The transparent front part of the eye.',
    imageUrl: 'assets/Cornea.jpeg',
    availableInIndia: true,
    medicalCentre: 'Shroff Eye Hospital, Delhi',
  ),
  Organ(
    name: 'Skin',
    description: 'Protects and covers the body.',
    imageUrl: 'assets/Skin.jpeg',
    availableInIndia: true,
    medicalCentre: 'Dermatology Centre, Bangalore',
  ),
  Organ(
    name: 'Bone Marrow',
    description: 'Produces blood cells.',
    imageUrl: 'assets/Bone Marrow.jpeg',
    availableInIndia: true,
    medicalCentre: 'Tata Memorial Hospital, Mumbai',
  ),
  Organ(
    name: 'Thyroid',
    description: 'Regulates metabolism.',
    imageUrl: 'assets/Thyroid.png',
    availableInIndia: false,
    medicalCentre: 'N/A',
  ),
  // Add more organs as needed
];
