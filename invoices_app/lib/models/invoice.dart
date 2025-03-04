class Invoice {
  final String id;
  final String item;
  final int quantity;
  final int price;
  final DateTime date;
  Invoice({
    required this.id,
    required this.item,
    required this.quantity,
    required this.price,
    required this.date
});
}