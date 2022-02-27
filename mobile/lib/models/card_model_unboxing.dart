class CardModelUnboxing {
  String ? cardTitle;
  String ? cardName;
  String ? cardAvatar;
  String ? cardBackground;

  CardModelUnboxing(this.cardTitle, this.cardName, this.cardAvatar, this.cardBackground,);
}

List<CardModelUnboxing> cardsUnboxing = cardDataUnboxing.map(
  (item) => CardModelUnboxing(
    item['cardTitle'],
    item['cardName'],
    item['cardAvatar'],
    item['cardBackground'],
  ),
).toList();

var cardDataUnboxing = [
  {
    "cardTitle": "Kiat-kiat Menjadi\nPenulis Kreatif ala\nRaditya Dika",
    "cardName": "Raditya Dika",
    "cardAvatar": "assets/images/avatar_raditya_1.png",
    "cardBackground": "assets/images/card_cover_yellow.png",
  },
  {
    "cardTitle": "Perkenalan Terhadap\nSocial Media Marketing",
    "cardName": "Putri Tanjung",
    "cardAvatar": "assets/images/avatar_gio.png",
    "cardBackground": "assets/images/card_cover_blue.png",
  },
];