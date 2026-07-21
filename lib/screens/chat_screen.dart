import 'package:flutter/material.dart';

import '../models/chat_message.dart';
import '../widgets/chat_bubble.dart';
import '../widgets/chat_input.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _controller = TextEditingController();

  final List<ChatMessage> _messages = [
    ChatMessage(
      text: "👋 Hello Bhargavi! I'm your AI Study Assistant.",
      isUser: false,
    ),
    ChatMessage(
      text: "Ask me anything about studies, assignments, exams, or notes.",
      isUser: false,
    ),
  ];

  void _sendMessage() {
    if (_controller.text.trim().isEmpty) return;

    final userMessage = _controller.text.trim();

    setState(() {
      _messages.add(
        ChatMessage(
          text: userMessage,
          isUser: true,
        ),
      );
    });

    _controller.clear();

    // Temporary AI response
    Future.delayed(const Duration(milliseconds: 700), () {
      setState(() {
        _messages.add(
          ChatMessage(
            text:
                "🤖 This is a demo AI reply.\n\nSoon I'll answer using Gemini AI!",
            isUser: false,
          ),
        );
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),

      appBar: AppBar(
        title: const Text("CampusMind AI"),
        centerTitle: true,
      ),

      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(16),
                itemCount: _messages.length,
                itemBuilder: (context, index) {
                  return ChatBubble(
                    message: _messages[index].text,
                    isUser: _messages[index].isUser,
                  );
                },
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(16),
              child: ChatInput(
                controller: _controller,
                onSend: _sendMessage,
              ),
            ),
          ],
        ),
      ),
    );
  }
}