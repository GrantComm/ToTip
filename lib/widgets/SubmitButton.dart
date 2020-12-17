import 'package:flutter/material.dart';
import 'package:big_tip_app/screens/Result.dart';
import 'package:big_tip_app/classes/Summary.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';

class SubmitButton extends StatefulWidget {
  final Geolocator geolocator = Geolocator();
  Position _currentPosition;
  bool serviceEnabled;
  LocationPermission permission;
  String service;
  String rating;
  double finalAmount;
  SubmitButton({@required this.service, this.rating, this.finalAmount});
  @override
  _SubmitButtonState createState() => _SubmitButtonState();
}

class _SubmitButtonState extends State<SubmitButton> {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Text(
        'Submit',
        style: Theme.of(context).textTheme.headline4,
      ),
      color: Theme.of(context).primaryColor,
      onPressed: () {
        submit();
      },
    );
  }

  void submit() async {
    widget.serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!widget.serviceEnabled) {
      Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Result(
              summary: Summary(
                  widget.service, widget.finalAmount, widget.rating, 'N/A'))));
      return;
    }

    widget.permission = await Geolocator.checkPermission();
    if (widget.permission == LocationPermission.deniedForever) {
      Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Result(
              summary: Summary(
                  widget.service, widget.finalAmount, widget.rating, 'N/A'))));
      return;
    }

    if (widget.permission == LocationPermission.denied) {
      widget.permission = await Geolocator.requestPermission();
      if (widget.permission != LocationPermission.whileInUse &&
          widget.permission != LocationPermission.always) {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => Result(
                summary: Summary(widget.service, widget.finalAmount,
                    widget.rating, 'N/A'))));
      }
    }
    _getLocation();
    return;
  }

  _getLocation() {
    Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.best)
        .then((Position position) {
      setState(() {
        widget._currentPosition = position;
      });

      _getAddress();
    }).catchError((e) {
      print(e);
    });
  }

  _getAddress() async {
    try {
      List<Placemark> p = await placemarkFromCoordinates(
          widget._currentPosition.latitude, widget._currentPosition.longitude);
      Placemark place = p[0];
      Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Result(
              summary: Summary(widget.service, widget.finalAmount,
                  widget.rating, place.administrativeArea))));
    } catch (e) {
      print(e);
    }
  }
}
