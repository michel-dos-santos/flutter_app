import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_app/pages/widgets/item_list.dart';

class UsefulPhonesCard extends StatelessWidget {
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
                              Icon(Icons.phone),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Telefones Úteis',
                                style: TextStyle(
                                  color: Colors.grey[600],
                                ),
                              )
                            ],
                          ),
                        ),
                        ItemList(
                          icon: Icons.phone_forwarded,
                          text: 'Portaria: 41',
                        ),
                        ItemList(
                          icon: Icons.phone_forwarded,
                          text: 'Síndico: (11) 91234-1234',
                        ),
                        ItemList(
                          icon: Icons.phone_forwarded,
                          text: 'Polícia: 190',
                        ),
                        ItemList(
                          icon: Icons.phone_forwarded,
                          text: 'Corpo de Bombeiros: 193',
                        ),
                        ItemList(
                          icon: Icons.phone_forwarded,
                          text: 'SAMU: 192',
                        ),
                        ItemList(
                          icon: Icons.phone_forwarded,
                          text: 'Disque Denúncia: 181',
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
