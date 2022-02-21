import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerEffect extends StatefulWidget {
  const ShimmerEffect({Key? key}) : super(key: key);

  @override
  _ShimmerEffectState createState() => _ShimmerEffectState();
}

class _ShimmerEffectState extends State<ShimmerEffect> {
  bool _enabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shimmer Effect in Flutte"),
        centerTitle: true,
      ),

      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Expanded(
              child: Shimmer.fromColors(
                baseColor: Colors.red,
                highlightColor: Colors.yellow,
                enabled: _enabled,
                child: ListView.builder(
                  itemBuilder: (_, __) => Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width: 48.0,
                          height: 48.0,
                          color: Colors.white,
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                width: double.infinity,
                                height: 8.0,
                                color: Colors.white,
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(vertical: 2.0),
                              ),
                              Container(
                                width: double.infinity,
                                height: 8.0,
                                color: Colors.white,
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(vertical: 2.0),
                              ),
                              Container(
                                width: 40.0,
                                height: 8.0,
                                color: Colors.white,
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(vertical: 2.0),
                              ),
                              Container(
                                width: 40.0,
                                height: 8.0,
                                color: Colors.white,
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(vertical: 2.0),
                              ),
                              Container(
                                width: 40.0,
                                height: 8.0,
                                color: Colors.white,
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(vertical: 2.0),
                              ),
                              Container(
                                width: 40.0,
                                height: 8.0,
                                color: Colors.white,
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(vertical: 2.0),
                              ),
                              Container(
                                width: 40.0,
                                height: 8.0,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  itemCount: 6,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              // ignore: deprecated_member_use
              child: FlatButton(
                  onPressed: () {
                    setState(() {
                      _enabled = !_enabled;
                    });
                  },
                  child: Text(
                    _enabled ? 'Stop' : 'Play',
                    style: Theme.of(context).textTheme.button!.copyWith(
                        fontSize: 18.0,
                        color: _enabled ? Colors.redAccent : Colors.green),
                  )),
            )
          ],
        ),
      ),
      // body: Center(
      //   child: Shimmer.fromColors(
      //     child: Text(
      //       'Shimmer',
      //       textAlign: TextAlign.center,
      //       style: TextStyle(
      //         fontSize: 40.0,
      //         fontWeight: FontWeight.bold,
      //       ),
      //     ),
      //     baseColor: Colors.red,
      //     highlightColor: Colors.yellow,
      //   ),
      // ),
    );
  }
}