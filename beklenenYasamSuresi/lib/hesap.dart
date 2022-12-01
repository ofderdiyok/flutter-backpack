import 'package:beklenen_yasam_suresi/user_data.dart';

class Hesap{
  UserData _userData;
  Hesap(this._userData);

  int hesaplama(){
    double sonuc;

    sonuc = 80+ _userData.yapilanSporGunSayisi - _userData.icilenSigara;
    sonuc = sonuc + (_userData.boy/_userData.kilo);

    _userData.seciliCinsiyet=="Kadın" ? sonuc+=3 : sonuc-=5;

    return sonuc.toInt();
  }
}