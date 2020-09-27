import 'dart:ui';
import 'package:flutter/material.dart';

class MeetingsCard extends StatelessWidget {
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
                              Icon(Icons.meeting_room),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Reuniões',
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
                                  Icons.picture_as_pdf,
                                  size: MediaQuery.of(context).size.height * 0.15,
                                ),
                                Text(
                                  'Atas de Reuniões',
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
                        'Consulte sempre seus direitos e deveres.',
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
