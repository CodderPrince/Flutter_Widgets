import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

void main() => runApp(CGPAApp());

class CGPAApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CGPA Calculator',
      home: CGPACalculator(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class CGPACalculator extends StatefulWidget {
  @override
  _CGPACalculatorState createState() => _CGPACalculatorState();
}

class _CGPACalculatorState extends State<CGPACalculator> {
  List<TextEditingController> courseControllers = [TextEditingController()];
  List<TextEditingController> creditControllers = [TextEditingController()];
  List<TextEditingController> gradeControllers = [TextEditingController()];
  double? cgpa;

  void calculateCGPA() {
    double totalGradePoints = 0;
    double totalCredits = 0;

    for (int i = 0; i < courseControllers.length; i++) {
      final credit = double.tryParse(creditControllers[i].text) ?? 0;
      final grade = double.tryParse(gradeControllers[i].text) ?? 0;

      totalCredits += credit;
      totalGradePoints += grade * credit;
    }

    setState(() {
      cgpa = totalCredits == 0 ? 0 : totalGradePoints / totalCredits;
    });
  }

  Future<void> generatePDF() async {
    final pdf = pw.Document();
    pdf.addPage(
      pw.Page(
        build: (pw.Context context) {
          return pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              pw.Text("CGPA Report", style: pw.TextStyle(fontSize: 24)),
              pw.SizedBox(height: 10),
              pw.Table.fromTextArray(
                headers: ['Course', 'Credit', 'Grade'],
                data: List.generate(courseControllers.length, (index) {
                  return [
                    courseControllers[index].text,
                    creditControllers[index].text,
                    gradeControllers[index].text,
                  ];
                }),
              ),
              pw.SizedBox(height: 10),
              pw.Text(
                "CGPA: ${cgpa?.toStringAsFixed(2) ?? 'N/A'}",
                style: pw.TextStyle(fontSize: 20),
              ),
            ],
          );
        },
      ),
    );

    await Printing.layoutPdf(
      onLayout: (PdfPageFormat format) async => pdf.save(),
    );
  }

  void addCourseField() {
    setState(() {
      courseControllers.add(TextEditingController());
      creditControllers.add(TextEditingController());
      gradeControllers.add(TextEditingController());
    });
  }

  @override
  void dispose() {
    for (var controller in [
      ...courseControllers,
      ...creditControllers,
      ...gradeControllers,
    ]) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CGPA Calculator"),
        actions: [
          IconButton(
            icon: Icon(Icons.picture_as_pdf),
            onPressed: cgpa != null ? generatePDF : null,
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          ...List.generate(courseControllers.length, (index) {
            return Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: courseControllers[index],
                    decoration: InputDecoration(labelText: "Course"),
                  ),
                ),
                SizedBox(width: 8),
                Expanded(
                  child: TextField(
                    controller: creditControllers[index],
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(labelText: "Credit"),
                  ),
                ),
                SizedBox(width: 8),
                Expanded(
                  child: TextField(
                    controller: gradeControllers[index],
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(labelText: "Grade"),
                  ),
                ),
              ],
            );
          }),
          SizedBox(height: 10),
          ElevatedButton(onPressed: addCourseField, child: Text("Add More")),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: calculateCGPA,
            child: Text("Calculate CGPA"),
          ),
          if (cgpa != null) ...[
            SizedBox(height: 20),
            Text(
              "Your CGPA is: ${cgpa!.toStringAsFixed(2)}",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ],
      ),
    );
  }
}
