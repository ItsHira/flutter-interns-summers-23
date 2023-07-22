import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_interns/assesments/assessment_2/fi-as2-hira/constants/fi_as2_hira_colors.dart';
import '../../widgets/core/fi_as2_hira_button.dart';
import '../../widgets/core/fi_as2_hira_home_root.dart';
part 'widgets/fi_as2_hira_dottedborder.dart';
part 'widgets/fi_as2_hira_stacklogo.dart';
part 'widgets/fi_as2_hira_circlecontainer.dart';

class H1Login extends StatelessWidget {
  const H1Login({super.key});

  @override
  Widget build(BuildContext context) {
    Widget smallspace = const SizedBox(
      height: 35,
    );
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            const Center(
              child: H1Logo(),
            ),
            smallspace,
            const Text(
              "Let's Connect \n    Together",
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.w600,
                color: Constants.black,
              ),
            ),
            smallspace,
            H1Button(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const H1HomeRoot(),
                  ),
                );
              },
              color: Colors.white,
              child: const Text(
                'Login',
                style: TextStyle(
                  color: Constants.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            H1Button(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const H1HomeRoot(),
                  ),
                );
              },
              color: Constants.pink,
              child: const Text(
                'Sign Up',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
