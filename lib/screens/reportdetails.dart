import 'dart:io';
import 'package:flutter/material.dart';

class ReportDetails extends StatelessWidget {
  const ReportDetails({super.key});

  // الصورة من مجلد المشروع
  static const String assetImagePath = 'assets/images/s1.webp';

  // للمحاكي فقط (لا يُستخدم على الهاتف)
  static const String windowsFilePath =
      r'C:\Users\reema\OneDrive\Desktop\s1.webp';

  @override
  Widget build(BuildContext context) {
    final bg = const Color(0xFFF7E8EB); // وردي فاتح
    final cardBg = Colors.white;
    final chipBg = const Color(0xFFF3E3E6);
    final primary = const Color(0xFF0197A5); // لون الزر الأزرق الفاتح
    final textColor = const Color(0xFF3C2E35);

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: bg,
        body: SafeArea(
          child: ListView(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 24),
            children: [
              // زر الرجوع
              Row(
                children: [
                  IconButton(
                    onPressed: () => Navigator.maybePop(context),
                    icon: const Icon(Icons.arrow_back_rounded),
                  ),
                ],
              ),
              const SizedBox(height: 8),

              // صورة البلاغ
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: AspectRatio(
                  aspectRatio: 9 / 11,
                  child: _buildImage(),
                ),
              ),
              const SizedBox(height: 16),

              // البطاقة
              Container(
                decoration: BoxDecoration(
                  color: cardBg,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.06),
                      blurRadius: 12,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                padding: const EdgeInsets.fromLTRB(16, 18, 16, 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Center(
                      child: Text(
                        'سماعات ايربودز ماكس',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          color: textColor,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Divider(height: 24),

                    _InfoRow(
                      label: 'وصف البلاغ:',
                      value: 'ضيعت سماعة زرقاء في الساحة',
                      valueStyle: TextStyle(color: textColor),
                    ),
                    const SizedBox(height: 8),

                    _InfoRow(
                      label: 'التصنيف:',
                      valueWidget: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 6),
                        decoration: BoxDecoration(
                          color: chipBg,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Text('مفقودة',
                            style: TextStyle(fontWeight: FontWeight.w600)),
                      ),
                    ),
                    const SizedBox(height: 8),

                    _InfoRow(
                      label: 'الموقع:',
                      value: 'جامعة الملك سعود ، عليشه',
                      valueStyle: const TextStyle(fontWeight: FontWeight.w600),
                    ),

                    const SizedBox(height: 16),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'تم النشر ٠٣:٤٧ مساءً • ٢٠ سبتمبر ٢٠٢٥',
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 12,
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                  ],
                ),
              ),

              const SizedBox(height: 16),

              // أزرار التواصل
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        // TODO: اضيفي التفاعل المطلوب للتواصل
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: primary,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        textStyle: const TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                        ),
                        elevation: 0,
                      ),
                      child: const Text('تواصل'),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Container(
                    width: 56,
                    height: 56,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x14000000),
                          blurRadius: 10,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.person_rounded),
                      color: primary,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 8),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  '44592629@student.ksu.edu.sa',
                  style: TextStyle(
                    color: Colors.grey[800],
                    fontSize: 12.5,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildImage() {
    const bool loadFromWindowsFile = false; // غيريها إلى true للتجربة

    if (loadFromWindowsFile && File(windowsFilePath).existsSync()) {
      return Image.file(File(windowsFilePath), fit: BoxFit.cover);
    }

    return Image.asset(assetImagePath, fit: BoxFit.cover);
  }
}

class _InfoRow extends StatelessWidget {
  final String label;
  final String? value;
  final Widget? valueWidget;
  final TextStyle? valueStyle;

  const _InfoRow({
    required this.label,
    this.value,
    this.valueWidget,
    this.valueStyle,
  }) : assert(value != null || valueWidget != null, 'حدد قيمة أو ويدجت');

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: 90,
          child: Text(
            label,
            style: const TextStyle(fontWeight: FontWeight.w700),
          ),
        ),
        const SizedBox(width: 6),
        Expanded(
          child: valueWidget ??
              Text(
                value!,
                style: valueStyle,
              ),
        ),
      ],
    );
  }
}
