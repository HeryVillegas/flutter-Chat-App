import 'package:chatapp/widgets/boton_azul.dart';
import 'package:chatapp/widgets/custom_input.dart';
import 'package:chatapp/widgets/labels.dart';
import 'package:chatapp/widgets/logo.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F2F2),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            height: MediaQuery.of(context).size.height * .9,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Logo(titulo: 'Registro'),
                _Form(),
                Labels(
                  ruta: 'login',
                  pregunta: '¿Ya tienes cuenta?',
                  accion: 'Ingresa Aqui!',
                ),
                Text('Terminos y condiciones de uso',
                    style: TextStyle(
                        color: Colors.black45, fontWeight: FontWeight.w300))
              ],
            ),
          ),
        ),
      ),
    );
  }

//
} //LLAVE DE LA CLASE

class _Form extends StatefulWidget {
  @override
  __FormState createState() => __FormState();
}

class __FormState extends State<_Form> {
  final emailCtrl = TextEditingController();
  final passwCtrl = TextEditingController();
  final namesCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40),
      padding: EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        children: [
          CustomInputs(
              icon: Icons.perm_identity,
              placeholder: 'Nombre',
              keyboardType: TextInputType.text,
              isPassword: false,
              textController: namesCtrl),
          CustomInputs(
              icon: Icons.email_outlined,
              placeholder: 'Correo Electronico',
              keyboardType: TextInputType.emailAddress,
              isPassword: false,
              textController: emailCtrl),
          CustomInputs(
              icon: Icons.lock_outline,
              placeholder: 'Contraseña',
              isPassword: true,
              textController: passwCtrl),
          BotonAzul(
            texto: 'Ingresar',
            onPressed: () {
              print(emailCtrl.text);
              print(passwCtrl.text);
            },
          ),
          //
        ],
      ),
    );
  }
}
