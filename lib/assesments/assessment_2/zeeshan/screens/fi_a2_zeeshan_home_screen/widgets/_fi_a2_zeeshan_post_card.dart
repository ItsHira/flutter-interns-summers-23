part of '../fi_a2_zeeshan_home_screen.dart';

class _FIA2ZeeshanPostCard extends StatelessWidget {
  const _FIA2ZeeshanPostCard({super.key});

  @override
  Widget build(BuildContext context) {
    var screen = MediaQuery.of(context).size;
    return Card(
      elevation: 2,
      color: Colors.transparent,
      shadowColor: Colors.transparent,
      child: Container(
        height: screen.height * 0.60,
        decoration: BoxDecoration(
            color: const Color.fromRGBO(252, 252, 252, 1),
            borderRadius: BorderRadius.circular(screen.height * 0.03),
            boxShadow: const [
              BoxShadow(
                  offset: Offset(0, 4),
                  blurRadius: 4,
                  color: Color.fromRGBO(0, 0, 0, 0.25))
            ]),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: screen.width * 0.02),
          child: Column(
            children: [
              ListTile(
                leading: FIA2ZeeshanProfileContainer(
                    image: 'man1.png',
                    isBorderEnable: true,
                    height: screen.height * 0.08),
                title: Text('Anton Demeron',
                    style: TextStyle(
                        fontFamily: fontFamily, fontWeight: FontWeight.w600)),
                subtitle: Text(
                  '@anton_demeron',
                  style: TextStyle(
                    fontFamily: fontFamily,
                    fontWeight: FontWeight.w600,
                    color: const Color.fromRGBO(87, 83, 83, 0.85),
                  ),
                ),
                trailing: const Icon(Icons.more_horiz,
                    size: 40, color: Color.fromRGBO(112, 108, 108, 1)),
              ),
              Container(
                height: screen.height * 0.4,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(screen.height * 0.03),
                    image: const DecorationImage(
                        image: AssetImage('assets/fi-a2-zeeshan-unsplash.png'),
                        fit: BoxFit.contain)),
              ),
              SizedBox(height: screen.height * 0.01),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screen.width * 0.05),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: screen.height * 0.05,
                      width: screen.width * 0.45,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Icon(Icons.favorite_border),
                          Text(
                            '573',
                            style: TextStyle(
                                fontFamily: fontFamily,
                                fontWeight: FontWeight.w600),
                          ),
                          const Icon(Icons.comment),
                          Text(
                            '30',
                            style: TextStyle(
                                fontFamily: fontFamily,
                                fontWeight: FontWeight.w600),
                          ),
                          const Icon(Icons.share),
                        ],
                      ),
                    ),
                    Text(
                      '35 min ago',
                      style: TextStyle(
                          fontFamily: fontFamily,
                          fontWeight: FontWeight.w700,
                          color: const Color.fromRGBO(158, 152, 152, 1)),
                    ),
                  ],
                ),
              ),
              SizedBox(height: screen.height * 0.01),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screen.width * 0.05),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Down the road',
                      style: TextStyle(
                          fontFamily: fontFamily, fontWeight: FontWeight.w700)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
