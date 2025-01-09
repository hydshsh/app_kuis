import 'package:flutter/material.dart';

class GradientButton extends StatelessWidget {
  const GradientButton({
    required this.onPressed,
    required this.text,
    super.key,
  });

  final VoidCallback onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero, // Menghilangkan padding default
          fixedSize: const Size(200, 50), // Mengatur ukuran tetap (lebar, tinggi)
          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(30), // Mengatur sudut button melengkung
          ),
        ),
        child: Ink(
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [
                Color.fromARGB(255, 3, 79, 165),
                Color.fromARGB(255, 2, 145, 189),
              ],
            ),
            borderRadius:
                BorderRadius.circular(30), // Menyesuaikan sudut gradasi
          ),
          child: Container(
            alignment: Alignment.center,
            child: const Text(
              'Mulai Kuis',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                letterSpacing: 2,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
