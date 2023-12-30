import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skeleton/blocs/auth_bloc/auth_bloc.dart';
import 'package:skeleton/helpers/email_validator.dart';
import 'package:skeleton/helpers/extensions.dart';
import 'package:skeleton/helpers/password_validator.dart';
import 'package:skeleton/themes/main_theme.dart';

@RoutePage()
class LoginViewPage extends StatefulWidget {
  const LoginViewPage({super.key});

  @override
  State<LoginViewPage> createState() => _LoginViewPageState();
}

class _LoginViewPageState extends State<LoginViewPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final FocusNode focusEmail = FocusNode();
  final FocusNode focusPassword = FocusNode();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final AuthBloc authBloc = BlocProvider.of<AuthBloc>(context);
    return Theme(
      data: ThemeData(
        inputDecorationTheme: const InputDecorationTheme(
          hoverColor: Colors.transparent,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: context.height - 200,
                width: context.width - 500,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: context.height - 200,
                          child: Stack(
                            children: [
                              const Positioned.fill(
                                child: ClipRRect(
                                  child: ColorFiltered(
                                    colorFilter: ColorFilter.mode(
                                      Colors
                                          .grey, // Puedes ajustar este color según tus preferencias
                                      BlendMode.saturation,
                                    ),
                                    child: Image(
                                      image: NetworkImage(
                                          "https://images.unsplash.com/photo-1605833556294-ea5c7a74f57d?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHx8fA%3D%3D"),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    decoration: const BoxDecoration(),
                                    margin: const EdgeInsets.all(10),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: BackdropFilter(
                                        filter: ImageFilter.blur(
                                          sigmaX: 10,
                                          sigmaY: 10,
                                        ),
                                        child: Container(
                                          padding: const EdgeInsets.all(15),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Text(
                                                "Registratate",
                                                style: GoogleFonts.quicksand(
                                                    fontSize: 30,
                                                    color: Colors.white),
                                              ),
                                              const SizedBox(
                                                width: 200,
                                                child: Divider(
                                                    color: Colors.white,
                                                    height: 10),
                                              ),
                                              const SizedBox(
                                                height: 15,
                                              ),
                                              Text(
                                                "- Beneficio 1",
                                                style: GoogleFonts.quicksand(
                                                    fontSize: 12,
                                                    color: Colors.white),
                                              ),
                                              const SizedBox(
                                                height: 5,
                                              ),
                                              Text(
                                                "- Beneficio 2",
                                                style: GoogleFonts.quicksand(
                                                    fontSize: 12,
                                                    color: Colors.white),
                                              ),
                                              const SizedBox(
                                                height: 5,
                                              ),
                                              Text(
                                                "- Beneficio 2",
                                                style: GoogleFonts.quicksand(
                                                    fontSize: 12,
                                                    color: Colors.white),
                                              ),
                                              const SizedBox(
                                                height: 15,
                                              ),
                                              Row(
                                                children: [
                                                  Expanded(
                                                    child: Text(
                                                      "Lorem Ipsum es simplemente el texto de relleno de las impren.",
                                                      overflow:
                                                          TextOverflow.visible,
                                                      style:
                                                          GoogleFonts.quicksand(
                                                              fontSize: 12,
                                                              color:
                                                                  Colors.white),
                                                    ),
                                                  ),
                                                  Container(
                                                      margin:
                                                          const EdgeInsets.only(
                                                              left: 20),
                                                      padding:
                                                          const EdgeInsets.all(
                                                              10),
                                                      decoration: BoxDecoration(
                                                          color: Colors.white,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      30)),
                                                      child: const Icon(
                                                        Icons.arrow_forward,
                                                        color: Colors.black,
                                                      ))
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          padding: const EdgeInsets.all(40),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Bienvenido",
                                style: GoogleFonts.quicksand(
                                    color: Colors.black, fontSize: 25),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 20),
                                child: Form(
                                    key: _formKey,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        TextFormField(
                                          controller: emailController,
                                          maxLines: 1,
                                          onFieldSubmitted: (e) {
                                            FocusScope.of(context)
                                                .requestFocus(focusPassword);
                                          },
                                          validator: (email) =>
                                              emailValidator(email: email!),
                                          keyboardType:
                                              TextInputType.emailAddress,
                                          focusNode: focusEmail,
                                          textInputAction: TextInputAction.next,
                                          style: GoogleFonts.quicksand(
                                            color: Colors.black,
                                            fontSize: 20,
                                          ),
                                          decoration: InputDecoration(
                                            labelText: 'Correo electronico',

                                            contentPadding: const EdgeInsets
                                                .symmetric(
                                                vertical: 10.0,
                                                horizontal:
                                                    0), // Ajusta el padding del label
                                            labelStyle: const TextStyle(
                                              color: Colors.grey,
                                              fontSize: 18,
                                            ), // Color del texto de la etiqueta
                                            focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.grey.withOpacity(
                                                      .2)), // Color del borde cuando está enfocado
                                            ),
                                            errorBorder:
                                                const UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors
                                                      .red), // Color del borde cuando está enfocado
                                            ),
                                            focusedErrorBorder:
                                                const UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors
                                                      .red), // Color del borde cuando está enfocado
                                            ),
                                            enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.grey.withOpacity(
                                                      .2)), // Color del borde cuando no está enfocado
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        TextFormField(
                                          style: GoogleFonts.quicksand(
                                            color: Colors.black,
                                            fontSize: 20,
                                          ),
                                          onEditingComplete: () {
                                            if (!_formKey.currentState!
                                                .validate()) {
                                              return;
                                            }
                                            authBloc.add(
                                              LoginEvent(
                                                username:
                                                    emailController.text.trim(),
                                                password: passwordController
                                                    .text
                                                    .trim(),
                                              ),
                                            );
                                            FocusScope.of(context).unfocus();
                                          },
                                          validator: passwordValidator,
                                          controller: passwordController,
                                          focusNode: focusPassword,
                                          obscureText: true,
                                          keyboardType: TextInputType.text,
                                          textInputAction: TextInputAction.done,
                                          decoration: InputDecoration(
                                            labelText: 'Contraseña',
                                            contentPadding: const EdgeInsets
                                                .symmetric(
                                                vertical: 10.0,
                                                horizontal:
                                                    0), // Ajusta el padding del label
                                            labelStyle: const TextStyle(
                                              color: Colors.grey,
                                              fontSize: 18,
                                            ), // Color del texto de la etiqueta
                                            focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.grey.withOpacity(
                                                      .2)), // Color del borde cuando está enfocado
                                            ),
                                            errorBorder:
                                                const UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors
                                                      .red), // Color del borde cuando está enfocado
                                            ),
                                            focusedErrorBorder:
                                                const UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors
                                                      .red), // Color del borde cuando está enfocado
                                            ),
                                            enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.grey.withOpacity(
                                                      .2)), // Color del borde cuando no está enfocado
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              "Olvide mi contraseña",
                                              style: GoogleFonts.quicksand(
                                                  color: Colors.grey),
                                            ),
                                            const SizedBox(
                                              width: 6,
                                            ),
                                            const Icon(
                                              Icons.help,
                                              size: 15,
                                            )
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            BlocBuilder<AuthBloc, AuthState>(
                                              builder: (context, state) {
                                                return GestureDetector(
                                                  onTap: state is AuthLoading
                                                      ? null
                                                      : () async {
                                                          FocusScope.of(context)
                                                              .unfocus();
                                                          if (!_formKey
                                                              .currentState!
                                                              .validate()) {
                                                            return;
                                                          }
                                                          await Future.delayed(
                                                              const Duration(
                                                                  milliseconds:
                                                                      300));
                                                          authBloc.add(
                                                            LoginEvent(
                                                              username:
                                                                  emailController
                                                                      .text
                                                                      .trim(),
                                                              password:
                                                                  passwordController
                                                                      .text
                                                                      .trim(),
                                                            ),
                                                          );
                                                        },
                                                  child: SizedBox(
                                                    height: 40,
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        AnimatedContainer(
                                                          width: state
                                                                  is AuthLoading
                                                              ? 45
                                                              : 150,
                                                          key: const Key(
                                                              'login-button'),
                                                          decoration: BoxDecoration(
                                                              borderRadius: BorderRadius
                                                                  .circular(state
                                                                          is AuthLoading
                                                                      ? 100
                                                                      : 20),
                                                              color: Themes
                                                                  .primary
                                                                  .withOpacity(
                                                                      state is AuthLoading
                                                                          ? .2
                                                                          : 1)),
                                                          duration:
                                                              const Duration(
                                                                  milliseconds:
                                                                      300),
                                                          child: Center(
                                                            child:
                                                                AnimatedSwitcher(
                                                              duration:
                                                                  const Duration(
                                                                      milliseconds:
                                                                          200),
                                                              child: state
                                                                      is AuthLoading
                                                                  ? const SizedBox(
                                                                      height:
                                                                          16,
                                                                      width: 16,
                                                                      child:
                                                                          CircularProgressIndicator(
                                                                        color: Colors
                                                                            .white,
                                                                        strokeWidth:
                                                                            1,
                                                                      ),
                                                                    )
                                                                  : Text(
                                                                      'INICIAR SESION',
                                                                      style: GoogleFonts.quicksand(
                                                                          color: Colors
                                                                              .white,
                                                                          fontSize:
                                                                              15,
                                                                          fontWeight:
                                                                              FontWeight.w600),
                                                                    ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                );
                                              },
                                            ),
                                          ],
                                        )
                                      ],
                                    )),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
