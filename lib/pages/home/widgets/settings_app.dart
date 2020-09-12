import 'package:flutter/material.dart';
import 'package:flutter_app/pages/home/widgets/item_setting.dart';

class SettingsApp extends StatelessWidget {
  final bool isShowMenu;
  final double top;

  const SettingsApp({Key key, this.isShowMenu, this.top}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: 0,
      right: 0,
      child: AnimatedOpacity(
        duration: Duration(milliseconds: 120),
        opacity: !isShowMenu ? 0 : 1,
        child: Container(
          color: Theme.of(context).primaryColor,
          height: MediaQuery.of(context).size.height * 0.49,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                ItemSetting(
                  icon: Icons.send,
                  text: 'Enviar mensagem ao DEV',
                ),
                ItemSetting(
                  icon: Icons.info_outline,
                  text: 'Me ajuda',
                ),
                ItemSetting(
                  icon: Icons.person_outline,
                  text: 'Perfil',
                ),
                ItemSetting(
                  icon: Icons.phone_android,
                  text: 'Configurações do app',
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 40,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(width: 0.7, color: Colors.white54)),
                  child: RaisedButton(
                    color: Theme.of(context).primaryColor,
                    textColor: Colors.white,
                    highlightColor: Colors.transparent,
                    elevation: 0,
                    disabledElevation: 0,
                    focusElevation: 0,
                    highlightElevation: 0,
                    hoverElevation: 0,
                    splashColor: Colors.white24,
                    child: Text(
                      'SAIR DO APP',
                      style: TextStyle(fontSize: 14),
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
