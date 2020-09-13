import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  final bool isShowMenu;
  final VoidCallback onTap;

  const MyAppBar({Key key, this.isShowMenu, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).padding.top,
        ),
        GestureDetector(
          onTap: onTap,
          child: Container(
            color: Theme.of(context).primaryColor,
            height: MediaQuery.of(context).size.height * .27,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                          "https://lh3.googleusercontent.com/-dcJRJw1MW7g/X05_ZKRrTkI/AAAAAAAAB-g/ri7tHysBakAMZFq86KhhQpnr6erS_xkZwCEwYBhgLKtQDAL1Ocqwuczm2UcW-5F-oUydghWL8g9qEhyCugQn6_dq_Vsq47_0H7IwyDu8x5nn8rVeF2axUwvOb5YhP3wAh-VBMNYuOtYunqfsCaofCgVynF9QYQkCtTxdx5CY0ilSDoCvIbiuGDCwSgw9qXk7dUpmcurDmunxZFq_HOxIvEnA0St2GFIja_KXz3qCpZkw3RUzazcwFJCmHQ5FlV38nGeOMVRWvi8Dn4uBVNzr4KrwvJocY4O-BhIZ5jK04ML2jMCqAsYLi2DmVjO9AF57oeHxPpHT8njqhAyEGGrC-oyFu5Sbc2bV8plSp-rWrMRfbF1ULG-yd2R81Pth8_HAgJBfCjcPUACI4poLOKjuZ3sI5_MIcmR2QjJraUNuiHtCyN_hPedk6jxbjkYNcO3I6zTMxHJQdcbkLsyl9OjR9SYws3suaBvCb0NmvbA3cnYCoBKE4htscAlb4MkEi0BiHUGpdG7qoU3sPmi5ZMm-PJxzFRzVJ_umcoDMy2FPCx96dSpHayDaRcsTGaJdFQryguJi4ZuIgQNySzHdvThMBk_Xk1f3JV_IiM2DhfA2YAMwiJLgOPrTWwslvZ4uQ6Gh04DukY_dQBQatqXJDnD1JNb_yRhyoMNye6_oF/w140-h140-p/2020-09-01.jpg"),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Michel dos Santos',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white),
                    ),
                    Icon(
                      isShowMenu ? Icons.expand_less : Icons.expand_more,
                      color: Colors.white,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
