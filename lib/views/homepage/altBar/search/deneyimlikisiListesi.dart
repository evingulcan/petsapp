

class DeneyimliKisiListesi{
  final String image,adsoyad ,evcil_hayvan,deneyimleri,cinsi;
  final int id,telefon;

  DeneyimliKisiListesi({this.image, this.adsoyad, this.evcil_hayvan, this.deneyimleri, this.id,this.telefon,this.cinsi
    });
}

List<DeneyimliKisiListesi> kisiler = [

  DeneyimliKisiListesi(
    id: 1,
    adsoyad: "Umut Yıldız",
    telefon: 54677828899,
    evcil_hayvan: "Köpek",
    cinsi: "",
    deneyimleri:"6 yıl",
    image: "assets/images/person3.png",
  ),
  DeneyimliKisiListesi(
    id: 2,
    adsoyad: "Nurhak Sağır",
    telefon: 54677833399,
    evcil_hayvan: "Köpek",
    cinsi: "Golden Retriever",
    deneyimleri:"5 yıl",
    image:  "assets/images/person2.png",
  ),
  DeneyimliKisiListesi(
    id: 3,
    adsoyad: "Erkan Yeşersin",
    telefon: 505677828899,
    evcil_hayvan: "Kedi",
    cinsi: "Monks Kedisi",
    deneyimleri:"3 yıl",
    image:  "assets/images/person5.png",
  ),
  DeneyimliKisiListesi(
    id: 4,
    adsoyad: "Ahmet Kaş",
    telefon: 54677820012,
    evcil_hayvan: "Konu",
    cinsi: "",
    deneyimleri:"1 yıl",
    image:  "assets/images/person3.png",
  ),
];