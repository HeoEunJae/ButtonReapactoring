import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton(
      {super.key,
      required this.images, // named 생성자 만들시 this 앞에 named 생성자에 필요한 required를 붙여줘야 함
      required this.text,
      required this.color,
      required this.radius,
      required this.onPressed});

  final Widget images;
  final Widget text;
  final Color color;
  final double radius;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      // 버튼팀 이제 사용 금지(이전 버전에서 사용하던 것)
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(radius),
          ),
        ),
        // 버튼 크기를 조절하고 싶을때는 스타일폼 사용
        backgroundColor: color,
        fixedSize: Size.fromHeight(50.0),
      ),
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly, // 요소들을 버튼내 간격으로 조절
        children: [
          images,
          text,
          Opacity(
            // 불투명도
            opacity: 0.0,
            child: Image.asset('images/glogo.png'),
          ),
        ],
      ),
    );
  }
}
