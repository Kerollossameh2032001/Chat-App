import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  var messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        title: Row(
          children: [
            const CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage('images/me.jpg'),
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Chat Name',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                ),
                Text(
                  '1 member',
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                )
              ],
            )
          ],
        ),
      ),
      body: Column(
        children: [
          const Spacer(),
          TextFormField(
            controller: messageController,
            cursorColor: Colors.orange,
            decoration: InputDecoration(
              hintText: 'Message',
              suffixIcon: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.done_outline,
                    color: Colors.orange,
                  )),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.orange,
                ),
              ),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
