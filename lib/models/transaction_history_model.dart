
class TransactionHistoryModel {
  final String title,date,price;
  final bool isWithdrawal;
  TransactionHistoryModel(this.isWithdrawal, {required this.title, required this.date, required this.price});
}