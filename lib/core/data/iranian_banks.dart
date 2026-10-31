class IranianBanks {
  static const List<String> all = [
    'بانک ملی ایران', 'بانک سپه', 'بانک صنعت و معدن', 'بانک کشاورزی', 'بانک مسکن',
    'بانک توسعه صادرات', 'بانک توسعه تعاون', 'پست بانک ایران', 'بانک اقتصاد نوین',
    'بانک پارسیان', 'بانک پاسارگاد', 'بانک کارآفرین', 'بانک سامان', 'بانک سینا',
    'بانک خاورمیانه', 'بانک شهر', 'بانک دی', 'بانک صادرات ایران', 'بانک تجارت',
    'بانک ملت', 'بانک رفاه کارگران', 'بانک ایران زمین', 'بانک گردشگری',
    'بانک حکمت ایرانیان', 'بانک انصار', 'بانک مهر ایران', 'موسسه اعتباری ملل',
    'موسسه اعتباری کوثر', 'بانک رسالت'
  ];

  static String? logoAssetFor(String bankName) {
    final map = {
      'بانک ملی ایران': 'assets/banks/melli.svg',
      'بانک ملت': 'assets/banks/mellat.svg',
      'بانک صادرات ایران': 'assets/banks/saderat.svg',
      'بانک تجارت': 'assets/banks/tejarat.svg',
      'بانک سپه': 'assets/banks/sepah.svg',
      'بانک مسکن': 'assets/banks/maskan.svg',
      'بانک پاسارگاد': 'assets/banks/pasargad.svg',
      'بانک سامان': 'assets/banks/saman.svg',
      'بانک پارسیان': 'assets/banks/parsian.svg',
      'بانک رسالت': 'assets/banks/resalat.svg',
      'بانک کشاورزی': 'assets/banks/keshavarzi.svg',
      'بانک شهر': 'assets/banks/shahr.svg',
      'بانک دی': 'assets/banks/dey.svg',
      'بانک سینا': 'assets/banks/sina.svg',
      'بانک کارآفرین': 'assets/banks/karafarin.svg',
      'بانک پست بانک ایران': 'assets/banks/post.svg',
      'بانک ایران زمین': 'assets/banks/iran-zamin.svg',
      'بانک گردشگری': 'assets/banks/gardeshgari.svg',
      'بانک حکمت ایرانیان': 'assets/banks/bank-hekmat.svg',
      'بانک انصار': 'assets/banks/ansar.svg',
      'بانک مهر ایران': 'assets/banks/mehr-iran.svg',
      'بانک قوامین': 'assets/banks/ghavamin.svg',
      'بانک خاورمیانه': 'assets/banks/khavar-mianeh.svg',
      'بانک توسعه صادرات': 'assets/banks/tosee-saderat.svg',
      'بانک توسعه تعاون': 'assets/banks/tosee-taavon.svg',
    };
    return map[bankName];
  }
}
