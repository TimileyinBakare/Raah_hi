import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:raah_hi/app/config/constants/constant.dart';
import 'package:raah_hi/app/modules/chats/components/chat_bubble.dart';

class ChatScreen extends StatefulWidget {
  static const routeName = "chat";

  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final List<Message> messages = singleMessage;
    final List<Message> groupmess = groupMessages;



  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: Text(
            "Messages",
            style: GoogleFonts.poppins(),
          ),
          bottom:const TabBar(
            tabs: [
              Tab(text: "Chat"),
              Tab(text: "Group Chat"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            _buildChatTab(),
            _buildGroupChatTab(),
          ],
        ),
      ),
    );
  }

  Widget _buildChatTab() {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            padding: const EdgeInsets.all(20.0),
            itemCount: messages.length,
            itemBuilder: (context, index) {
              final message = messages[index];
              return ChatBubble(
                message: message,
                isSender: message.sender == "sender",
              );
            },
          ),
        ),
        _buildMessageComposer(),
      ],
    );
  }

  Widget _buildGroupChatTab() {
return Column(
      children: [
        Expanded(
          child: ListView.builder(
            padding: const EdgeInsets.all(20.0),
            itemCount: groupMessages.length,
            itemBuilder: (context, index) {
              final message = groupMessages[index];
              return ChatBubble(
                message: message,
                isSender: message.sender == "sender",
              );
            },
          ),
        ),
        _buildMessageComposer(),
      ],
    );
  }

  Widget _buildMessageComposer() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration.collapsed(
                hintText: "Send a message...",
                hintStyle: GoogleFonts.poppins(),
              ),
              textCapitalization: TextCapitalization.sentences,
            ),
          ),
          IconButton(
            icon: const Icon(Icons.send),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

class Message {
  final String content;
  final String sender;
  final String senderName;
  final String time;

  Message({
    required this.content,
    required this.sender,
    required this.senderName,
    required this.time,
  });
}
