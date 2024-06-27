import 'package:flutter/material.dart';

class MessageTile extends StatelessWidget {
  const MessageTile({
    super.key,
    required this.messageType,
    required this.message,
    required this.name,
  });

  final String messageType;
  final String message;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 14, right: 14, top: 10, bottom: 10),
      child: Align(
        alignment: (messageType == "receiver"
            ? Alignment.topLeft
            : Alignment.topRight),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: (messageType == "receiver"
                ? const Color(0xFF383838)
                : Colors.blueAccent),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              messageType == "receiver"
                  ? Text(
                      name,
                      style: const TextStyle(
                        fontSize: 13.5,
                        color: Color.fromARGB(255, 208, 209, 209),
                      ),
                    )
                  : const SizedBox(),
              Text(
                message,
                style: const TextStyle(fontSize: 14),
              )
            ],
          ),
        ),
      ),
    );
  }
}
