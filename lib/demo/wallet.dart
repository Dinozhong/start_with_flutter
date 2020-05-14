
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sacco/sacco.dart';

final networkInfo = NetworkInfo(
    name: "", bech32Hrp: "cosmos", lcdUrl: "http://172.168.0.78:1317");


getWallet() async{
      SharedPreferences prefs = await SharedPreferences.getInstance();
      var mnemonicString = prefs.getStringList("mnemonic");
      final wallet = Wallet.derive(mnemonicString, networkInfo);
      return wallet;
}
