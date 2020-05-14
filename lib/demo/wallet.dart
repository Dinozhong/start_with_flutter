
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sacco/sacco.dart';

final networkInfo = NetworkInfo(
    name: "", bech32Hrp: "cosmos", lcdUrl: "http://172.168.0.78:1317");


getWallet() async{
      SharedPreferences prefs = await SharedPreferences.getInstance();
      var mnemonicString =
      'final random flame cinnamon grunt haz]ard easily mutual resist pond solution define knife female tongue crime atom jaguar alert library best forum lesson rigid';
//  prefs.getStringList("mnemonic");
final mnemonic = mnemonicString.split(' ');
      final wallet = Wallet.derive(mnemonic, networkInfo);
      return wallet;
}
