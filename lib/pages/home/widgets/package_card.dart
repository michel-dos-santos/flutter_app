import 'dart:ui';
import 'package:flutter/material.dart';

class PackageCard extends StatelessWidget {
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
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 35, left: 20, bottom: 20, right: 20),
                          child: Row(
                            children: [
                              Icon(Icons.card_giftcard),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Encomendas',
                                style: TextStyle(
                                  color: Colors.grey[600],
                                ),
                              )
                            ],
                          ),
                        ),
                        Center(
                          heightFactor: 1,
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Column(
                              children: [
                                Icon(
                                  Icons.card_giftcard,
                                  size: MediaQuery.of(context).size.height * 0.15,
                                ),
                                Text(
                                  'Tem uma encomenda pra você aqui na portaria',
                                  textAlign: TextAlign.center,
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
