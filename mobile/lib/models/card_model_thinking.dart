class CardModelThinking {
  String ? cardTitle;
  String ? cardAvatar;
  String ? cardBackground;

  CardModelThinking(this.cardTitle, this.cardAvatar, this.cardBackground);
}

List<CardModelThinking> cardsThinking = cardDataThinking.map(
  (item) => CardModelThinking(
    item['cardTitle'],
    item['cardAvatar'],
    item['cardBackground'],
  ),
).toList();

var cardDataThinking = [
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