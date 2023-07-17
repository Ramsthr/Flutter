import 'package:flutter/material.dart';
import 'package:game/widgets/reusablewidget.dart';

class HomePage extends StatelessWidget {
  late double _deviceheigth, _devicewidth;
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    _deviceheigth = MediaQuery.of(context).size.height;
    _devicewidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: _deviceheigth,
          width: _devicewidth,
          padding: EdgeInsets.symmetric(horizontal: _devicewidth * 0.2),
          color: Colors.red,
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  _pagetitle(),
                  _bookRide(),
                ],
              ),
              _imagee(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _pagetitle() {
    return const Text(
      "GoMoooon",
      style: TextStyle(
        fontSize: 70,
        color: Colors.amber,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _imagee() {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage("assets/images/diamond.jpeg"),
        ),
      ),
    );
  }

  Widget _namesdropDownWidget() {
    return CustomDropDownWidget(
        values: ["Ramesh", "Suresh"], width: _devicewidth);
  }

  Widget _bookRide() {
    return Container(
      height: _deviceheigth * 0.25,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _namesdropDownWidget(),
          _travellersdropDownWidget(),
          _bookbutton(),
        ],
      ),
    );
  }

  Widget _travellersdropDownWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomDropDownWidget(
            values: ["1", "2", "3", "4"], width: _devicewidth * 0.25),
        CustomDropDownWidget(
            values: ["y", "2", "3", "4"], width: _devicewidth * 0.25),
      ],
    );
  }

  Widget _bookbutton() {
    return Container(
      margin: EdgeInsets.only(bottom: _deviceheigth * 0.01),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      width: _devicewidth,
      child: MaterialButton(
        onPressed: () {},
        child: const Text(
          "BOOK RIDE",
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
