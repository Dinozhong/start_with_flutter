
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sacco/sacco.dart';

final networkInfo = NetworkInfo(
    name: "", bech32Hrp: "cosmos", lcdUrl: "http://172.168.0.78:1317");


getWallet() async{
      SharedPreferences prefs = await SharedPreferences.getInstance();
<<<<<<< HEAD
      var mnemonicString =
      'final random flame cinnamon grunt haz]ard easily mutual resist pond solution define knife female tongue crime atom jaguar alert library best forum lesson rigid';
//  prefs.getStringList("mnemonic");
final mnemonic = mnemonicString.split(' ');
      final wallet = Wallet.derive(mnemonic, networkInfo);
=======
      var mnemonicString = prefs.getStringList("mnemonic");
      final wallet = Wallet.derive(mnemonicString, networkInfo);
>>>>>>> e71602d3626adb2ee4c855075d8d5976f0908ba0
      return wallet;
}
