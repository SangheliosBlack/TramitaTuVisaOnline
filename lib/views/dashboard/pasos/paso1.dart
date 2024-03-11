import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Paso1 extends StatelessWidget {
  const Paso1({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Surnames",
                style: GoogleFonts.quicksand(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                style: GoogleFonts.quicksand(color: Colors.black),
                decoration:
                    const InputDecoration(helperText: "Eg., FERNANDEZ GARCIA"),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Given Names",
                style: GoogleFonts.quicksand(color: Colors.black, fontSize: 20),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                style: GoogleFonts.quicksand(color: Colors.black),
                decoration:
                    const InputDecoration(helperText: "Eg., FERNANDEZ GARCIA"),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Full Name in Native Alphabet",
                    style: GoogleFonts.quicksand(
                        color: Colors.black, fontSize: 20),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                style: GoogleFonts.quicksand(color: Colors.black),
                decoration:
                    const InputDecoration(helperText: "Eg., FERNANDEZ GARCIA"),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Checkbox(value: false, onChanged: (val) {}),
              Text(
                "Does Not Apply/Technology Not Available",
                style: GoogleFonts.quicksand(color: Colors.black, fontSize: 15),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Q: ",
                    style: GoogleFonts.lato(
                        color: Colors.blueGrey.withOpacity(.7), fontSize: 25),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Have you ever used other names (i.e, maiden, religios, professional, alias, etc.)?",
                    style: GoogleFonts.quicksand(
                        color: Colors.black, fontSize: 20),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 35,
                  ),
                  Text(
                    "A: ",
                    style:
                        GoogleFonts.lato(color: Colors.blueGrey, fontSize: 25),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      children: [
                        Radio.adaptive(
                            value: false, groupValue: true, onChanged: (v) {}),
                        Text(
                          "Yes",
                          style: GoogleFonts.quicksand(color: Colors.black),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      children: [
                        Radio.adaptive(
                            value: false, groupValue: true, onChanged: (v) {}),
                        Text("No",
                            style: GoogleFonts.quicksand(color: Colors.black))
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Q: ",
                    style: GoogleFonts.lato(
                        color: Colors.blueGrey.withOpacity(.7), fontSize: 25),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Do you have  a telecode that represents your name?",
                    style: GoogleFonts.quicksand(
                        color: Colors.black, fontSize: 20),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 35,
                  ),
                  Text(
                    "A: ",
                    style:
                        GoogleFonts.lato(color: Colors.blueGrey, fontSize: 25),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      children: [
                        Radio.adaptive(
                            value: false, groupValue: true, onChanged: (v) {}),
                        Text(
                          "Yes",
                          style: GoogleFonts.quicksand(color: Colors.black),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      children: [
                        Radio.adaptive(
                            value: false, groupValue: true, onChanged: (v) {}),
                        Text("No",
                            style: GoogleFonts.quicksand(color: Colors.black))
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
          Builder(builder: (context) {
            final List<String> genderItems = [
              'Male',
              'Female',
            ];
            String? selectedGenderValue;
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Sex",
                  style:
                      GoogleFonts.quicksand(color: Colors.black, fontSize: 20),
                ),
                const SizedBox(
                  height: 10,
                ),
                DropdownButtonFormField2<String>(
                  isExpanded: true,
                  decoration: InputDecoration(
                    // Add Horizontal padding using menuItemStyleData.padding so it matches
                    // the menu padding when button's width is not specified.
                    contentPadding: const EdgeInsets.symmetric(vertical: 16),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    // Add more decoration..
                  ),
                  hint: const Text(
                    '-SELECT ONE-',
                    style: TextStyle(fontSize: 14),
                  ),
                  items: genderItems
                      .map((item) => DropdownMenuItem<String>(
                            value: item,
                            child: Text(
                              item,
                              style: const TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ))
                      .toList(),
                  validator: (value) {
                    if (value == null) {
                      return 'Please select gender.';
                    }
                    return null;
                  },
                  onChanged: (value) {
                    //Do something when selected item is changed.
                  },
                  onSaved: (value) {
                    selectedGenderValue = value.toString();
                  },
                  buttonStyleData: const ButtonStyleData(
                    padding: EdgeInsets.only(right: 8),
                  ),
                  iconStyleData: const IconStyleData(
                    icon: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.black45,
                    ),
                    iconSize: 24,
                  ),
                  dropdownStyleData: DropdownStyleData(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  menuItemStyleData: const MenuItemStyleData(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                  ),
                ),
              ],
            );
          }),
          const SizedBox(
            height: 10,
          ),
          Builder(builder: (context) {
            final List<String> genderItems = [
              'Male',
              'Female',
            ];
            String? selectedMaritialValue;
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Marital Status",
                  style:
                      GoogleFonts.quicksand(color: Colors.black, fontSize: 20),
                ),
                const SizedBox(
                  height: 10,
                ),
                DropdownButtonFormField2<String>(
                  isExpanded: true,
                  decoration: InputDecoration(
                    // Add Horizontal padding using menuItemStyleData.padding so it matches
                    // the menu padding when button's width is not specified.
                    contentPadding: const EdgeInsets.symmetric(vertical: 16),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    // Add more decoration..
                  ),
                  hint: const Text(
                    '-SELECT ONE-',
                    style: TextStyle(fontSize: 14),
                  ),
                  items: genderItems
                      .map((item) => DropdownMenuItem<String>(
                            value: item,
                            child: Text(
                              item,
                              style: const TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ))
                      .toList(),
                  validator: (value) {
                    if (value == null) {
                      return 'Please select gender.';
                    }
                    return null;
                  },
                  onChanged: (value) {
                    //Do something when selected item is changed.
                  },
                  onSaved: (value) {
                    selectedMaritialValue = value.toString();
                  },
                  buttonStyleData: const ButtonStyleData(
                    padding: EdgeInsets.only(right: 8),
                  ),
                  iconStyleData: const IconStyleData(
                    icon: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.black45,
                    ),
                    iconSize: 24,
                  ),
                  dropdownStyleData: DropdownStyleData(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  menuItemStyleData: const MenuItemStyleData(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                  ),
                ),
              ],
            );
          }),
          const SizedBox(
            height: 20,
          ),
          Divider(
            height: 1,
            thickness: 2,
            color: Colors.grey.withOpacity(.2),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            "Date and Place of Birth",
            textAlign: TextAlign.start,
            style: GoogleFonts.quicksand(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.blueGrey.withOpacity(.1)),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Date",
                  style:
                      GoogleFonts.quicksand(color: Colors.grey, fontSize: 20),
                ),
                const SizedBox(
                  height: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 100,
                          child: TextFormField(
                            style: GoogleFonts.quicksand(color: Colors.black),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        SizedBox(
                          width: 100,
                          child: TextFormField(
                            style: GoogleFonts.quicksand(color: Colors.black),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        SizedBox(
                          width: 100,
                          child: TextFormField(
                            style: GoogleFonts.quicksand(color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "(Format: DD--MM--YYYY)",
                      style: GoogleFonts.quicksand(color: Colors.blueGrey),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "City",
                          style: GoogleFonts.quicksand(
                              color: Colors.black, fontSize: 20),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          style: GoogleFonts.quicksand(color: Colors.black),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "State/Province",
                          style: GoogleFonts.quicksand(
                              color: Colors.black, fontSize: 20),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          style: GoogleFonts.quicksand(color: Colors.black),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Checkbox(value: false, onChanged: (val) {}),
                        Text(
                          "Does Not Apply",
                          style: GoogleFonts.quicksand(
                              color: Colors.black, fontSize: 15),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
