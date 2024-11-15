class Transaction {
  final int transactorId;
  final String transactorFirstName;
  final String? transactorImage;
  final String transactorLastName;
  final String date;
  final double amount;
  final bool isIncome;

  Transaction(
      {this.transactorImage,
      required this.transactorId,
      required this.transactorFirstName,
      required this.transactorLastName,
      required this.date,
      required this.amount,
      required this.isIncome});
}
