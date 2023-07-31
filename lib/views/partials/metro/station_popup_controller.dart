import 'package:dailynow_app/models/map_stations.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';

class StationPopUpController extends GetxController {
  final RxList<MapStations> stationMap = <MapStations>[
    MapStations(
        lat: 38.73736907362792,
        lng: -9.134059630913418,
        stationName: 'Alameda',
        googleAdr: "https://goo.gl/maps/ZiSywDvWB4nAaMms9",
        metroAdr: "https://www.metrolisboa.pt/viajar/saldanha-linha-amarela/"),
    MapStations(
        lat: 38.73542477357675,
        lng: -9.145286828387968,
        stationName: 'Saldanha',
        googleAdr: "https://goo.gl/maps/vSEyxDwRxG6gfibi7",
        metroAdr: "https://www.metrolisboa.pt/viajar/saldanha-linha-amarela/"),
    MapStations(
        lat: 38.73535684168025,
        lng: 9.145274809297648,
        stationName: 'São Sebastião',
        googleAdr: "https://goo.gl/maps/8L5JzkuRb3toVVWy6",
        metroAdr: ""),
    MapStations(
        lat: 38.739663756442106,
        lng: -9.123914342635794,
        stationName: 'Olaias',
        googleAdr: "https://goo.gl/maps/MpWoEvEdQNKFN4tV9",
        metroAdr: ""),
    MapStations(
        lat: 38.747725363328264,
        lng: -9.118610291747924,
        stationName: 'Bela Vista',
        googleAdr: "https://goo.gl/maps/y1MoHFgMHUyKfGCa8",
        metroAdr: ""),
    MapStations(
        lat: 38.755513042958505,
        lng: -9.113912910578367,
        stationName: 'Chelas',
        googleAdr: "https://goo.gl/maps/z4NGbecMqJEnsgWC9",
        metroAdr: ""),
    MapStations(
        lat: 38.76132352927493,
        lng: -9.111937443426427,
        stationName: 'Olivais',
        googleAdr: "https://goo.gl/maps/dgYhXt7vnLPtrFQYA",
        metroAdr: ""),
    MapStations(
        lat: 38.76324223712773,
        lng: -9.103966260181755,
        stationName: 'Cabo Ruivo',
        googleAdr: "https://goo.gl/maps/RPJFF1oBWDfPLhYX6",
        metroAdr: ""),
    MapStations(
        lat: 38.76783611669974,
        lng: -9.099356836824757,
        stationName: 'Oriente',
        googleAdr: "https://goo.gl/maps/gJrszvqsrmVzm9786",
        metroAdr: ""),
    MapStations(
        lat: 38.77478244578803,
        lng: -9.102686023958181,
        stationName: 'Moscavide',
        googleAdr: "https://goo.gl/maps/VdLVVFFzp5vTMRha9",
        metroAdr: ""),
    MapStations(
        lat: 38.77510667688971,
        lng: -9.115509231786566,
        stationName: 'Encarnação',
        googleAdr: "https://goo.gl/maps/wF7xiwQScvornCdK6",
        metroAdr: ""),
    MapStations(
        lat: 38.769081141452,
        lng: -9.128540383525682,
        stationName: 'Aeroporto',
        googleAdr: "https://goo.gl/maps/qCxpGY3VBjnAhf9x8",
        metroAdr: ""),
    MapStations(
        lat: 38.760288586177424,
        lng: -9.166044784619046,
        stationName: 'Telheiras',
        googleAdr: "https://goo.gl/maps/o4BoipRhQUJGaR1z6",
        metroAdr: ""),
    MapStations(
        lat: 38.760145937883564,
        lng: -9.157889010333442,
        stationName: 'Campo Grande',
        googleAdr: "https://goo.gl/maps/T6ymUiTcKpJX16uq7",
        metroAdr: ""),
    MapStations(
        lat: 38.75346460859305,
        lng: -9.143881556548813,
        stationName: 'Alvalade',
        googleAdr: "https://goo.gl/maps/2xav54t1ZUWYsJNh8",
        metroAdr: ""),
    MapStations(
        lat: 38.74840313079833,
        lng: -9.141313523335679,
        stationName: 'Roma',
        googleAdr: "https://goo.gl/maps/JZyRFXS8vpDjxS459",
        metroAdr: ""),
    MapStations(
        lat: 38.742667569454674,
        lng: -9.133726152756227,
        stationName: 'Areeiro',
        googleAdr: "38.742631151720786, -9.133726152756227",
        metroAdr: ""),
    MapStations(
        lat: 38.73349035474407,
        lng: -9.134386122516274,
        stationName: 'Arroios',
        googleAdr: "https://goo.gl/maps/oGUuWJ6eZ4y5hETg8",
        metroAdr: ""),
    MapStations(
        lat: 38.72631478060627,
        lng: -9.134853037622165,
        stationName: 'Anjos',
        googleAdr: "https://goo.gl/maps/481DJzpfbS2Yx7zt6",
        metroAdr: ""),
    MapStations(
        lat: 38.72225315906133,
        lng: -9.135343298483937,
        stationName: 'Intendente',
        googleAdr: "https://goo.gl/maps/YWZvguaSUEjiBT73A",
        metroAdr: ""),
    MapStations(
        lat: 38.71621072101163,
        lng: -9.13617266048123,
        stationName: 'Martim Moniz',
        googleAdr: "https://goo.gl/maps/Ax5hzf9p3QRcusnB8",
        metroAdr: ""),
    MapStations(
        lat: 38.71387030288338,
        lng: -9.138369494501601,
        stationName: 'Rossio',
        googleAdr: "https://goo.gl/maps/wa7vU1Vg9MgYvs2h9",
        metroAdr: ""),
    MapStations(
        lat: 38.710860290103,
        lng: -9.140480940719977,
        stationName: 'Baixa-Chiado',
        googleAdr: "https://goo.gl/maps/vZtm22Bx5WgVxvPz8",
        metroAdr: ""),
    MapStations(
        lat: 38.706142748152814,
        lng: -9.145095268433002,
        stationName: 'Cais do Sodré',
        googleAdr: "https://goo.gl/maps/sgNsYhfH2zgPRS6x9",
        metroAdr: ""),
    MapStations(
        lat: 38.75219057302811,
        lng: -9.224182905844051,
        stationName: 'Reboleira',
        googleAdr: "https://goo.gl/maps/9TcMLjBYYDYc1nL69",
        metroAdr: ""),
    MapStations(
        lat: 38.75838837486981,
        lng: -9.219192511154217,
        stationName: 'Amadora Este',
        googleAdr: "https://goo.gl/maps/NTNjq29bjaMgEPMx9",
        metroAdr: ""),
    MapStations(
        lat: 38.76064635495399,
        lng: -9.204621790832483,
        stationName: 'Alfornelos',
        googleAdr: "https://goo.gl/maps/dk6QnHSnpsoUqVWo6",
        metroAdr: ""),
    MapStations(
        lat: 38.7621836621989,
        lng: -9.196982174448527,
        stationName: 'Pontinha',
        googleAdr: "https://goo.gl/maps/NM1M8hu3mNaS2aJR6",
        metroAdr: ""),
    MapStations(
        lat: 38.75922912048614,
        lng: -9.192761901862793,
        stationName: 'Carnide',
        googleAdr: "https://goo.gl/maps/siN4bYtaVbRzoeQG8",
        metroAdr: ""),
    MapStations(
        lat: 38.75330247139521,
        lng: -9.18865826351425,
        stationName: 'Colégio Militar/Luz',
        googleAdr: "https://goo.gl/maps/iF6j19TWefAHqmLn9",
        metroAdr: ""),
    MapStations(
        lat: 38.749603173072366,
        lng: -9.180043604242218,
        stationName: 'Alto dos Moinhos',
        googleAdr: "https://goo.gl/maps/r2o7NT8mxEAAii3b7",
        metroAdr: ""),
    MapStations(
        lat: 38.74857982441317,
        lng: -9.172415266378476,
        stationName: 'Laranjeiras',
        googleAdr: "https://goo.gl/maps/xEzTKdv9mCr1LPQg8",
        metroAdr: ""),
    MapStations(
        lat: 38.74238738476908,
        lng: -9.168678937302113,
        stationName: 'Jardim Zoológico',
        googleAdr: "https://goo.gl/maps/4fC9fVWUMFdhVG3K9",
        metroAdr: ""),
    MapStations(
        lat: 38.73770505964692,
        lng: -9.15837796949112,
        stationName: 'Praça de Espanha',
        googleAdr: "https://goo.gl/maps/Vtcpp1NetkrqNYEv7",
        metroAdr: ""),
    MapStations(
        lat: 38.72977673955923,
        lng: -9.150327070451453,
        stationName: 'Parque',
        googleAdr: "https://goo.gl/maps/i3vb6DRuYyPzd3uX6",
        metroAdr: ""),
    MapStations(
        lat: 38.725297890939764,
        lng: -9.149975772782726,
        stationName: 'Marquês de Pombal',
        googleAdr: "https://goo.gl/maps/FZVXjZU4b7xJvktk7",
        metroAdr: ""),
    MapStations(
        lat: 38.7201342332098,
        lng: -9.145807290031517,
        stationName: 'Avenida',
        googleAdr: "https://goo.gl/maps/H9aGKkbzv9WwRRSQ9",
        metroAdr: ""),
    MapStations(
        lat: 38.71509713469437,
        lng: -9.141559096030845,
        stationName: 'Restauradores',
        googleAdr: "https://goo.gl/maps/7VqCCcDJecggwjjz8",
        metroAdr: ""),
    MapStations(
        lat: 38.70725073556355,
        lng: -9.133256473834079,
        stationName: 'Terreiro do Paço',
        googleAdr: "https://goo.gl/maps/GEcsFepRe6i472yd7",
        metroAdr: ""),
    MapStations(
        lat: 38.71406039841934,
        lng: -9.122384923105185,
        stationName: 'Santa Apolónia',
        googleAdr: "https://goo.gl/maps/2EEqPwoGCqtNtfNn8",
        metroAdr: ""),
    MapStations(
        lat: 38.7201684786527,
        lng: -9.15394128355262,
        stationName: 'Rato',
        googleAdr: "https://goo.gl/maps/qRnrTQAf7CAeDGSc7",
        metroAdr: ""),
    MapStations(
        lat: 38.73070979411976,
        lng: -9.146509132142578,
        stationName: 'Picoas',
        googleAdr: "https://goo.gl/maps/37RXbeTEvc14pLyG8",
        metroAdr: ""),
    MapStations(
        lat: 38.74170406231987,
        lng: -9.146697737534675,
        stationName: 'Campo Pequeno',
        googleAdr: "https://goo.gl/maps/Vdy9q16EpNRUHJ5K6",
        metroAdr: ""),
    MapStations(
        lat: 38.74689379558307,
        lng: -9.147982639805788,
        stationName: 'Entre Campos',
        googleAdr: "https://goo.gl/maps/VA8xDaDPa3Wt98FA7",
        metroAdr: ""),
    MapStations(
        lat: 38.75171328842538,
        lng: -9.159074118609427,
        stationName: 'Cidade Universitária',
        googleAdr: "https://goo.gl/maps/fVtkvyLNRmxcRBxv5",
        metroAdr: ""),
    MapStations(
        lat: 38.767163477492055,
        lng: -9.155436378459088,
        stationName: 'Quinta das Conchas',
        googleAdr: "https://goo.gl/maps/fNd41Ct6PuwqhRKD8",
        metroAdr: ""),
    MapStations(
        lat: 38.77267335389553,
        lng: -9.159681144875572,
        stationName: 'Lumiar',
        googleAdr: "https://goo.gl/maps/HRiHYoPFQkxTqjmTA",
        metroAdr: ""),
    MapStations(
        lat: 38.77989994918926,
        lng: -9.159910591767769,
        stationName: 'Ameixoeira',
        googleAdr: "https://goo.gl/maps/H2J357TuBSNVhZoQA",
        metroAdr: ""),
    MapStations(
        lat: 38.786138994373886,
        lng: -9.172379049900455,
        stationName: 'Senhor Roubado',
        googleAdr: "https://goo.gl/maps/o5w4SNZFQc6YhqCo7",
        metroAdr: ""),
    MapStations(
        lat: 38.79314169761524,
        lng: -9.173238355608,
        stationName: 'Odivelas',
        googleAdr: "https://goo.gl/maps/5V8dTYLxZehusxRS8",
        metroAdr: ""),
  ].obs;

  var box = Hive.box('hivedb');
  RxList<MapStations> stationMapList = <MapStations>[].obs;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

    box.put("stationMap", stationMap);
    stationMapList = box.get("stationMap");
    print("hivedb  DATA IS = ${stationMapList[0]}");
  }
}
