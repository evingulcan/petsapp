import 'package:flutter/material.dart';
import 'package:petsapp/views/homepage/altBar/healthKalp/kalpay.dart';
import 'package:petsapp/views/homepage/altBar/healthKalp/kalpgun.dart';
import 'package:petsapp/views/homepage/altBar/healthKalp/kalphafta.dart';
import 'package:petsapp/views/homepage/altBar/healthKan/kanay.dart';
import 'package:petsapp/views/homepage/altBar/healthKan/kangun.dart';
import 'package:petsapp/views/homepage/altBar/healthKan/kanhafta.dart';

class KanPage extends StatefulWidget {
  @override
  _KanPageState createState() => _KanPageState();
}

class _KanPageState extends State<KanPage> with TickerProviderStateMixin {
  // TickerProviderStateMixin, aktif düğmeyi değiştirirken animasyonda solmaya/solmaya izin verir

// bu, düğme tıklamalarını ve sekme değiştirmeyi kontrol eder
  TabController _controller;

// bu, bir düğme kapalı durumdan açık duruma geçtiğinde animasyonu kontrol eder
  AnimationController _animationControllerOn;

// bu, bir düğme açık durumdan kapalı duruma geçtiğinde animasyonu kontrol eder
  AnimationController _animationControllerOff;

  // bu, bir düğme açık duruma geçtiğinde arka plan rengi değerlerini verecektir
  Animation _colorTweenBackgroundOn;
  Animation _colorTweenBackgroundOff;

// bu, açık durumuna geçtiğinde bir düğmenin ön plan renk değerlerini verecektir
  Animation _colorTweenForegroundOn;
  Animation _colorTweenForegroundOff;

// kaydırırken, _controller.index değeri yalnızca animasyondan sonra değişir, bu nedenle,animasyonları tetiklemek ve mevcut dizini kaydetmek için buna ihtiyacımız var
  int _currentIndex = 0;


// önceki aktif sekmeyi kaydeder
  int _prevControllerIndex = 0;


// sekme animasyonunun değerini kaydeder. Örneğin 1. ve 2. sekme arasında ise bu değer 0,5 olacaktır.
  double _aniValue = 0.0;


// sekme animasyonunun önceki değerini kaydeder. Animasyonun yönünü belirlemek için kullanılır
  double _prevAniValue = 0.0;

// bunlar bizim sekme simgelerimiz olacak. Düğmelerinizin içeriği için istediğinizi kullanabilirsiniz.
  List _text = [
    ("gün"),
    ("hafta"),
    ("ay"),

  ];

  // aktif butonun ön plan rengi
  Color _foregroundOn = Colors.white;
  Color _foregroundOff = Colors.black;


// aktif butonun arka plan rengi
  Color _backgroundOn = Colors.red;
  Color _backgroundOff = Colors.white;


// TabBar için kaydırma denetleyicisi
  ScrollController _scrollController = new ScrollController();

  // bu, her Sekme için anahtarları Sekme Çubuğuna kaydeder, böylece kaydırma denetleyicisi için konumlarını ve boyutlarını alabiliriz
  List _keys = [];

  // butona basıldıysa kayıt ol
  bool _buttonTap = false;

