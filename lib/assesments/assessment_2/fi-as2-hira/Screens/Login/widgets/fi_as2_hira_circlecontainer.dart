part of '../fi_as2_hira_login.dart';

class H1Circle extends StatelessWidget {
  final Widget child;
  const H1Circle({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
          color: Constants.grey, borderRadius: BorderRadius.circular(50)),
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Container(
            color: Colors.white,
            padding: const EdgeInsets.all(2),
            child: child,
          ),
        ),
      ),
    );
  }
}
