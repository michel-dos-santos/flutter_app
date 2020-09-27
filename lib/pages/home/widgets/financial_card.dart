import 'dart:ui';

import 'package:flutter/material.dart';

class FinancialCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              child: Row(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Row(
                              children: [
                                Icon(Icons.account_balance_wallet),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Financeiro',
                                  style: TextStyle(
                                    color: Colors.grey[600],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: SizedBox(
                              width: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'DESPESA',
                                    style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text.rich(
                                    TextSpan(
                                      text: 'R\$ ',
                                      children: [
                                        TextSpan(
                                          text: '600',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        TextSpan(
                                          text: ',',
                                        ),
                                        TextSpan(
                                          text: '00',
                                        ),
                                      ],
                                    ),
                                    style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 30,
                                    ),
                                  ),
                                  Text.rich(
                                    TextSpan(
                                      text: 'Informação atualizada em: ',
                                      children: [
                                        TextSpan(
                                          text: '10/12/2020',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.red[400],
                                          ),
                                        ),
                                      ],
                                    ),
                                    style: TextStyle(
                                      color: Colors.grey[600],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: SizedBox(
                              width: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'RECEITA',
                                    style: TextStyle(
                                      color: Colors.teal,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text.rich(
                                    TextSpan(
                                      text: 'R\$ ',
                                      children: [
                                        TextSpan(
                                          text: '1105',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        TextSpan(
                                          text: ',',
                                        ),
                                        TextSpan(
                                          text: '00',
                                        ),
                                      ],
                                    ),
                                    style: TextStyle(
                                      color: Colors.teal,
                                      fontSize: 30,
                                    ),
                                  ),
                                  Text.rich(
                                    TextSpan(
                                      text: 'Informação atualizada em: ',
                                      children: [
                                        TextSpan(
                                          text: '10/12/2020',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.teal[400],
                                          ),
                                        ),
                                      ],
                                    ),
                                    style: TextStyle(
                                      color: Colors.grey[600],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Container(
                            color: Colors.red,
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: Container(
                            color: Colors.teal,
                          ),
                        ),
                      ],
                    ),
                    width: 10,
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(10),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.grey[200],
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Text(
                        'Condomínio vence no dia 08/12/2020, quem pagar hoje receberá desconto.',
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
