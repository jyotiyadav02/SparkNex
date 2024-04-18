import 'package:flutter/material.dart';
import 'package:sparknex/widgets/button.dart';

class SparkBotSettings extends StatefulWidget {
  const SparkBotSettings({super.key});

  @override
  State<SparkBotSettings> createState() => _SparkBotSettingsState();
}

class _SparkBotSettingsState extends State<SparkBotSettings> {

  bool typyingEnabled = false;
  bool teachSparkBot = false;
  bool sparkbotAccess = false;
  bool dataSharing = false;
  bool sparkbotUpdates = false;
    double responseSpeed = 0.5; // Initial value for response speed
      double _value = 0.5; // Initial value

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    "assets/images/bot.jpeg",
                    height: 50,
                    width: 50,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 7),
              const Text(
                "Customize Your SparkBot",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Color.fromARGB(255, 44, 5, 111),
                ),
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Customize SparkBot’s Name ",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Color.fromARGB(255, 44, 5, 111),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2,
                      color: Color.fromRGBO(4, 55, 111, 0.7),
                    ), // Adjust borde
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'SparkBot',
                        border: InputBorder.none, // Remove the default border
                        hintStyle: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(4, 55, 111, 0.7),
                        ),
                        suffixIcon: Icon(Icons.edit,
                            color: Color.fromARGB(255, 44, 5, 111)),
                      ),
                      maxLines: 1,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  "Personalize how SparkBot addresses you",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Color.fromARGB(255, 44, 5, 111),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2,
                      color: Color.fromRGBO(4, 55, 111, 0.7),
                    ), // Adjust borde
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'John',
                        border: InputBorder.none, // Remove the default border
                        hintStyle: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(4, 55, 111, 0.7),
                        ),
                        suffixIcon: Icon(Icons.edit,
                            color: Color.fromARGB(255, 44, 5, 111)),
                      ),
                      maxLines: 1,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    // Navigator.push(context, MaterialPageRoute(builder: (Context)=>AccountVisibilityScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: 0, // Remove elevation to match your design
                    backgroundColor: const Color.fromARGB(255, 44, 5, 111),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Customize SparkBot's responses",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                            color: Colors.white,
                          ),
                        ),
                        Icon(Icons.arrow_circle_right, color: Colors.white),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    // Navigator.push(context, MaterialPageRoute(builder: (Context)=>()));
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: 0, // Remove elevation to match your design
                    backgroundColor: const Color.fromARGB(255, 44, 5, 111),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Choose SparkBot's personality",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                            color: Colors.white,
                          ),
                        ),
                        Icon(Icons.arrow_circle_right, color: Colors.white),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                        const Text(
            "Adjust how quickly SparkBot responds",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16,
              color: Color.fromARGB(255, 44, 5, 111),
            ),
                    ),
                        // const SizedBox(height: 10),
                        Slider(
              value: _value,
              onChanged: (newValue) {
                setState(() {
                  _value = newValue;
                });
              },
              min: 0,
              max: 1,
              divisions: 2,
              label: _getLabel(_value),
            ),


            
              // Slider(
              //   value: responseSpeed,
              //   onChanged: (value) {
              //     setState(() {
              //       responseSpeed = value;
              //     });
              //   },
              //   min: 0.0,
              //   max: 1.0,
              //   divisions: 2,
              //   label: responseSpeed == 0.0
              //       ? 'Slow'
              //       : responseSpeed == 0.5
              //           ? 'Medium'
              //           : 'Fast',
              // ),
                  //  const SizedBox(height: 10),
                        const Text(
            'If you prefer a faster response, move the slider towards "Fast."',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 10,
              color: Color.fromARGB(255, 44, 5, 111),
            ),
                    ),
                  //  const SizedBox(height: 10),
                        const Text(
            'For a more relaxed pace, slide it towards "Slow."',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 10,
              color: Color.fromARGB(255, 44, 5, 111),
            ),
                    ),
                 const SizedBox(height: 10),

                        const Text(
            'Enable/disable the typing indicator',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16,
              color: Color.fromARGB(255, 44, 5, 111),
            ),
                    ),
              //  const SizedBox(height: 10),
                      
            
                            Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   const Text(
                    "Typing Indicator",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Color.fromARGB(255, 44, 5, 111),
                    ),
                  ),
                  // const SizedBox(width: 20),
                  Switch(
                    value: typyingEnabled ,
                    onChanged: (value) {
                      setState(() {
                      typyingEnabled  = value;
                      });
                    },
                    activeColor: Colors.white, // Customize the active color
                    activeTrackColor: const Color.fromARGB(
                        255, 44, 5, 111), // Customize the active track color
                    inactiveThumbColor: const Color.fromARGB(
                        255, 44, 5, 111), // Customize the inactive thumb color
                    inactiveTrackColor: Colors.white
                        .withOpacity(0.5), // Customize the inactive track color
                  ),
                ],
              ),
                    const SizedBox(height:10),
          
                        const Text(
            "Teach SparkBot new things during our conversations",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16,
              color: Color.fromARGB(255, 44, 5, 111),
            ),
                    ),
                
            
                            Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   const Text(
                    "Learning Mode",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Color.fromARGB(255, 44, 5, 111),
                    ),
                  ),
                  // const SizedBox(width: 20),
                  Switch(
                    value: teachSparkBot,
                    onChanged: (value) {
                      setState(() {
                      teachSparkBot = value;
                      });
                    },
                    activeColor: Colors.white, // Customize the active color
                    activeTrackColor: const Color.fromARGB(
                        255, 44, 5, 111), // Customize the active track color
                    inactiveThumbColor: const Color.fromARGB(
                        255, 44, 5, 111), // Customize the inactive thumb color
                    inactiveTrackColor: Colors.white
                        .withOpacity(0.5), // Customize the inactive track color
                  ),
                ],
              ),
                   
             const SizedBox(height: 10),
                        const Text(
            "Manage SparkBot's access to your profile information",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16,
              color: Color.fromARGB(255, 44, 5, 111),
            ),
                    ),
                   
            
                            Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   const Text(
                    "Profile Access",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Color.fromARGB(255, 44, 5, 111),
                    ),
                  ),
                  // const SizedBox(width: 20),
                  Switch(
                    value: sparkbotAccess,
                    onChanged: (value) {
                      setState(() {
                      sparkbotAccess = value;
                      });
                    },
                    activeColor: Colors.white, // Customize the active color
                    activeTrackColor: const Color.fromARGB(
                        255, 44, 5, 111), // Customize the active track color
                    inactiveThumbColor: const Color.fromARGB(
                        255, 44, 5, 111), // Customize the inactive thumb color
                    inactiveTrackColor: Colors.white
                        .withOpacity(0.5), // Customize the inactive track color
                  ),
                ],
              ),
                    const SizedBox(height:10),
          
                        const Text(
            "Control data sharing preferences with SparkBot",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16,
              color: Color.fromARGB(255, 44, 5, 111),
            ),
                    ),
                 
            
                            Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   const Text(
                    "Data Sharing",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Color.fromARGB(255, 44, 5, 111),
                    ),
                  ),
               
                  Switch(
                    value: dataSharing,
                    onChanged: (value) {
                      setState(() {
                      dataSharing = value;
                      });
                    },
                    activeColor: Colors.white, // Customize the active color
                    activeTrackColor: const Color.fromARGB(
                        255, 44, 5, 111), // Customize the active track color
                    inactiveThumbColor: const Color.fromARGB(
                        255, 44, 5, 111), // Customize the inactive thumb color
                    inactiveTrackColor: Colors.white
                        .withOpacity(0.5), // Customize the inactive track color
                  ),
                ],
              ),
                    const SizedBox(height:10),
                                            const Text(
            "Receive alerts for SparkBot updates and interactions",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16,
              color: Color.fromARGB(255, 44, 5, 111),
            ),
                    ),
                   const SizedBox(height: 10),
            
                            Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   const Text(
                    "Notifications",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Color.fromARGB(255, 44, 5, 111),
                    ),
                  ),
              
                  Switch(
                    value: sparkbotUpdates,
                    onChanged: (value) {
                      setState(() {
                      sparkbotUpdates= value;
                      });
                    },
                    activeColor: Colors.white, // Customize the active color
                    activeTrackColor: const Color.fromARGB(
                        255, 44, 5, 111), // Customize the active track color
                    inactiveThumbColor: const Color.fromARGB(
                        255, 44, 5, 111), // Customize the inactive thumb color
                    inactiveTrackColor: Colors.white
                        .withOpacity(0.5), // Customize the inactive track color
                  ),
                ],
              ),
                    const SizedBox(height:10),
            Align(
              alignment: Alignment.bottomRight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ReusableButton(
                    color: Colors.white,
                    borderColor: const Color.fromARGB(255, 44, 5, 111),
                    icon: Icons.loop,
                    width: 115,
                    height: 50,
                    onPressed: () {},
                    text: const Text("Reset"),
                    textColor: const Color.fromARGB(255, 44, 5, 111),
                    iconColor: const Color.fromARGB(255, 44, 5, 111),
                  ),
                
                SizedBox(width:15),
                  ReusableButton(
                    color: const Color.fromARGB(255, 44, 5, 111),
                    borderColor: const Color.fromARGB(255, 44, 5, 111),
                  
                    width: 90,
                    height: 48,
                    onPressed: () {
                    },
                    text: const Text("Save"),
                    textColor: Colors.white,
                    iconColor: Colors.white,
                  ),
                ],
              ),
            ),



              ],
            ),
          ),
        ));
  }
}

             String _getLabel(double value) {
    if (value <= 0.33) {
      return 'Fast';
    } else if (value <= 0.66) {
      return 'Medium';
    } else {
      return 'Slow';
    }
  }