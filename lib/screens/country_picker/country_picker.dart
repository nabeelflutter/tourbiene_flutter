import 'package:country_calling_code_picker/picker.dart';
import 'package:flutter/material.dart';

class CountryPicker extends StatefulWidget {
  const CountryPicker({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CountryPickerState createState() => _CountryPickerState();
}

class _CountryPickerState extends State<CountryPicker> {
  Country? _selectedCountry;

  @override
  void initState() {
    initCountry();
    super.initState();
  }

  void initCountry() async {
    final country = await getDefaultCountry(context);
    setState(() {
      _selectedCountry = country;
    });
  }

  @override
  Widget build(BuildContext context) {
    final country = _selectedCountry;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Country Calling Code Picker'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            country == null
                ? Container()
                : Column(
                    children: <Widget>[
                      Image.asset(
                        country.flag,
                        package: countryCodePackageName,
                        width: 100,
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Text(
                        '${country.callingCode} ${country.name} (${country.countryCode})',
                        textAlign: TextAlign.center,
                        style: const TextStyle(fontSize: 24),
                      ),
                    ],
                  ),
            const SizedBox(
              height: 100,
            ),
            const SizedBox(
              height: 24,
            ),
            MaterialButton(
              color: Colors.orange,
              onPressed: _onPressedShowBottomSheet,
              child: const Text('Select Country using bottom sheet'),
            ),
            const SizedBox(
              height: 24,
            ),
          ],
        ),
      ),
    );
  }

  void _onPressedShowBottomSheet() async {
    final country = await showCountryPickerSheet(
      context,
    );
    if (country != null) {
      setState(() {
        _selectedCountry = country;
      });
    }
  }

  // ignore: unused_element
  void _onPressedShowDialog() async {
    final country = await showCountryPickerDialog(
      context,
    );
    if (country != null) {
      setState(() {
        _selectedCountry = country;
      });
    }
  }
}

class PickerPage extends StatelessWidget {
  const PickerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select Country'),
      ),
      // ignore: avoid_unnecessary_containers
      body: Container(
        child: CountryPickerWidget(
          onSelected: (country) => Navigator.pop(context, country),
        ),
      ),
    );
  }
}
