import 'package:app_kuis/models/quiz_question.dart';

const questions = [
  QuizQuestion(
    // jawaban yang bener selalu di urutan pertama pilihan ganda

    'Apa itu Flutter?',
    [
      'Framework untuk membuat aplikasi mobile', //
      'Framework untuk membuat website',
      'Sistem operasi untuk smartphone',
      'Bahasa pemrograman',
    ],
  ),
  QuizQuestion(
    'Apa bahasa pemrograman yang digunakan Flutter?',
    [
      'Dart', //
      'Java',
      'Kotlin',
      'Swift',
    ],
  ),
  QuizQuestion(
    'Bagaimana cara memulai aplikasi Flutter baru di Visual Studio Code?',
    [
      'Menjalankan perintah flutter create', //
      'Membuat file index.html',
      'Membuat file main.py',
      'Menambahkan package baru di pubspec.yaml',
    ],
  ),
  QuizQuestion(
    'Apa nama file utama yang berisi kode awal aplikasi Flutter?',
    [
      'main.dart', //
      'app.dart',
      'flutter.dart',
      'lib.dart',
    ],
  ),
  QuizQuestion(
    'Widget mana yang digunakan untuk membuat layout dasar di Flutter?',
    [
      'Scaffold', //
      'Text',
      'Image',
      'Container',
    ],
  ),
  QuizQuestion(
    'Apa fungsi dari widget Text dalam Flutter?',
    [
      'Untuk menampilkan teks', //
      'Untuk menampilkan gambar',
      'Untuk membuat layout kolom',
      'Untuk menangani input pengguna',
    ],
  ),
  QuizQuestion(
    'Bagaimana cara menjalankan aplikasi Flutter di emulator atau perangkat?',
    [
      'Dengan menjalankan perintah flutter run', //
      'Dengan menginstall file APK secara manual',
      'Dengan membuka file aplikasi di browser',
      'Dengan menulis perintah flutter compile',
    ],
  ),
  QuizQuestion(
    'Apa fungsi dari widget Container dalam Flutter?',
    [
      'Untuk mengatur layout dan styling', //
      'Untuk menampilkan teks',
      'Untuk menampilkan ikon',
      'Untuk menangani klik tombol',
    ],
  ),
  QuizQuestion(
    'Bagaimana cara menampilkan gambar di Flutter?',
    [
      'Menggunakan widget Image', //
      'Menggunakan widget Text',
      'Menggunakan widget Button',
      'Menggunakan widget Scaffold',
    ],
  ),
  QuizQuestion(
    'Apa yang dilakukan oleh perintah flutter doctor?',
    [
      'Memeriksa dan menunjukkan masalah konfigurasi pada sistem development Flutter', //
      'Memperbaiki bug di aplikasi',
      'Menghapus cache aplikasi',
      'Mengupdate Flutter SDK',
    ],
  ),
];
