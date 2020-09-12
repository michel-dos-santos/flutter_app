import 'package:flutter/material.dart';
import 'card_app.dart';

class PageViewApp extends StatefulWidget {
  final bool isShowMenu;
  final double top;
  final ValueChanged onChanged;

  const PageViewApp({Key key, this.isShowMenu, this.top, this.onChanged})
      : super(key: key);

  @override
  _PageViewAppState createState() => _PageViewAppState();
}

class _PageViewAppState extends State<PageViewApp>
    with TickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> _animation;
  Animation<double> anime;

  initState() {
    super.initState();
    _controller = AnimationController(
        duration: const Duration(milliseconds: 300), vsync: this, value: 0.1);
    _animation = CurvedAnimation(parent: _controller, curve: Curves.easeIn);
    _animation = Tween(begin: 0.0, end: 1.0).animate(_animation);

    _controller.forward();
  }

  @override
  dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.isShowMenu) {
      _controller.reverse();
    } else {
      _controller.forward();
    }

    return Positioned(
      height: MediaQuery.of(context).size.height * 0.45,
      top: widget.top,
      left: 0,
      right: 0,
      child: ScaleTransition(
        scale: _animation,
        child: PageView(
          onPageChanged: widget.onChanged,
          physics: BouncingScrollPhysics(),
          children: [
            CardApp(text: 'Controle de contas a pagar e a receber'),
            CardApp(text: 'Manutenções realizadas e previstas'),
            CardApp(text: 'Lista de moradores'),
            CardApp(text: 'Estacionamento'),
            CardApp(text: 'Mural de informação/sugestão/problemas'),
            CardApp(text: 'Relação de Inadimplentes'),
            CardApp(text: 'Chat direto com síndico e entre apartamentos'),
            CardApp(text: 'Direitos e Deveres'),
            CardApp(text: 'Reuniões (Atas)'),
            CardApp(text: 'Controle de encomendas'),
            CardApp(text: 'Enquete'),
            CardApp(text: 'Mural de Serviços'),
            CardApp(text: 'Telefones Úteis'),
          ],
        ),
      ),
    );
  }
}
