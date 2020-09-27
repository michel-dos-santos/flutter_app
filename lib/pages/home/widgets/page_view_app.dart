import 'package:flutter/material.dart';
import 'package:flutter_app/pages/home/widgets/financial_card.dart';
import 'package:flutter_app/pages/home/widgets/information_board_card.dart';
import 'package:flutter_app/pages/home/widgets/maintenance_card.dart';
import 'package:flutter_app/pages/home/widgets/apartment_card.dart';
import 'package:flutter_app/pages/home/widgets/parking_card.dart';
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
              //CardApp(text: 'Controle de contas a pagar e a receber'),
              //CardApp(text: 'Manutenções realizadas e previstas'),
              //CardApp(text: 'Lista de moradores'),
              //CardApp(text: 'Estacionamento'),
              //CardApp(text: 'Mural de informação/sugestão/problemas'),
              //CardApp(text: 'Relação de Inadimplentes'),
              //CardApp(text: 'Chat direto com síndico e entre apartamentos'),
              //CardApp(text: 'Direitos e Deveres'),
              //CardApp(text: 'Reuniões (Atas)'),
              //CardApp(text: 'Controle de encomendas'),
              //CardApp(text: 'Enquete'),
              //CardApp(text: 'Mural de Serviços'),
              //CardApp(text: 'Telefones Úteis'),
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
