import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lagan_mobprog/constant.dart';
import 'package:lagan_mobprog/widget/custom_text.dart';
import 'package:material_ui/material_ui.dart';

class CustomInfo extends StatelessWidget {
  const CustomInfo({
    super.key,
    required this.name,
    required this.post,
    required this.description,
    this.avatarImage,
  });

  final String? avatarImage;
  final String name;
  final String post;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(ScreenUtil().setSp(15)),
      child: Row(
        children: [
          CircleAvatar(
            radius: ScreenUtil().setSp(25),
            backgroundImage: avatarImage != null
                ? NetworkImage(avatarImage!)
                : null,
            child: avatarImage == null ? Icon(Icons.person) : null,
          ),
          SizedBox(width: ScreenUtil().setSp(10)),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: name,
                fontSize: ScreenUtil().setSp(20),
                color: fbDarkPrimary,
                fontWeight: FontWeight.w800,
              ),
              CustomText(
                text: 'Post: $post',
                fontSize: ScreenUtil().setSp(13),
                color: fbDarkPrimary,
              ),
              CustomText(
                text: description,
                fontSize: ScreenUtil().setSp(12),
                color: fbDarkPrimary,
                fontStyle: FontStyle.italic,
              ),
            ],
          ),
          const Spacer(),
          const Icon(Icons.more_horiz),
        ],
      ),
    );
  }
}
