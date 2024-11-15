import 'package:flutter/material.dart';
import 'package:transferme/utils/size_config.dart';
import 'package:transferme/view/home_view/widgets/side_title.dart';
import 'package:transferme/view/home_view/widgets/transaction_list.dart';
import '../../../model/transaction_model.dart';
import 'balance_section.dart';
import 'cards_list.dart';
import 'home_appbar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HomeAppbar(),
          (screenHeight(context) * 0.05).sh,
          const BalanceSection(
            currentBalance: 285856.20,
          ),
          (screenHeight(context) * 0.03).sh,
          const CardsList(),
          SideTitle(
            title: 'Income Transaction',
            actionText: 'See All',
            onPressActionText: () {},
          ),
          TransactionList(
            transactions: [
              Transaction(
                amount: 222,
                transactorId: 1,
                transactorFirstName: 'Ahmed',
                transactorLastName: "ALi",
                date: '22 Decamber 2004',
                isIncome: true,
              ),
              Transaction(
                amount: 222,
                transactorId: 1,
                transactorFirstName: 'Sami',
                transactorLastName: "slah",
                date: '22 Decamber 2004',
                isIncome: true,
              ),
              Transaction(
                amount: 222,
                transactorId: 1,
                transactorFirstName: 'asd',
                transactorLastName: "asdasd",
                date: '22 Decamber 2004',
                isIncome: true,
              ),
              Transaction(
                amount: 222,
                transactorId: 1,
                transactorFirstName: 'Nagi',
                transactorLastName: "Ata",
                date: '22 Decamber 2004',
                isIncome: true,
              ),
            ],
          ),
          SideTitle(
            title: 'Outing Transaction',
            actionText: 'See All',
            onPressActionText: () {},
          ),
          TransactionList(
            transactions: [
              Transaction(
                amount: 222,
                transactorId: 1,
                transactorFirstName: 'Ahmed',
                transactorLastName: "ALi",
                date: '22 Decamber 2004',
                isIncome: false,
              ),
              Transaction(
                amount: 222,
                transactorId: 1,
                transactorFirstName: 'Sami',
                transactorLastName: "slah",
                date: '22 Decamber 2004',
                isIncome: false,
              ),
              Transaction(
                amount: 222,
                transactorId: 1,
                transactorFirstName: 'asd',
                transactorLastName: "asdasd",
                date: '22 Decamber 2004',
                isIncome: false,
              ),
              Transaction(
                amount: 222,
                transactorId: 1,
                transactorFirstName: 'Nagi',
                transactorLastName: "Ata",
                date: '22 Decamber 2004',
                isIncome: false,
              ),
            ],
          ),
          (screenHeight(context) * 0.1).sh,
        ],
      ),
    ));
  }
}
