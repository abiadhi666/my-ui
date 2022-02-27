class CardModelTrending {
  String ? cardTitle;
  String ? cardName;
  String ? cardNameColor;
  String ? cardAvatar;
  String ? cardBackground;

  CardModelTrending(this.cardTitle, this.cardName, this.cardNameColor, this.cardAvatar,
      this.cardBackground,);
}

List<CardModelTrending> cardsTrending = cardDataTrending.map(
  (item) => CardModelTrending(
    item['cardTitle'],
    item['cardName'],
    item['cardNameColor'],
    item['cardAvatar'],
    item['cardBackground'],
  ),
).toList();

var cardDataTrending = [
  {
    "cardTitle": "Menjelajahi Arti\nSebagai Seorang\nPemimpin Muda",
    "cardName": "Putri Tanjung",
    "cardNameColor": "kWhite",
    "cardAvatar": "assets/images/avatar_putri.png",
    "cardBackground": "assets/images/card_cover_blue.png",
  },
  {
    "cardTitle": "Kiat-kiat Menjadi\nPenulis Kreatif ala\nRaditya Dika",
    "cardName": "Raditya Dika",
    "cardNameColor": "kTextBlack",
    "cardAvatar": "assets/images/avatar_raditya_1.png",
    "cardBackground": "assets/images/card_cover_yellow.png",
  },
];