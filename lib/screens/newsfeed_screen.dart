import 'package:lagan_mobprog/widget/post_card.dart';
import 'package:material_ui/material_ui.dart';

class NewsfeedScreen extends StatelessWidget {
  const NewsfeedScreen({super.key});

  final List<Map<String, dynamic>> posts = const [
    {
      'userName': 'Victor Von Doom',
      'postContent': 'Hell answer to me! for I am DOOM!',
      'date': 'Yesterday at 4:32 PM',
      'numOfLikes': 3000,
      'avatarImage': 'https://i.redd.it/vxjoya9vcd841.jpg',
      'postImage': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAgfnp9AI5_V_UIDDu-XhM76DL7HXv20APlJQklmPpeqD4M1pZirAIQdQ&s=10',
    },
    {
      'userName': 'Steve Rogers',
      'postContent': 'I can do this all day! #AvengersAssemble',
      'date': '2 hours ago',
      'numOfLikes': 10,
      'avatarImage': 'https://api.dicebear.com/9.x/avataaars/png?seed=Steve',
      'postImage': 'https://picsum.photos/seed/steve/600/400',
    },
    {
      'userName': 'Victor Von Doom',
      'postContent': 'Hell answer to me! for I am DOOM!',
      'date': 'Yesterday at 4:32 PM',
      'numOfLikes': 3000,
      'avatarImage': 'https://i.redd.it/vxjoya9vcd841.jpg',
      'postImage': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAgfnp9AI5_V_UIDDu-XhM76DL7HXv20APlJQklmPpeqD4M1pZirAIQdQ&s=10',
    },
    {
      'userName': 'Natasha Romanoff',
      'postContent': 'Quiet morning, strong coffee, and a clear plan.',
      'date': 'Today at 8:15 AM',
      'numOfLikes': 248,
      'avatarImage': 'https://api.dicebear.com/9.x/avataaars/png?seed=Natasha',
      'postImage': 'https://picsum.photos/seed/natasha/600/400',
    },
    {
      'userName': 'Bruce Banner',
      'postContent': 'Finally got the greenhouse up and running!',
      'date': 'Monday at 11:06 AM',
      'numOfLikes': 517,
      'avatarImage': 'https://api.dicebear.com/9.x/avataaars/png?seed=Bruce',
      'postImage': 'https://picsum.photos/seed/bruce/600/400',
    },
    {
      'userName': 'Thor Odinson',
      'postContent': 'The feast was worthy of Asgard.',
      'date': 'Sunday at 7:40 PM',
      'numOfLikes': 1284,
      'avatarImage': 'https://api.dicebear.com/9.x/avataaars/png?seed=Thor',
      'postImage': 'https://picsum.photos/seed/thor/600/400',
    },
    {
      'userName': 'Wanda Maximoff',
      'postContent': 'Making time for the little things today.',
      'date': 'Saturday at 2:18 PM',
      'numOfLikes': 932,
      'avatarImage': 'https://api.dicebear.com/9.x/avataaars/png?seed=Wanda',
      'postImage': 'https://picsum.photos/seed/wanda/600/400',
    },
    {
      'userName': 'Peter Parker',
      'postContent': 'Queens looks pretty great from up here.',
      'date': 'Friday at 5:55 PM',
      'numOfLikes': 76,
      'avatarImage': 'https://api.dicebear.com/9.x/avataaars/png?seed=Peter',
      'postImage': 'https://picsum.photos/seed/peter/600/400',
    },
    {
      'userName': 'Clint Barton',
      'postContent': 'A perfect afternoon at the range.',
      'date': 'Thursday at 3:27 PM',
      'numOfLikes': 364,
      'avatarImage': 'https://api.dicebear.com/9.x/avataaars/png?seed=Clint',
      'postImage': 'https://picsum.photos/seed/clint/600/400',
    },
    {
      'userName': 'Sam Wilson',
      'postContent': 'Nothing beats a sunrise flight.',
      'date': 'Wednesday at 6:02 AM',
      'numOfLikes': 681,
      'avatarImage': 'https://api.dicebear.com/9.x/avataaars/png?seed=Sam',
      'postImage': 'https://picsum.photos/seed/sam/600/400',
    },
    {
      'userName': 'Carol Danvers',
      'postContent': 'Checking in from somewhere far beyond the clouds.',
      'date': 'Tuesday at 9:13 PM',
      'numOfLikes': 2045,
      'avatarImage': 'https://api.dicebear.com/9.x/avataaars/png?seed=Carol',
      'postImage': 'https://picsum.photos/seed/carol/600/400',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: posts.length,
      itemBuilder: (context, index) {
        return PostCard(
          userName: posts[index]['userName'],
          postContent: posts[index]['postContent'],
          date: posts[index]['date'],
          numOfLikes: posts[index]['numOfLikes'],
          avatarImage: posts[index]['avatarImage'],
          postImage: posts[index]['postImage'],
        );
      },
    );
  }
}
