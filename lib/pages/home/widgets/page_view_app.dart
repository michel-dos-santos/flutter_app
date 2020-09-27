import 'package:flutter/material.dart';
import 'package:flutter_app/pages/home/widgets/financial_card.dart';
import 'package:flutter_app/pages/home/widgets/information_board_card.dart';
import 'package:flutter_app/pages/home/widgets/maintenance_card.dart';
import 'package:flutter_app/pages/home/widgets/apartment_card.dart';
import 'package:flutter_app/pages/home/widgets/meetings_card.dart';
import 'package:flutter_app/pages/home/widgets/overdue_card.dart';
import 'package:flutter_app/pages/home/widgets/package_card.dart';
import 'package:flutter_app/pages/home/widgets/parking_card.dart';
import 'package:flutter_app/pages/home/widgets/rights_and_duties_card.dart';
import 'package:flutter_app/pages/home/widgets/services_board_card.dart';
import 'package:flutter_app/pages/widgets/useful_phones_card.dart';
import 'card_app.dart';

class PageViewApp extends StatelessWidget {
  PageViewApp(
      {Key key, this.isShowMenu, this.top, this.controllerAnimation, this.controller})
      : scale = Tween<double>(
          begin: 1.0,
          end: 0.0,
        ).animate(
          CurvedAnimation(
            parent: controllerAnimation,
            curve: Interval(
              0.05,
              1,
              curve: Curves.easeInToLinear,
            ),
          ),
        ),
        opacity = Tween<double>(
          begin: 1.0,
          end: 0.0,
        ).animate(
          CurvedAnimation(
            parent: controllerAnimation,
            curve: Curves.easeIn,
          ),
        ),
        translateY = Tween<double>(
          begin: top,
          end: top / 6,
        ).animate(
          CurvedAnimation(
            parent: controllerAnimation,
            curve: Curves.easeIn,
          ),
        ),
        super(key: key);

  final bool isShowMenu;
  final double top;
  final Animation<double> controllerAnimation;
  final Animation<double> scale;
  final Animation<double> opacity;
  final Animation<double> translateY;
  final PageController controller;

  Widget _buildAnimation(BuildContext context, Widget child) {
    return Positioned(
      height: MediaQuery.of(context).size.height * 0.58,
      top: translateY.value,
      left: 0,
      right: 0,
      child: Opacity(
        opacity: opacity.value,
        child: ScaleTransition(
          scale: scale,
          child: PageView(
            controller: controller,
            physics: BouncingScrollPhysics(),
            
            children: [
              CardApp(child: FinancialCard(),),
              CardApp(child: MaintenanceCard(),),
              CardApp(child: InformationBoardCard(),),
              CardApp(child: ApartmentCard(),),
              CardApp(child: ParkingCard(),),
              CardApp(child: OverdueCard(),),
              CardApp(child: RightsAndDutiesCard(),),
              CardApp(child: MeetingsCard(),),
              CardApp(child: PackageCard(),),
              CardApp(child: ServiceBoardCard(),),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      builder: _buildAnimation,
      animation: controllerAnimation,
    );
  }
}
