import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_whatsapp_clone/common/enums/message_enum.dart';
import 'package:flutter_whatsapp_clone/features/auth/controller/auth_controller.dart';

import 'package:flutter_whatsapp_clone/features/chat/repositories/chat_repository.dart';

import '../../../common/providers/message_reply_provider.dart';
import '../../../models/chat_contact.dart';
import '../../../models/message.dart';

final chatControllerProvider = Provider((ref) {
  final chatRepository = ref.watch(chatRepositoryProvider);
  return ChatController(
    chatRepository: chatRepository,
    ref: ref,
  );
});

class ChatController {
  final ChatRepository chatRepository;
  final ProviderRef ref;
  ChatController({
    required this.chatRepository,
    required this.ref,
  });

  Stream<List<ChatContact>> chatContacts() {
    return chatRepository.getChatContacts();
  }

  Stream<List<Message>> chatStream(String recieverUserId) {
    return chatRepository.getChatStream(recieverUserId);
  }

  void sendTextMessage(
    BuildContext context,
    String text,
    String recieverUserId,
  ) {
    final messageReply = ref.read(messageReplyProvider);
    ref.read(userDataAuthProvider).whenData(
          (value) => chatRepository.sendTextMessage(
            context: context,
            text: text,
            recieverUserId: recieverUserId,
            senderUser: value!,
            messageReply: messageReply,
          ),
        );
    ref.read(messageReplyProvider.state).update((state) => null);
  }

  void sendFileMessage(
    BuildContext context,
    File file,
    String recieverUserId,
    MessageEnum messageEnum,
  ) {
    final messageReply = ref.read(messageReplyProvider);
    ref.read(userDataAuthProvider).whenData((value) =>
        chatRepository.sendFileMessage(
            context: context,
            file: file,
            recieverUserId: recieverUserId,
            senderUserData: value!,
            ref: ref,
            messageEnum: messageEnum,
            messageReply: messageReply));
    ref.read(messageReplyProvider.state).update((state) => null);
  }

  void sendGIF(
    BuildContext context,
    String gifUrl,
    String recieverUserId,
  ) {
    final messageReply = ref.read(messageReplyProvider);
    int gifUrlPartIndex = gifUrl.lastIndexOf('-') + 1;
    String gifUrlPart = gifUrl.substring(gifUrlPartIndex);
    String newgifUrl = 'https://i.giphy.com/media/$gifUrlPart/200.gif';
    ref.read(userDataAuthProvider).whenData(
          (value) => chatRepository.sendGIF(
              context: context,
              gifUrl: newgifUrl,
              recieverUserId: recieverUserId,
              senderUser: value!,
              messageReply: messageReply),
        );
    ref.read(messageReplyProvider.state).update((state) => null);
  }

  void setChatMessageSeen(
      BuildContext context, String recieverUserId, String messageId) {
    chatRepository.setChatMessageSeen(context, recieverUserId, messageId);
  }
}
