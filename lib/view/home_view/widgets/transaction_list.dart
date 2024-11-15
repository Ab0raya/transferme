import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:transferme/utils/size_config.dart';
import 'package:transferme/view/home_view/widgets/transaction_card.dart';
import '../../../model/transaction_model.dart';

class TransactionList extends StatelessWidget {
  const TransactionList({
    super.key,
    required this.transactions,
  });

  final List<Transaction> transactions;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: screenWidth(context),
      height: screenHeight(context) * 0.3,
      child: ListView.builder(
        itemCount: transactions.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return TransactionCard(
            amount: transactions[index].amount,
            date: transactions[index].date,
            fName: transactions[index].transactorFirstName,
            isIncome: transactions[index].isIncome,
            lName: transactions[index].transactorLastName,
            photo: transactions[index].transactorImage ?? "",
          );
        },
      ),
    );
  }
}
