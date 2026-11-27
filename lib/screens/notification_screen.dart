import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lagan_mobprog/widget/custom_info.dart';
import 'package:material_ui/material_ui.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  final List<Map<String, dynamic>> notifications = const [
    {
      'name': 'Victor Von Doom',
      'post': 'reacted to your post',
      'description': '5 minutes ago',
      'avatarImage': 'https://i.redd.it/vxjoya9vcd841.jpg',
    },
    {
      'name': 'Natasha Romanoff',
      'post': 'commented on your photo',
      'description': '20 minutes ago',
      'avatarImage': 'https://api.dicebear.com/9.x/avataaars/png?seed=Natasha',
    },
    {
      'name': 'Peter Parker',
      'post': 'sent you a friend request',
      'description': '1 hour ago',
      'avatarImage': 'https://api.dicebear.com/9.x/avataaars/png?seed=Peter',
    },
    {
      'name': 'Thor Odinson',
      'post': 'shared your post',
      'description': '3 hours ago',
      'avatarImage': 'https://api.dicebear.com/9.x/avataaars/png?seed=Thor',
    },
    {
      'name': 'Wanda Maximoff',
      'post': 'mentioned you in a comment',
      'description': 'Today at 9:40 AM',
      'avatarImage': 'https://api.dicebear.com/9.x/avataaars/png?seed=Wanda',
    },
    {
      'name': 'Bruce Banner',
      'post': 'liked your comment',
      'description': 'Yesterday at 6:15 PM',
      'avatarImage': 'https://api.dicebear.com/9.x/avataaars/png?seed=Bruce',
    },
    {
      'name': 'Steve Rogers',
      'post': 'invited you to an event',
      'description': 'Yesterday at 2:30 PM',
      'avatarImage': 'https://api.dicebear.com/9.x/avataaars/png?seed=Steve',
    },
    {
      'name': 'Sam Wilson',
      'post': 'posted a new photo',
      'description': 'Monday at 7:05 AM',
      'avatarImage': 'https://api.dicebear.com/9.x/avataaars/png?seed=Sam',
    },
    {
      'name': 'Clint Barton',
      'post': 'tagged you in a post',
      'description': 'Sunday at 4:50 PM',
      'avatarImage': 'https://api.dicebear.com/9.x/avataaars/png?seed=Clint',
    },
    {
      'name': 'Carol Danvers',
      'post': 'accepted your friend request',
      'description': 'Saturday at 10:12 PM',
      'avatarImage': 'https://api.dicebear.com/9.x/avataaars/png?seed=Carol',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: notifications.length,
      itemBuilder: (context, index) {
        return Container(
          color: Colors.white,
          width: ScreenUtil().screenWidth,
          child: Column(
            children: [
              CustomInfo(
                name: notifications[index]['name'],
                post: notifications[index]['post'],
                description: notifications[index]['description'],
                avatarImage: notifications[index]['avatarImage'],
              ),
              const Divider(),
            ],
          ),
        );
      },
    );
  }
}
