class CardModelRencana {
  String ? cardTitle;
  String ? cardAvatar;
  String ? cardBackground;

  CardModelRencana(this.cardTitle, this.cardAvatar, this.cardBackground);
}

List<CardModelRencana> cardsRencana = cardDataRencana.map(
  (item) => CardModelRencana(
    item['cardTitle'],
    item['cardAvatar'],
    item['cardBackground'],
  ),
).toList();

var cardDataRencana = [
  {
    "cardTitle": "Menulis Kreatif dan\nTerstruktur agar Produk\nLaris di Pasaran",
    "cardAvatar": "assets/images/avatar_raditya.png",
    "cardBackground": "assets/images/card_cover_blue_1.png",
  },
  {
    "cardTitle": "Menulis Kreatif dan\nTerstruktur agar Produk\nLaris di Pasaran",
    "cardAvatar": "assets/images/avatar_raditya.png",
    "cardBackground": "assets/images/card_cover_blue_1.png",
  },
];