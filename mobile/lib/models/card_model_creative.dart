class CardModelCreative {
  String ? cardTitle;
  String ? cardAvatar;
  String ? cardBackground;

  CardModelCreative(this.cardTitle, this.cardAvatar, this.cardBackground);
}

List<CardModelCreative> cardsCreative = cardDataCreative.map(
  (item) => CardModelCreative(
    item['cardTitle'],
    item['cardAvatar'],
    item['cardBackground'],
  ),
).toList();

var cardDataCreative = [
  {
    "cardTitle": "Strategi Pembuatan Film\nyang Menarik dan Cuan di\nIndonesia",
    "cardAvatar": "assets/images/avatar_joko.png",
    "cardBackground": "assets/images/card_cover_blue_1.png",
  },
  {
    "cardTitle": "Menarik Pelanggan untuk\nJatuh Cinta dengan\nProdukmu",
    "cardAvatar": "assets/images/avatar_koh.png",
    "cardBackground": "assets/images/card_cover_blue_1.png",
  },
];