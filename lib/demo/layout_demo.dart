import 'package:flutter/material.dart';
import 'package:sacco/sacco.dart';
<<<<<<< HEAD
import 'package:hex/hex.dart';
import 'wallet.dart';
=======
>>>>>>> e71602d3626adb2ee4c855075d8d5976f0908ba0

class LayoutDemo extends StatelessWidget {
  final networkInfo = NetworkInfo(name: '', bech32Hrp: 'cosmos', lcdUrl: 'http://172.168.0.78:1317');
  final String mnemonicString =
      'final random flame cinnamon grunt haz]ard easily mutual resist pond solution define knife female tongue crime atom jaguar alert library best forum lesson rigid';

  @override
  Widget build(BuildContext context) {
    final mnemonic = mnemonicString.split(' ');

    final wallet = Wallet.derive(mnemonic, networkInfo);

    final message = StdMsg(
      type: "cosmos-sdk/MsgSend",
      value: {
        "from_address": "cosmos1huydeevpz37sd9snkgul6070mstupukw00xkw9",
        "to_address": "cosmos18rwfv9yj7u4zmahv4y299ft086j704cxal9mtf",
        "amount": [
          {"denom": "zcoin", "amount": "1"}
        ]
      },
    );

    final stdTx = TxBuilder.buildStdTx(stdMsgs: [message], memo: '');
    // final a = getWallet();
    print(wallet.bech32Address);
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          AspectRatio(
            aspectRatio: 1.0 / 1.0,
            child: Container(
                color: Colors.lightBlue,
                child: Column(
                  
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      wallet.bech32Address,
                      style: TextStyle(fontSize: 16.0),
                    ),
                    
                    SizedBox(
                      height: 20.0,
                    ),
                    Text('${wallet.ecPrivateKey}'),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text('${wallet.ecPublicKey}'),
                    SizedBox(
                      height: 40.0,
                    ),
                    Container(
                      padding: EdgeInsets.all(12.0),
                      width: double.infinity,
                      child: RaisedButton(
                      child: Text('交易'),
                      color: Colors.pinkAccent,
                      onPressed: () async {
                        final signedStdTx = await TxSigner.signStdTx(
                            wallet: wallet, stdTx: stdTx);
                        final result = await TxSender.broadcastStdTx(
                          wallet: wallet,
                          stdTx: signedStdTx,
                        );

                        // Check the result
                        if (result.success) {
                          print("Tx send successfully. Hash: ${result.hash}");
                        } else {
                          print("Tx send error: ${result.error.errorMessage}");
                        }
                      },
                    ),
                    )
                  ],
                )),
          )
        ],
      ),
    );
  }
}

class StackDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Stack(
            children: <Widget>[
              SizedBox(
                child: Container(
                  width: 200,
                  height: 300,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(139, 54, 255, 1.0),
                      borderRadius: BorderRadius.circular(8.0)),
                ),
              ),
              SizedBox(
                child: Container(
                  width: 100,
                  height: 100,
                  child:
                      Icon(Icons.brightness_2, color: Colors.red, size: 32.0),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(3, 54, 255, 1.0),
                      shape: BoxShape.circle,
                      gradient: RadialGradient(colors: [
                        Color.fromRGBO(7, 102, 255, 1.0),
                        Color.fromRGBO(3, 54, 255, 1.0)
                      ])),
                ),
              ),
              Positioned(
                top: 20.0,
                right: 20.0,
                child: Icon(Icons.ac_unit, color: Colors.white, size: 18.0),
              ),
              Positioned(
                top: 80.0,
                right: 40.0,
                child: Icon(Icons.ac_unit, color: Colors.white, size: 20.0),
              ),
              Positioned(
                top: 140.0,
                right: 30.0,
                child: Icon(Icons.ac_unit, color: Colors.white, size: 22.0),
              ),
              Positioned(
                top: 180.0,
                right: 60.0,
                child: Icon(Icons.ac_unit, color: Colors.white, size: 16.0),
              ),
              Positioned(
                top: 230.0,
                right: 70.0,
                child: Icon(Icons.ac_unit, color: Colors.white, size: 24.0),
              ),
              Positioned(
                top: 270.0,
                right: 30.0,
                child: Icon(Icons.ac_unit, color: Colors.white, size: 16.0),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class IconBadge extends StatelessWidget {
  final IconData icon;
  final double size;

  IconBadge(this.icon, {this.size = 32.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(icon, size: size, color: Colors.white),
      width: size + 60,
      height: size + 60,
      color: Color.fromRGBO(3, 54, 255, 1.0),
    );
  }
}
