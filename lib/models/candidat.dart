class Candidat {
  String image;
  String name;
  int number;
  String type;

  Candidat({
    required this.number,
    required this.image,
    required this.name,
    required this.type,
  });
}

var listCandidats = [
  Candidat(
    number: 1,
    image: "images/1.jpg",
    name: "Joseph K",
    type: "President",
  ),
  Candidat(
      number: 2,
      image: "images/2.jpg",
      name: "Christelle K",
      type: "President"),
  Candidat(
      number: 3, image: "images/3.jpg", name: "Masika K", type: "President"),
  Candidat(
      number: 4, image: "images/4.jpg", name: "Mulando K", type: "President"),
];

var listCandidatVices = [
  Candidat(
      number: 1,
      image: "images/a.jpg",
      name: "Darcis K",
      type: "President-Vice"),
  Candidat(
      number: 2,
      image: "images/b.jpg",
      name: "Christelle K",
      type: "President-Vice"),
];
