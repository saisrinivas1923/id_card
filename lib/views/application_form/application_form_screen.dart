import 'package:flutter/material.dart';
import 'package:idcard/configs/colors/app_colors.dart';
import 'package:idcard/widgets/background_screen.dart';
import 'package:intl/intl.dart';

class ApplicationFormScreen extends StatefulWidget {
  const ApplicationFormScreen({super.key});

  @override
  State<ApplicationFormScreen> createState() => _ApplicationFormScreenState();
}

class _ApplicationFormScreenState extends State<ApplicationFormScreen> {
  final List<String> items = ['B.Tech', 'M.Tech', 'MCA', 'MBA', 'Diploma'];
  String? selectedItem;
  final List<String> branch = ['CSE', 'ECE', 'EEE', 'Civil', 'Mech', 'IT', 'AIML'];
  String? selectedBranch;
  final List<String> year = ['I', 'II', 'III', 'IV'];
  String? selectedYear;
  final TextEditingController dateController = TextEditingController();

  @override
  void dispose() {
    dateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(title: const Text('Apply for ID Card',style: TextStyle(color: AppColors.text),)),
      body: CurvedBackground(
        child:  Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Name',
                  labelStyle: const TextStyle(color:AppColors.primary, fontSize: 15),
                  hintText: 'Enter name',
                  hintStyle: const TextStyle(color:AppColors.primary, fontSize: 15),
                  fillColor: AppColors.button,
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color:AppColors.primary), // Removes blue border
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.primary, width: 2.0), // Custom focus color
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  contentPadding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                ),
              ),
              SizedBox(height: size.height * 0.02),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Registration Number",
                  labelStyle: const TextStyle(color:AppColors.primary, fontSize: 15),
                  hintText: "Enter registration number",
                  hintStyle: const TextStyle(color:AppColors.primary, fontSize: 15),
                  fillColor: AppColors.button,
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color:AppColors.primary), // Removes blue border
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.primary, width: 2.0), // Custom focus color
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  contentPadding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                ),
              ),
              SizedBox(height: size.height * 0.02),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  labelText: "Select Course",
                  labelStyle: const TextStyle(color:AppColors.primary, fontSize: 15),
                  fillColor: AppColors.button,
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color:AppColors.primary), // Removes blue border
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.primary, width: 2.0), // Custom focus color
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  contentPadding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                ),
                value: selectedItem,
                items: items.map(buildMenuItem).toList(),
                onChanged: (value) {
                  setState(() {
                    selectedItem = value;
                  });
                },
              ),
              SizedBox(height: size.height * 0.02),
              Row(
                children: [
                  Expanded(
                    child: DropdownButtonFormField<String>(
                      decoration: InputDecoration(
                        labelText: 'Branch',
                        labelStyle: const TextStyle(color:AppColors.primary, fontSize: 15),
                        fillColor: AppColors.button,
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color:AppColors.primary), // Removes blue border
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.primary, width: 2.0), // Custom focus color
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        contentPadding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                      ),
                      value: selectedBranch,
                      items: branch.map(buildMenuBranch).toList(),
                      onChanged: (value) {
                        setState(() {
                          selectedBranch = value;
                        });
                      },
                    ),
                  ),
                  SizedBox(width: size.width * 0.02),
                  Expanded(
                    child: DropdownButtonFormField<String>(
                      decoration: InputDecoration(
                        labelText: 'Year',
                        labelStyle: const TextStyle(color:AppColors.primary, fontSize: 15),
                        fillColor: AppColors.button,
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color:AppColors.primary), // Removes blue border
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.primary, width: 2.0), // Custom focus color
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                      ),
                      value: selectedYear,
                      items: year.map(buildMenuYear).toList(),
                      onChanged: (value) {
                        setState(() {
                          selectedYear = value;
                        });
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.02),
              TextFormField(
                controller: dateController,
                decoration: InputDecoration(
                  suffixIcon: IconButton(onPressed: () async {
                    DateTime? date = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(1900),
                      lastDate: DateTime(2100),
                    );
                    if (date != null) {
                      setState(() {
                        dateController.text = DateFormat('MM/dd/yyyy').format(date);
                      });
                    }
                  },icon: const Icon(Icons.calendar_month)),
                  labelText: "Date of Birth",
                  labelStyle: const TextStyle(color:AppColors.primary, fontSize: 15),
                  fillColor: AppColors.button,
                  filled: true,

                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color:AppColors.primary), // Removes blue border
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.primary, width: 2.0), // Custom focus color
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.02),
              ElevatedButton(
                onPressed: () {
                  // Add your form submission logic here
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor:AppColors.button,
                  // shape: RoundedRectangleBorder(
                  //   borderRadius: BorderRadius.circular(50),
                  // ),
                  // shadowColor: Colors.grey,
                  // elevation: 5,
                ),
                child: const Text(
                  "Submit For Approval",
                  // style: TextStyle(color:AppColors.primary, fontSize: 17, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  DropdownMenuItem<String> buildMenuItem(String item) {
    return DropdownMenuItem(

      value: item,
      child: Text(item),
    );
  }

  DropdownMenuItem<String> buildMenuBranch(String branch) {
    return DropdownMenuItem(
      value: branch,
      child: Text(branch),
    );
  }

  DropdownMenuItem<String> buildMenuYear(String year) {
    return DropdownMenuItem(
      value: year,
      child: Text(year),
    );
  }
}
