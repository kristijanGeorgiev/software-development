import 'package:flutter/material.dart';
import 'models/dinosaur.dart';
import 'models/species.dart';
const DUMMY_SPECIES = const [
  Species(
    id: 's1',
    title: 'Carnivores',
    color: Colors.purple,
  ),
  Species(
    id: 's2',
    title: 'Herbivores',
    color: Colors.red,
  ),
  Species(
    id: 's3',
    title: 'Birds',
    color: Colors.orange,
  ),
  Species(
    id: 's4',
    title: 'Aquatics',
    color: Colors.amber,
  ),
];
const DUMMY_DINOSAURS = const [
  Dinosaur(
      id: '1',
      species: [
        's1',
      ],
      name: 'Spinosaurus',
      imageUrl: 'https://media.istockphoto.com/id/474704765/photo/dinosaur-spinosaurus.jpg?s=612x612&w=0&k=20&c=sbajFSerL2FT51lUISt0f3C8u0IZvnDywkCjDC1NSKo=',
      speed: 120,
      weight: 300,
      length: 230,
      height: 400,
      width: 210,
      description: 'Spinosaurus is a genus of large spinosaurid theropod dinosaurs that lived in what now is North Africa during the Cenomanian stage of the Late Cretaceous period, about 100 to 94 million years ago. The genus was known first from Egyptian remains discovered in 1912 and described by German palaeontologist Ernst Stromer in 1915. The original remains were destroyed in World War II, but additional material came to light in the early 21st century. It is unclear whether one or two species are represented in the fossils reported in the scientific literature. The type species S. aegyptiacus is mainly known from Egypt and Morocco.'
  ),
  Dinosaur(
    id: '2',
    species: [
      's2'
    ],
    name: 'Ankylosaurus',
    imageUrl: 'https://www.hoo-zoo.com/wp-content/uploads/2022/10/Ankylosaurus-magniventris-1600x909-1-1200x682.jpeg',
    speed: 145,
    weight: 200,
    length: 412,
    height: 230,
    width: 300,
    description: 'Ankylosaurus is a genus of armored dinosaur. Its fossils have been found in geological formations dating to the very end of the Cretaceous Period, about 68–66 million years ago, in western North America, making it among the last of the non-avian dinosaurs. It was named by Barnum Brown in 1908; it is monotypic, containing only A. magniventris. The generic name means "fused" or "bent lizard", and the specific name means "great belly". A handful of specimens have been excavated to date, but a complete skeleton has not been discovered. Though other members of Ankylosauria are represented by more extensive fossil material, Ankylosaurus is often considered the archetypal member of its group, despite having some unusual features.',
  ),
  Dinosaur(
      id: '3',
      species: [
        's3',
      ],
      name: 'Pteranodon',
      imageUrl: 'https://cdn.mos.cms.futurecdn.net/6vA8wWskCkUgffN9dbQhvh-1200-80.jpg',
      speed: 210,
      weight: 300,
      length: 140,
      height: 216,
      width: 190,
      description: 'Pteranodon is part of the family Pteranodontidae, part of the clade Pteranodontia, which also includes nyctosaurids. Pteranodontians form a larger clade, Pteranodontoidea, alongside ornithocheiromorphs, and that clade falls under the suborder Pterodactyloidea. While not dinosaurs, pterosaurs such as Pteranodon form a clade closely related to dinosaurs as both fall within the clade Avemetatarsalia.'
  ),
  Dinosaur(
    id: '4',
    species: [
      's4',
    ],
    name: 'Kronosaurus',
    imageUrl: 'https://images.dinosaurpictures.org/Kronosaurus_54c4.jpg',
    speed: 190,
    weight: 300,
    length: 210,
    height: 460,
    width: 150,
    description: 'Kronosaurus is an extinct genus of large short-necked pliosaur that lived during the Aptian to Albian stages of the Early Cretaceous in what is now Australia. The first known specimen was received in 1899 and consists of a partially preserved mandibular symphysis, which was first thought to come from an ichthyosaur according to Charles De Vis. However, it was 1924 that Albert Heber Longman formally described this specimen as the holotype of an imposing pliosaurid, to which he gave the scientific name K. queenslandicus, which is still the only recognized species nowadays. The genus name, meaning "lizard of Kronos", refers to its large size and possible ferocity reminiscent of the Titan of the Greek mythology, while the species name alludes to Queensland, the Australian state of its discovery. In the early 1930s, the Harvard Museum of Comparative Zoology sent an organized expedition to Australia that recovered two specimens historically attributed to the taxon, including a well known skeleton that is now massively restored in plaster.',
  ),
];