  @override
  void initState() {
    super.initState();

    for (int index = 0; index < _text.length; index++) {
      // her Sekme için bir GlobalKey oluşturun
      _keys.add(new GlobalKey());
    }


    // bu, 3 sekmeli denetleyiciyi oluşturur (bizim durumumuzda)
    _controller = TabController(vsync: this, length: _text.length);
    // bu, her kaydırma animasyonu olduğunda işlevi yürütür
    _controller.animation.addListener(_handleTabAnimation);
    // bu, _controller.index değeri her değiştiğinde işlevi yürütür
    _controller.addListener(_handleTabChange);

    _animationControllerOff =
        AnimationController(vsync: this, duration: Duration(milliseconds: 75));
    // böylece etkin olmayan düğmeler "son" durumlarında (renkli) başlar
    _animationControllerOff.value = 1.0;
    _colorTweenBackgroundOff =
        ColorTween(begin: _backgroundOn, end: _backgroundOff)
            .animate(_animationControllerOff);
    _colorTweenForegroundOff =
        ColorTween(begin: _foregroundOn, end: _foregroundOff)
            .animate(_animationControllerOff);

    _animationControllerOn =
        AnimationController(vsync: this, duration: Duration(milliseconds: 150));
    // böylece etkin olmayan düğmeler "son" durumlarında (renkli) başlar
    _animationControllerOn.value = 1.0;
    _colorTweenBackgroundOn =
        ColorTween(begin: _backgroundOff, end: _backgroundOn)
            .animate(_animationControllerOn);
    _colorTweenForegroundOn =
        ColorTween(begin: _foregroundOff, end: _foregroundOn)
            .animate(_animationControllerOn);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Adım Sayısı'),
          elevation: 0.0,
        ),
        backgroundColor: Colors.yellow,
        body: Column(
            children: <Widget>[
              // bu TabBar
              Container(
                  height: 49.0,
                  // bu, sekme düğmelerimizi oluşturur
                  child: Padding(
                    padding: const EdgeInsets.only(left: 70),
                    child: ListView.builder(
                      // bu, boyutundan daha uzağa kaydırırken TabBar'a bir sıçrama efekti verir
                        physics: BouncingScrollPhysics(),
                        controller: _scrollController,
                        // listeyi yatay yap
                        scrollDirection: Axis.horizontal,
                        // sekme sayısı
                        itemCount: _text.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            // her düğmenin anahtarı
                              key: _keys[index],
                              // düğmeler için dolgu
                              padding: EdgeInsets.all(6.0),
                              child: ButtonTheme(
                                  child: AnimatedBuilder(
                                    animation: _colorTweenBackgroundOn,
                                    builder: (context, child) => FlatButton(
                                      // butonun arkaplan rengini al (durumuna bağlı olarak)
                                        color: _getBackgroundColor(index),
                                        // düğmeyi köşeleri yuvarlak bir dikdörtgen yap
                                        shape: RoundedRectangleBorder(
                                            borderRadius: new BorderRadius.circular(7.0)),
                                        onPressed: () {
                                          setState(() {
                                            _buttonTap = true;
                                            // denetleyiciyi Sekme Görünümleri arasında geçiş yapması için tetikleyin
                                            _controller.animateTo(index);
                                            // geçerli dizini ayarla
                                            _setCurrentIndex(index);
                                            // dokunulan düğmeye ilerleyin (etkin düğmeye dokunursak ve konumunda değilse gereklidir)
                                            _scrollTo(index);

                                          });
                                        },
                                        child: Text(
                                          // simgeyi al
                                            _text[index],
                                            // simgenin rengini al (durumuna bağlı olarak)
                                            style:TextStyle(color: _getForegroundColor(index),)
                                        )),
                                  )));
                        }),
                  )),
              Flexible(
                // bu, Sekme Görünümlerimizi barındıracak
                  child: TabBarView(
                    // ve denetleyici tarafından kontrol edilir
                    controller: _controller,
                    children: <Widget>[
                      // Sekme Görünümlerimiz
                      Container(
                        child: KanGun(),
                      ),
                      Container(
                        child: KanHafta(),
                      ),
                      Container(
                        child: KanAy(),
                      ),
                    ],
                  )),
            ]));
  }

  // sekme değiştirme animasyonu sırasında çalışır
  _handleTabAnimation() {
    // animasyonun değerini alır. Örneğin 1. ve 2. sekme arasında ise bu değer 0,5 olacaktır.
    _aniValue = _controller.animation.value;


    // düğmeye basılmamışsa, bu, kullanıcının kaydırdığı ve kaydırılan miktarın 1'den az olduğu anlamına gelir (bu, komşu Sekme Görünümleri arasında kaydırdığımız anlamına gelir)
    if (!_buttonTap && ((_aniValue - _prevAniValue).abs() < 1)) {
      // geçerli sekme dizinini ayarla
      _setCurrentIndex(_aniValue.round());
    }

    // önceki Animasyon Değerini kaydet
    _prevAniValue = _aniValue;
  }

  // görüntülenen sekme değiştiğinde çalışır
  _handleTabChange() {
    // bir düğmeye dokunulduysa, geçerli dizini değiştirin
    if (_buttonTap) _setCurrentIndex(_controller.index);

    // bu, düğmeye dokunmayı sıfırlar
    if ((_controller.index == _prevControllerIndex) ||
        (_controller.index == _aniValue.round())) _buttonTap = false;

    // önceki denetleyici dizinini kaydet
    _prevControllerIndex = _controller.index;
  }

  _setCurrentIndex(int index) {
    // eğer gerçekten dizini değiştiriyorsak
    if (index != _currentIndex) {
      setState(() {
        // dizini değiştir
        _currentIndex = index;
      });

      // düğme animasyonunu tetikle
      _triggerAnimation();

      // TabBar'ı doğru konuma kaydırın (kaydırılabilir bir çubuğumuz varsa)
      _scrollTo(index);
    }
  }

  _triggerAnimation() {
    // animasyonları sıfırlayın ki kullanıma hazır olsunlar
    _animationControllerOn.reset();
    _animationControllerOff.reset();

    // animasyonları çalıştır!
    _animationControllerOn.forward();
    _animationControllerOff.forward();
  }

  _scrollTo(int index) {

    // ekran genişliğini al. Bu, ekran dışında bir öğemiz olup olmadığını kontrol etmek için kullanılır.
    double screenWidth = MediaQuery.of(context).size.width;

    // kaydırmak istediğimiz düğmeyi al
    RenderBox renderBox = _keys[index].currentContext.findRenderObject();

    // boyutunu al
    double size = renderBox.size.width;
    // ve konum
    double position = renderBox.localToGlobal(Offset.zero).dx;

    // bu, düğmenin ekranın ortasından ne kadar uzakta olduğu ve yerine oturtmak için ne kadar kaydırmamız gerektiğidir.
    double offset = (position + size / 2) - screenWidth / 2;

    // düğme ortanın solundaysa
    if (offset < 0) {
      // ilk düğmeyi al
      renderBox = _keys[0].currentContext.findRenderObject();
      // TabBar'ın ilk düğmesinin konumunu al
      position = renderBox.localToGlobal(Offset.zero).dx;


      // Ofset, ilk düğmeyi sol taraftan uzaklaştırırsa, bu hareketi sınırlandırırız, böylece ilk düğme sol tarafa yapışır
      if (position > offset) offset = position;
    } else {
      // düğme ortanın sağındaysa

      // son düğmeyi al
      renderBox = _keys[_text.length - 1].currentContext.findRenderObject();
      // konumunu al
      position = renderBox.localToGlobal(Offset.zero).dx;
      // ve boyut
      size = renderBox.size.width;

      // son düğme sağ tarafa ulaşmazsa, TabBar için ekranın sınırı olarak sağ tarafını kullanın
      if (position + size < screenWidth) screenWidth = position + size;

      // ofset son düğmeyi sağ kenar sınırından uzaklaştırırsa, bu hareketi azaltırız, böylece son düğme sağ kenar sınırına yapışır
      if (position + size - offset < screenWidth) {
        offset = position + size - screenWidth;
      }
    }


    // hesaplanan miktarı kaydır
    _scrollController.animateTo(offset + _scrollController.offset,
        duration: new Duration(milliseconds: 150), curve: Curves.easeInOut);
  }

  _getBackgroundColor(int index) {
    if (index == _currentIndex) {
      // eğer aktif buton ise
      return _colorTweenBackgroundOn.value;
    } else if (index == _prevControllerIndex) {
      // önceki aktif buton ise
      return _colorTweenBackgroundOff.value;
    } else {
      // buton aktif değilse
      return _backgroundOff;
    }
  }

  _getForegroundColor(int index) {
    // yukarıdaki ile aynı
    if (index == _currentIndex) {
      return _colorTweenForegroundOn.value;
    } else if (index == _prevControllerIndex) {
      return _colorTweenForegroundOff.value;
    } else {
      return _foregroundOff;
    }
  }
}