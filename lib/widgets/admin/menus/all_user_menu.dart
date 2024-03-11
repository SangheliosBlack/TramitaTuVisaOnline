import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pull_down_button/pull_down_button.dart';
import 'package:skeleton/helpers/avatar_letters.dart';
import 'package:skeleton/models/user.dart';

@immutable
class ExampleMenuAllUser extends StatelessWidget {
  final Usuario usuario;
  final Color color;
  const ExampleMenuAllUser({
    super.key,
    required this.builder,
    required this.usuario,
    required this.color,
  });

  final PullDownMenuButtonBuilder builder;

  @override
  Widget build(BuildContext context) => PullDownButton(
        itemBuilder: (context) => [
          PullDownMenuHeader(
            leading: Container(
              decoration: BoxDecoration(
                  border: Border.all(width: .2, color: color.withOpacity(.2)),
                  borderRadius: BorderRadius.circular(3),
                  color: Colors.black),
              child: Center(
                child: Text(
                  avatarLetters(name: usuario.name),
                  style: GoogleFonts.quicksand(
                      color: color, fontSize: 15, fontWeight: FontWeight.w600),
                ),
              ),
            ),
            title: 'Perfil',
            subtitle: 'Tap para abrir',
            onTap: () {},
            icon: BootstrapIcons.person_fill,
          ),
          const PullDownMenuDivider.large(),
          PullDownMenuActionsRow.medium(
            items: [
              PullDownMenuItem(
                onTap: () {},
                title: 'Editar',
                icon: BootstrapIcons.pencil,
                iconColor: Colors.black,
              ),
              PullDownMenuItem(
                onTap: () {},
                title: 'Ubicacion',
                icon: BootstrapIcons.geo_fill,
              ),
              PullDownMenuItem(
                onTap: () {},
                title: 'Asignar',
                icon: BootstrapIcons.person_raised_hand,
              ),
            ],
          ),
          const PullDownMenuDivider.large(),
          PullDownMenuItem(
            onTap: () {},
            title: 'Pin',
            icon: BootstrapIcons.pin,
          ),
          PullDownMenuItem(
            title: 'Desactivar',
            subtitle: 'Inhabilita su acceso',
            onTap: () {},
            icon: BootstrapIcons.ban,
          ),
          PullDownMenuItem(
            onTap: () {},
            title: 'Eliminar',
            isDestructive: true,
            icon: BootstrapIcons.trash_fill,
          ),
          const PullDownMenuDivider.large(),
          PullDownMenuItem(
            title: 'Cerrar',
            onTap: () {},
            icon: BootstrapIcons.x,
          ),
        ],
        animationBuilder: null,
        position: PullDownMenuPosition.automatic,
        buttonBuilder: builder,
      );
}
