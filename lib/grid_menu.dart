// ignore: file_names
class Menu {
  String image;
  String name;

  Menu({this.image = ' ', this.name = ' '});
}

var grid = [
  Menu(image: 'img-consultation.svg', name: 'Consultation'),
  Menu(image: 'img-dental.svg', name: 'Dental'),
  Menu(image: 'img-heart.svg', name: 'Heart'),
  Menu(image: 'img-hospital.svg', name: 'Hospitals'),
  Menu(image: 'img-medicine.svg', name: 'Medicines'),
  Menu(image: 'img-physician.svg', name: 'Physician'),
  Menu(image: 'img-skin.svg', name: 'Skin'),
  Menu(image: 'img-surgeon.svg', name: 'Surgeon')
];

class Doctors {
  String image;
  String name;
  String assigned;
  String reviewNum;
  String box;
  // ignore: non_constant_identifier_names
  String Description;

  bool isOpen;

  Doctors(
      {this.image = ' ',
      this.name = ' ',
      this.assigned = ' ',
      this.reviewNum = ' ',
      this.box = ' ',
      // ignore: non_constant_identifier_names
      this.Description = ' ',
      this.isOpen = false});
}

var doctors = [
  Doctors(
      image: 'img-men-01.png',
      name: 'Dr. Gilang Segara Bening',
      assigned: 'Heart  ·  Persahabatan Hospital',
      reviewNum: '(1221)',
      Description:
          ' dr. Gilang is one of the best doctors in the Persahabatan Hospital. He has saved more than 1000 patients in the past 3 years. He has also received many awards from domestic and abroad as the best doctors. He is available on a private or schedule. ',
      //box: 'Btn_Open.png',
      isOpen: true),
  Doctors(
      image: 'img-women-02.png',
      name: 'Dr. Shabil Chan',
      assigned: 'Dental  ·  Columbia Asia Hospital',
      reviewNum: '(964)',
      Description:
          ' Dr. Shabil Chan is one of the best doctors in the Columbia Asia Hospital. He has saved more than 1000 patients in the past 3 years. He has also received many awards from domestic and abroad as the best doctors. He is available on a private or schedule.',
      //box: 'Btn_Open.png',
      isOpen: true),
  Doctors(
      image: 'img-men-02.png',
      name: 'dr. Mustakim',
      assigned: 'Eye  ·  Salemba Carolus Hospital',
      reviewNum: '(762)',
      Description:
          ' Dr. Mustakim is one of the best doctors in the Salemba Carolus Hospital. He has saved more than 1000 patients in the past 3 years. He has also received many awards from domestic and abroad as the best doctors. He is available on a private or schedule.',
      //box: 'Btn_Closed.png',
      isOpen: true),
  Doctors(
      image: 'img-women-02.png',
      name: 'Dr. Suprihatini',
      assigned: 'Heart  ·  Salemba Carolus Hospital',
      reviewNum: '(762)',
      Description:
          ' Dr. Mustakim is one of the best doctors in the Salemba Carolus Hospital. He has saved more than 1000 patients in the past 3 years. He has also received many awards from domestic and abroad as the best doctors. He is available on a private or schedule.',
      //box: 'Btn_Closed.png',
      isOpen: true),
];
