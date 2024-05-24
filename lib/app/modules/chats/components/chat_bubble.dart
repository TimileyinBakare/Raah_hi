import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:raah_hi/app/config/constants/color.dart';
import 'package:raah_hi/app/modules/chats/view/chat.dart';

class ChatBubble extends StatelessWidget {
  final Message message;
  final bool isSender;

  const ChatBubble({super.key, required this.message, required this.isSender});

  @override
  Widget build(BuildContext context) {
    final bg = isSender ? const Color(AppColor.primaryColor) : AppColor.white;
    final align = isSender ? CrossAxisAlignment.end : CrossAxisAlignment.start;
    final radius = isSender
        ? const BorderRadius.only(
            topLeft: Radius.circular(12.0),
            bottomLeft: Radius.circular(12.0),
            bottomRight: Radius.circular(12.0),
          )
        : const BorderRadius.only(
            topRight: Radius.circular(12.0),
            bottomLeft: Radius.circular(12.0),
            bottomRight: Radius.circular(12.0),
          );

    return Column(
      crossAxisAlignment: align,
      children: <Widget>[
        Container(
          margin: const EdgeInsets.symmetric(vertical: 5.0),
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
          decoration: BoxDecoration(
            color: bg,
            borderRadius: radius,
          ),
          child: Column(
            crossAxisAlignment: align,
            children: [
              Text(
                message.content,
                style: GoogleFonts.poppins(fontSize: 12.0),
              ),
              const SizedBox(height: 5.0),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    message.senderName,
                    style: GoogleFonts.poppins(fontSize: 8.0, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(width: 5.0),
                  Text(
                    message.time,
                    style: GoogleFonts.poppins(fontSize: 10.0, color: Color.fromARGB(255, 96, 90, 90)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
