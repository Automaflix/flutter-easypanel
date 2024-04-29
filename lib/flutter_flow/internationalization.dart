import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'id', 'ms'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? idText = '',
    String? msText = '',
  }) =>
      [enText, idText, msText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // Home
  {
    '3bi54x5g': {
      'en': 'Dashboard',
      'id': 'Dasbor',
      'ms': 'Papan pemuka',
    },
    'nnv46x35': {
      'en': 'Abaixo está um resumo da sua atividade.',
      'id': 'Di bawah ini adalah ringkasan aktivitas tim Anda.',
      'ms': 'Di bawah ialah ringkasan aktiviti pasukan anda.',
    },
    '0kjlvd4s': {
      'en': 'Total de vendas',
      'id': 'Kontrak Kedaluwarsa',
      'ms': 'Kontrak Tamat',
    },
    '3m99epga': {
      'en': 'R\$ 53.530,00',
      'id': '4300',
      'ms': '4300',
    },
    'jqevo63s': {
      'en': 'Clientes',
      'id': 'pelanggan baru',
      'ms': 'pelanggan baru',
    },
    'd0r4w3cc': {
      'en': '248',
      'id': '24',
      'ms': '24',
    },
    '8vot9bzj': {
      'en': 'Vendas',
      'id': 'Kontrak Baru',
      'ms': 'Kontrak Baru',
    },
    '463rfkem': {
      'en': '3,200',
      'id': '3.200',
      'ms': '3,200',
    },
    'saxskj92': {
      'en': 'Produtos',
      'id': 'Kontrak Kedaluwarsa',
      'ms': 'Kontrak Tamat',
    },
    '2wlrr5lg': {
      'en': '4300',
      'id': '4300',
      'ms': '4300',
    },
    'tq3zxoa8': {
      'en': 'Produtos mais vendidos',
      'id': 'Aktivitas Kontrak',
      'ms': 'Aktiviti Kontrak',
    },
    'coeikc38': {
      'en': 'Produto',
      'id': 'Nama anggota',
      'ms': 'Nama ahli',
    },
    'laklby7y': {
      'en': 'Categoria',
      'id': 'Surel',
      'ms': 'E-mel',
    },
    'ncfb1hjy': {
      'en': 'Pedidos',
      'id': 'Aktif Terakhir',
      'ms': 'Aktif Terakhir',
    },
    'fcc7ki4c': {
      'en': 'Total',
      'id': 'Status',
      'ms': 'Status',
    },
    'mwgznn9x': {
      'en': 'Camisa Básica',
      'id': 'Alex Smith',
      'ms': 'Alex Smith',
    },
    'agdj91av': {
      'en': 'Vestuário',
      'id': 'pengguna@domain.com',
      'ms': 'pengguna@domain.com',
    },
    'c0mpnn3t': {
      'en': '69',
      'id': '',
      'ms': '',
    },
    'lunvd9yq': {
      'en': 'R\$ 3.381,00',
      'id': 'Status',
      'ms': 'Status',
    },
    'nmrr5cm2': {
      'en': 'Cadeira Cinza',
      'id': 'Andrea Rudolph',
      'ms': 'Andrea Rudolph',
    },
    '8pyama90': {
      'en': 'Vestuário',
      'id': 'pengguna@domain.com',
      'ms': 'pengguna@domain.com',
    },
    'gf4t2dyq': {
      'en': '52',
      'id': '',
      'ms': '',
    },
    'rl1p2xi7': {
      'en': 'R\$7.794,80',
      'id': 'Status',
      'ms': 'Status',
    },
    'pu14q22q': {
      'en': 'Copo Café',
      'id': 'Andrea Rudolph',
      'ms': 'Andrea Rudolph',
    },
    '36dggtxz': {
      'en': 'Vestuário',
      'id': 'pengguna@domain.com',
      'ms': 'pengguna@domain.com',
    },
    'hryrd009': {
      'en': '48',
      'id': '',
      'ms': '',
    },
    'id7hmsvk': {
      'en': 'R\$ 955,20',
      'id': 'Status',
      'ms': 'Status',
    },
    '88ytssxa': {
      'en': 'Poltrona',
      'id': 'Andrea Rudolph',
      'ms': 'Andrea Rudolph',
    },
    'p5czqzr1': {
      'en': 'Vestuário',
      'id': 'pengguna@domain.com',
      'ms': 'pengguna@domain.com',
    },
    '0d47q4za': {
      'en': '32',
      'id': '',
      'ms': '',
    },
    '48oiwtxf': {
      'en': 'R\$ 7.996,80',
      'id': 'Status',
      'ms': 'Status',
    },
    'rtzmuelb': {
      'en': 'Capacete',
      'id': 'Andrea Rudolph',
      'ms': 'Andrea Rudolph',
    },
    'no1tws9g': {
      'en': 'Vestuário',
      'id': 'pengguna@domain.com',
      'ms': 'pengguna@domain.com',
    },
    '8hfistn0': {
      'en': '31',
      'id': '',
      'ms': '',
    },
    'cwa1xzf9': {
      'en': 'R\$ 1.236,90',
      'id': 'Status',
      'ms': 'Status',
    },
    '7v4tax3p': {
      'en': 'Pedidos recentes',
      'id': 'Aktivitas Kontrak',
      'ms': 'Aktiviti Kontrak',
    },
    'puy8obok': {
      'en': 'Camisa Básica',
      'id': 'Aktivitas Kontrak',
      'ms': 'Aktiviti Kontrak',
    },
    'zlovh0zt': {
      'en': '#51336',
      'id': 'Di bawah ini adalah ringkasan kegiatan.',
      'ms': 'Di bawah ialah ringkasan aktiviti.',
    },
    'e5jsb0xp': {
      'en': 'R\$ 49,90',
      'id': 'pengguna@domain.com',
      'ms': 'pengguna@domain.com',
    },
    '73udxwx3': {
      'en': 'Pendente',
      'id': '',
      'ms': '',
    },
    '16khczpo': {
      'en': 'Capacete',
      'id': 'Aktivitas Kontrak',
      'ms': 'Aktiviti Kontrak',
    },
    'nuhkqk91': {
      'en': '#3346',
      'id': 'Di bawah ini adalah ringkasan kegiatan.',
      'ms': 'Di bawah ialah ringkasan aktiviti.',
    },
    'k72fvugw': {
      'en': 'R\$ 39,90',
      'id': 'pengguna@domain.com',
      'ms': 'pengguna@domain.com',
    },
    '1rirg6tm': {
      'en': 'Pago',
      'id': '',
      'ms': '',
    },
    '1kj9pcz4': {
      'en': 'Camisa Básica',
      'id': 'Aktivitas Kontrak',
      'ms': 'Aktiviti Kontrak',
    },
    'k3fdjcba': {
      'en': '#7645',
      'id': 'Di bawah ini adalah ringkasan kegiatan.',
      'ms': 'Di bawah ialah ringkasan aktiviti.',
    },
    'np84agpk': {
      'en': 'R\$ 49,90',
      'id': 'pengguna@domain.com',
      'ms': 'pengguna@domain.com',
    },
    'foelt54w': {
      'en': 'Cancelado',
      'id': '',
      'ms': '',
    },
    'y24lcr13': {
      'en': 'Dashboard',
      'id': 'Dasbor',
      'ms': 'Papan pemuka',
    },
    'xdxbdj20': {
      'en': '__',
      'id': '__',
      'ms': '__',
    },
  },
  // Clientes
  {
    'hr8lszri': {
      'en': 'Clientes',
      'id': 'Kelompok ku',
      'ms': 'Pasukan saya',
    },
    'pdwo1v0l': {
      'en': 'Pesquisar cliente',
      'id': 'Cari pelanggan Anda...',
      'ms': 'Cari pelanggan anda...',
    },
    's0avx7mf': {
      'en': 'Cliente',
      'id': '',
      'ms': '',
    },
    'rjb0bydp': {
      'en': 'Pedro Karpinski Neto',
      'id': 'Randy Alcorn',
      'ms': 'Randy Alcorn',
    },
    'rlyruidi': {
      'en': '(48) 99999-9999',
      'id': 'Kepala Pengadaan',
      'ms': 'Ketua Perolehan',
    },
    'ocd0ly8y': {
      'en': 'contato@email.com',
      'id': 'ACME Co.',
      'ms': 'ACME Co.',
    },
    '8qcanprf': {
      'en': 'Maria Helena',
      'id': 'Randy Alcorn',
      'ms': 'Randy Alcorn',
    },
    'o1mnkifc': {
      'en': '(48) 99999-9999',
      'id': 'Kepala Pengadaan',
      'ms': 'Ketua Perolehan',
    },
    'gujcp9w5': {
      'en': 'contato@email.com',
      'id': 'ACME Co.',
      'ms': 'ACME Co.',
    },
    'omct0b8y': {
      'en': 'José das Couves',
      'id': 'Randy Alcorn',
      'ms': 'Randy Alcorn',
    },
    '44b5mup5': {
      'en': '(48) 99999-9999',
      'id': 'Kepala Pengadaan',
      'ms': 'Ketua Perolehan',
    },
    're7p35bf': {
      'en': 'contato@email.com',
      'id': 'ACME Co.',
      'ms': 'ACME Co.',
    },
    'fcyoodds': {
      'en': 'Customers',
      'id': 'Pelanggan',
      'ms': 'Pelanggan',
    },
    '3ourv2w9': {
      'en': '__',
      'id': '__',
      'ms': '__',
    },
  },
  // Pedidos
  {
    'smh1o93d': {
      'en': 'Pedidos',
      'id': 'Kontrak',
      'ms': 'Kontrak',
    },
    'dpt94d56': {
      'en': '5',
      'id': 'Desain Platform Tanpa Kode',
      'ms': 'Reka Bentuk Platform Tanpa Kod',
    },
    'vse7ki9r': {
      'en': 'Pendente',
      'id': '',
      'ms': '',
    },
    'l1f76ki7': {
      'en': '723',
      'id': 'Desain Platform Tanpa Kode',
      'ms': 'Reka Bentuk Platform Tanpa Kod',
    },
    'jsi5lu14': {
      'en': 'Pago',
      'id': '',
      'ms': '',
    },
    '2a7y5e2w': {
      'en': '19',
      'id': 'Dokumen Tim Desain',
      'ms': 'Dokumen Pasukan Reka Bentuk',
    },
    'zjqkropi': {
      'en': 'Cancelado',
      'id': '',
      'ms': '',
    },
    'dlt46loo': {
      'en': 'Lista de pedidos',
      'id': 'Kontrak',
      'ms': 'Kontrak',
    },
    'gfyxy24w': {
      'en': 'Pendentes',
      'id': '',
      'ms': '',
    },
    'jueqfeo4': {
      'en': '#2',
      'id': 'Tindakan Selanjutnya',
      'ms': 'Tindakan Seterusnya',
    },
    '1qyd4ykr': {
      'en': '25/05/22, 09:32',
      'id': 'Selasa, 10:00',
      'ms': 'Selasa, 10:00 pagi',
    },
    'zotdm8lt': {
      'en': '3x',
      'id': 'Akuisisi Klien untuk Q3',
      'ms': 'Pemerolehan Pelanggan untuk S3',
    },
    '8heiz9sc': {
      'en': 'Nike Air Jordan',
      'id': 'KesehatanAi',
      'ms': 'KesihatanAi',
    },
    'pcm02hon': {
      'en': 'Calçados',
      'id': 'Akuisisi Klien untuk Q3',
      'ms': 'Pemerolehan Pelanggan untuk S3',
    },
    '2jq4barg': {
      'en': 'R\$ 1.350,00',
      'id': 'Selasa, 10:00',
      'ms': 'Selasa, 10:00 pagi',
    },
    'lrd76g9p': {
      'en': '1x',
      'id': 'Akuisisi Klien untuk Q3',
      'ms': 'Pemerolehan Pelanggan untuk S3',
    },
    'uikrm80i': {
      'en': 'Apple Watch Series 7',
      'id': 'KesehatanAi',
      'ms': 'KesihatanAi',
    },
    'o7afnmj3': {
      'en': 'Acessório',
      'id': 'Akuisisi Klien untuk Q3',
      'ms': 'Pemerolehan Pelanggan untuk S3',
    },
    'k02nvfeu': {
      'en': 'R\$ 6.000,00',
      'id': 'Selasa, 10:00',
      'ms': 'Selasa, 10:00 pagi',
    },
    'uinmdjq8': {
      'en': 'Total: R\$ 8.350,00',
      'id': 'Selasa, 10:00',
      'ms': 'Selasa, 10:00 pagi',
    },
    'aj78pjyk': {
      'en': 'Pendente',
      'id': '',
      'ms': '',
    },
    'gc8u6ucz': {
      'en': '#1',
      'id': 'Tindakan Selanjutnya',
      'ms': 'Tindakan Seterusnya',
    },
    'mqgbypo5': {
      'en': '25/05/22, 09:32',
      'id': 'Selasa, 10:00',
      'ms': 'Selasa, 10:00 pagi',
    },
    'km43o053': {
      'en': '2x',
      'id': 'Akuisisi Klien untuk Q3',
      'ms': 'Pemerolehan Pelanggan untuk S3',
    },
    'a9dlr27v': {
      'en': 'Red Laga',
      'id': 'KesehatanAi',
      'ms': 'KesihatanAi',
    },
    'xo235a7o': {
      'en': 'Vestuário',
      'id': 'Akuisisi Klien untuk Q3',
      'ms': 'Pemerolehan Pelanggan untuk S3',
    },
    'cjl36jop': {
      'en': 'R\$ 6.000,00',
      'id': 'Selasa, 10:00',
      'ms': 'Selasa, 10:00 pagi',
    },
    '7bx6o1x3': {
      'en': '2x',
      'id': 'Akuisisi Klien untuk Q3',
      'ms': 'Pemerolehan Pelanggan untuk S3',
    },
    'w3adpcq3': {
      'en': 'Nike Air Jordan',
      'id': 'KesehatanAi',
      'ms': 'KesihatanAi',
    },
    '9gkfp20i': {
      'en': 'Calçados',
      'id': 'Akuisisi Klien untuk Q3',
      'ms': 'Pemerolehan Pelanggan untuk S3',
    },
    '3sii1kqu': {
      'en': 'R\$ 6.000,00',
      'id': 'Selasa, 10:00',
      'ms': 'Selasa, 10:00 pagi',
    },
    'jeqqi7po': {
      'en': 'Total: R\$ 750,00',
      'id': 'Selasa, 10:00',
      'ms': 'Selasa, 10:00 pagi',
    },
    'f2pexcim': {
      'en': 'Pendente',
      'id': '',
      'ms': '',
    },
    'un1h45ia': {
      'en': 'Pagos',
      'id': '',
      'ms': '',
    },
    'g7au29t4': {
      'en': '#4',
      'id': 'Tindakan Selanjutnya',
      'ms': 'Tindakan Seterusnya',
    },
    'e4lr1k56': {
      'en': '25/05/22, 09:32',
      'id': 'Selasa, 10:00',
      'ms': 'Selasa, 10:00 pagi',
    },
    'q1wckluw': {
      'en': '2x',
      'id': 'Akuisisi Klien untuk Q3',
      'ms': 'Pemerolehan Pelanggan untuk S3',
    },
    'i2qhbl1f': {
      'en': 'Nike Air Jordan',
      'id': 'KesehatanAi',
      'ms': 'KesihatanAi',
    },
    'ipsgj3hg': {
      'en': 'Calçados',
      'id': 'Akuisisi Klien untuk Q3',
      'ms': 'Pemerolehan Pelanggan untuk S3',
    },
    '7x2ulp8f': {
      'en': 'R\$ 6.000,00',
      'id': 'Selasa, 10:00',
      'ms': 'Selasa, 10:00 pagi',
    },
    'd47a43a3': {
      'en': '1x',
      'id': 'Akuisisi Klien untuk Q3',
      'ms': 'Pemerolehan Pelanggan untuk S3',
    },
    'ecjghjp8': {
      'en': 'Apple Watch Series 7',
      'id': 'KesehatanAi',
      'ms': 'KesihatanAi',
    },
    'luxbpni1': {
      'en': 'Acessório',
      'id': 'Akuisisi Klien untuk Q3',
      'ms': 'Pemerolehan Pelanggan untuk S3',
    },
    'cgwv0mgj': {
      'en': 'R\$ 6.000,00',
      'id': 'Selasa, 10:00',
      'ms': 'Selasa, 10:00 pagi',
    },
    'mssr4awp': {
      'en': 'Total: R\$ 8.350,00',
      'id': 'Selasa, 10:00',
      'ms': 'Selasa, 10:00 pagi',
    },
    '1yyrb8ba': {
      'en': 'Pago',
      'id': '',
      'ms': '',
    },
    'n5n86goz': {
      'en': 'Cancelados',
      'id': '',
      'ms': '',
    },
    'fff48vcn': {
      'en': '#3',
      'id': 'Tindakan Selanjutnya',
      'ms': 'Tindakan Seterusnya',
    },
    'uj4406vp': {
      'en': '25/05/22, 09:32',
      'id': 'Selasa, 10:00',
      'ms': 'Selasa, 10:00 pagi',
    },
    'rhdfiu9a': {
      'en': '2x',
      'id': 'Akuisisi Klien untuk Q3',
      'ms': 'Pemerolehan Pelanggan untuk S3',
    },
    'eu9jmok1': {
      'en': 'Nike Air Jordan',
      'id': 'KesehatanAi',
      'ms': 'KesihatanAi',
    },
    'naahv557': {
      'en': 'Calçados',
      'id': 'Akuisisi Klien untuk Q3',
      'ms': 'Pemerolehan Pelanggan untuk S3',
    },
    'gyyzbczj': {
      'en': 'R\$ 6.000,00',
      'id': 'Selasa, 10:00',
      'ms': 'Selasa, 10:00 pagi',
    },
    'eurfb85d': {
      'en': '1x',
      'id': 'Akuisisi Klien untuk Q3',
      'ms': 'Pemerolehan Pelanggan untuk S3',
    },
    '78ylvfiw': {
      'en': 'Apple Watch Series 7',
      'id': 'KesehatanAi',
      'ms': 'KesihatanAi',
    },
    'tcqhky9w': {
      'en': 'Acessório',
      'id': 'Akuisisi Klien untuk Q3',
      'ms': 'Pemerolehan Pelanggan untuk S3',
    },
    'u5in5wu8': {
      'en': 'R\$ 6.000,00',
      'id': 'Selasa, 10:00',
      'ms': 'Selasa, 10:00 pagi',
    },
    'fvht4axu': {
      'en': 'Total: R\$ 8.350,00',
      'id': 'Selasa, 10:00',
      'ms': 'Selasa, 10:00 pagi',
    },
    '29g4lqzp': {
      'en': 'Cancelado',
      'id': '',
      'ms': '',
    },
    'j08eiorc': {
      'en': '__',
      'id': '__',
      'ms': '__',
    },
  },
  // Perfil
  {
    'qrxn5crt': {
      'en': 'Meu Perfil',
      'id': 'Profil saya',
      'ms': 'Profil saya',
    },
    'fyxsf6vn': {
      'en': 'Configurações da conta',
      'id': 'Pengaturan akun',
      'ms': 'Tetapan Akaun',
    },
    'h43llaan': {
      'en': 'Trocar Senha',
      'id': 'Ganti kata sandi',
      'ms': 'Tukar kata laluan',
    },
    'b1lw0hfu': {
      'en': 'Editar Perfil',
      'id': 'Sunting profil',
      'ms': 'Sunting profil',
    },
    'abqf147c': {
      'en': 'Sair',
      'id': 'Keluar',
      'ms': 'Log keluar',
    },
    'o3dp9tss': {
      'en': '__',
      'id': '__',
      'ms': '__',
    },
  },
  // detalhesPedido
  {
    'a3menkwa': {
      'en': 'Pedido #1',
      'id': '',
      'ms': '',
    },
    'ywfh239l': {
      'en': 'Minha Empresa LTDA',
      'id': '',
      'ms': '',
    },
    'hfzyb0sx': {
      'en': 'Rua das Oliveiras, nº 73, São Paulo, SP',
      'id': '',
      'ms': '',
    },
    'f1etpkd2': {
      'en': 'Cancelar pedido',
      'id': '',
      'ms': '',
    },
    'r29j9z9j': {
      'en': 'Concluir venda',
      'id': '',
      'ms': '',
    },
    '8pephan5': {
      'en': 'Pedido realizado:',
      'id': '',
      'ms': '',
    },
    't7w974ro': {
      'en': '25/05/2023, 08:45h',
      'id': '',
      'ms': '',
    },
    'hvksh21o': {
      'en': 'Pendente',
      'id': '',
      'ms': '',
    },
    'zguq7m86': {
      'en': 'Cliente',
      'id': '',
      'ms': '',
    },
    'jsnv52m0': {
      'en': 'Pedro Karpinski Neto',
      'id': '',
      'ms': '',
    },
    '5hx0f8bk': {
      'en': '(48) 99999-9999',
      'id': '',
      'ms': '',
    },
    'kde67kwr': {
      'en': 'pedrokn@gmail.com',
      'id': '',
      'ms': '',
    },
    'mhr0u7wd': {
      'en': 'Rua Nossa Senhora de Fátima, 02, casa',
      'id': '',
      'ms': '',
    },
    '8r4yeu63': {
      'en': '1 item',
      'id': '',
      'ms': '',
    },
    'wcf6789e': {
      'en': '1x',
      'id': '',
      'ms': '',
    },
    'dgpjoujr': {
      'en': 'Apple Watch Series 7',
      'id': '',
      'ms': '',
    },
    'o3555g3l': {
      'en': 'R\$ 4.490,00',
      'id': '',
      'ms': '',
    },
    'mrdr259h': {
      'en': 'Total:',
      'id': '',
      'ms': '',
    },
    '9oh58u6v': {
      'en': 'R\$ 4.490,00',
      'id': '',
      'ms': '',
    },
    'c0s3jdsy': {
      'en': 'Home',
      'id': 'Rumah',
      'ms': 'Rumah',
    },
  },
  // Produtos
  {
    '8jlklje5': {
      'en': 'Produtos',
      'id': 'Kelompok ku',
      'ms': 'Pasukan saya',
    },
    '9iuss6gl': {
      'en': 'Pesquisar produto',
      'id': 'Cari pelanggan Anda...',
      'ms': 'Cari pelanggan anda...',
    },
    '1n2tx6c6': {
      'en': 'Produto',
      'id': '',
      'ms': '',
    },
    '5mtplc2u': {
      'en': 'Produto',
      'id': 'Nama anggota',
      'ms': 'Nama ahli',
    },
    'xsqhz5g4': {
      'en': 'Categoria',
      'id': 'Surel',
      'ms': 'E-mel',
    },
    'xkijgi68': {
      'en': 'Preço',
      'id': 'Aktif Terakhir',
      'ms': 'Aktif Terakhir',
    },
    'dtsi2m5j': {
      'en': 'Ativo',
      'id': 'Tanggal Diciptakan',
      'ms': 'Tarikh Dibuat',
    },
    'qriboqj2': {
      'en': 'Ação',
      'id': 'Status',
      'ms': 'Status',
    },
    's0kzte5a': {
      'en': 'Produto',
      'id': '',
      'ms': '',
    },
    '6epicyaa': {
      'en': 'Categoria',
      'id': '',
      'ms': '',
    },
    'e72hfoc6': {
      'en': 'Valor',
      'id': '',
      'ms': '',
    },
    '3u7vvu61': {
      'en': 'Ativo',
      'id': '',
      'ms': '',
    },
    'qjc6z1av': {
      'en': 'Ação',
      'id': '',
      'ms': '',
    },
    'ym579y79': {
      'en': 'Dashboard',
      'id': 'Dasbor',
      'ms': 'Papan pemuka',
    },
    'smtxdnbn': {
      'en': '__',
      'id': '__',
      'ms': '__',
    },
  },
  // MinhaLoja
  {
    '8r2s59bz': {
      'en': 'Ver minha loja',
      'id': '',
      'ms': '',
    },
    '6cuhlzxo': {
      'en': 'Cadastrada em',
      'id': '',
      'ms': '',
    },
    'y657rtlk': {
      'en': 'Ativo',
      'id': '',
      'ms': '',
    },
    '6opuuucv': {
      'en': ' ',
      'id': '',
      'ms': '',
    },
    'eug3rw4z': {
      'en': 'Publicação do Catálogo Virtual',
      'id': '',
      'ms': '',
    },
    'srr2ve7g': {
      'en': '',
      'id': '',
      'ms': '',
    },
    'p0ps7pxe': {
      'en': 'URL',
      'id': '',
      'ms': '',
    },
    'mky2d7bz': {
      'en': 'Cor principal para o seu catálogo',
      'id': '',
      'ms': '',
    },
    'jraz2l6y': {
      'en': 'Salvar',
      'id': '',
      'ms': '',
    },
    'q7svnhr5': {
      'en': 'Logo da loja',
      'id': '',
      'ms': '',
    },
    'img6qj93': {
      'en': 'Carregue sua logo',
      'id': '',
      'ms': '',
    },
    '95pi8sn8': {
      'en': 'Suporta PNG, JPG e JPEG',
      'id': '',
      'ms': '',
    },
    '7w51gon9': {
      'en': 'Carregar imagem',
      'id': '',
      'ms': '',
    },
    'nhrcxur4': {
      'en': 'Salvar',
      'id': '',
      'ms': '',
    },
    'koysivw5': {
      'en': 'Sobre a loja',
      'id': '',
      'ms': '',
    },
    'h7bbnpmv': {
      'en': '',
      'id': '',
      'ms': '',
    },
    'm145kg12': {
      'en': 'CNPJ (opcional)',
      'id': '',
      'ms': '',
    },
    'ke1h1c1o': {
      'en': '',
      'id': '',
      'ms': '',
    },
    '0zqfawwp': {
      'en': 'Nome da loja',
      'id': '',
      'ms': '',
    },
    'zjgq4247': {
      'en': '',
      'id': '',
      'ms': '',
    },
    'i2xuwyo5': {
      'en': 'Descrição da sua loja',
      'id': '',
      'ms': '',
    },
    'zps53z60': {
      'en': 'Salvar',
      'id': '',
      'ms': '',
    },
    '21ep7l3l': {
      'en': 'Endereço completo',
      'id': '',
      'ms': '',
    },
    '71e40lb5': {
      'en': '',
      'id': '',
      'ms': '',
    },
    'duoq028k': {
      'en': 'Endereço completo',
      'id': '',
      'ms': '',
    },
    'zk0mg1ic': {
      'en': 'Salvar',
      'id': '',
      'ms': '',
    },
    'omzf1h3h': {
      'en': ' ',
      'id': '',
      'ms': '',
    },
    '15agznx5': {
      'en': 'Contato',
      'id': '',
      'ms': '',
    },
    'clmm6uvt': {
      'en': '',
      'id': '',
      'ms': '',
    },
    '6cci5i54': {
      'en': 'Telefone',
      'id': '',
      'ms': '',
    },
    'matf8t1q': {
      'en': '',
      'id': '',
      'ms': '',
    },
    'so1r7gjn': {
      'en': 'Instagram',
      'id': '',
      'ms': '',
    },
    'efny2fod': {
      'en': '',
      'id': '',
      'ms': '',
    },
    'hb0ohoi8': {
      'en': 'E-mail de contato',
      'id': '',
      'ms': '',
    },
    '9uwr3qo0': {
      'en': 'Salvar',
      'id': '',
      'ms': '',
    },
    '99t25oid': {
      'en': ' ',
      'id': '',
      'ms': '',
    },
    '2sxi96db': {
      'en': 'Dados do responsável',
      'id': '',
      'ms': '',
    },
    '1idv6zv6': {
      'en': '',
      'id': '',
      'ms': '',
    },
    'oj5iql3y': {
      'en': 'Nome completo',
      'id': '',
      'ms': '',
    },
    'laf8twci': {
      'en': '',
      'id': '',
      'ms': '',
    },
    'gobfjhxw': {
      'en': 'CPF',
      'id': '',
      'ms': '',
    },
    '1hxg1nef': {
      'en': 'Salvar',
      'id': '',
      'ms': '',
    },
    'hfcplb9j': {
      'en': '__',
      'id': '__',
      'ms': '__',
    },
  },
  // detalhesCliente
  {
    'lqe9g7ff': {
      'en': 'Pedro Karpinski Neto',
      'id': '',
      'ms': '',
    },
    '88daxrxu': {
      'en': 'Imagem do cliente',
      'id': '',
      'ms': '',
    },
    'do28hwqy': {
      'en': 'Imagem do cliente ou logo',
      'id': '',
      'ms': '',
    },
    'p9ko4ce9': {
      'en': 'Suporta PNG, JPG e JPEG',
      'id': '',
      'ms': '',
    },
    'pss0fbps': {
      'en': 'Carregar imagem',
      'id': '',
      'ms': '',
    },
    'yej6ndfm': {
      'en': 'Dados básicos',
      'id': '',
      'ms': '',
    },
    'mhdgdplu': {
      'en': '',
      'id': '',
      'ms': '',
    },
    'eh38t8h9': {
      'en': 'Nome',
      'id': '',
      'ms': '',
    },
    'qdw5hu1y': {
      'en': '',
      'id': '',
      'ms': '',
    },
    'bdxodaql': {
      'en': 'CPF/CNPJ',
      'id': '',
      'ms': '',
    },
    'tx2h7ng4': {
      'en': '',
      'id': '',
      'ms': '',
    },
    'yzeoze3e': {
      'en': 'Observações',
      'id': '',
      'ms': '',
    },
    '3z1k8rcj': {
      'en': 'Contato',
      'id': '',
      'ms': '',
    },
    '0l0b4olq': {
      'en': '',
      'id': '',
      'ms': '',
    },
    'epfanj9m': {
      'en': 'Telefone',
      'id': '',
      'ms': '',
    },
    'esrg6nhd': {
      'en': '',
      'id': '',
      'ms': '',
    },
    'qd953yfb': {
      'en': 'E-mail',
      'id': '',
      'ms': '',
    },
    '9f2gjw47': {
      'en': 'Endereço',
      'id': '',
      'ms': '',
    },
    '9oraprn2': {
      'en': '',
      'id': '',
      'ms': '',
    },
    '0urwlrtw': {
      'en': 'Rua',
      'id': '',
      'ms': '',
    },
    '6db0wsuv': {
      'en': '',
      'id': '',
      'ms': '',
    },
    'p0nljehe': {
      'en': 'Nº',
      'id': '',
      'ms': '',
    },
    'ri2n7kst': {
      'en': '',
      'id': '',
      'ms': '',
    },
    'm9i89lfi': {
      'en': 'Bairro',
      'id': '',
      'ms': '',
    },
    'lst6ygiy': {
      'en': '',
      'id': '',
      'ms': '',
    },
    'oy62hq0n': {
      'en': 'Cidade',
      'id': '',
      'ms': '',
    },
    'upou184r': {
      'en': '',
      'id': '',
      'ms': '',
    },
    'ue1l1wkr': {
      'en': 'Estado',
      'id': '',
      'ms': '',
    },
    '3qvldbi8': {
      'en': 'Salvar informações',
      'id': 'Buat Catatan',
      'ms': 'Cipta Nota',
    },
    'yjx4nc8m': {
      'en': 'Home',
      'id': 'Rumah',
      'ms': 'Rumah',
    },
  },
  // catalogoVirtual
  {
    'pxeysk3c': {
      'en': 'Minha Empresa LTDA',
      'id': '',
      'ms': '',
    },
    'ucd7wpy7': {
      'en': 'Entrar',
      'id': '',
      'ms': '',
    },
    '4i7y9m9e': {
      'en': 'O que você procura?',
      'id': '',
      'ms': '',
    },
    'pm55zfap': {
      'en': 'Categorias',
      'id': '',
      'ms': '',
    },
    'u044o77h': {
      'en': 'Calçados',
      'id': '',
      'ms': '',
    },
    'xtojyp4v': {
      'en': 'Acessórios',
      'id': '',
      'ms': '',
    },
    'lmy7j2gz': {
      'en': 'Eletrônicos',
      'id': '',
      'ms': '',
    },
    'hk7ahgd7': {
      'en': 'Limited Edition',
      'id': '',
      'ms': '',
    },
    'c6893875': {
      'en': 'R\$ 259,00',
      'id': '',
      'ms': '',
    },
    'acnlpw8u': {
      'en': 'Limited Edition',
      'id': '',
      'ms': '',
    },
    'l6lcz0d1': {
      'en': 'R\$ 259,00',
      'id': '',
      'ms': '',
    },
    'g7j9l6rx': {
      'en': 'Limited Edition',
      'id': '',
      'ms': '',
    },
    'px846gu7': {
      'en': 'R\$ 259,00',
      'id': '',
      'ms': '',
    },
    'xxmac9cd': {
      'en': 'Limited Edition',
      'id': '',
      'ms': '',
    },
    'nxzcf6mp': {
      'en': 'R\$ 259,00',
      'id': '',
      'ms': '',
    },
    'nrq3q0ek': {
      'en': 'Limited Edition',
      'id': '',
      'ms': '',
    },
    '3wjqc91x': {
      'en': 'R\$ 259,00',
      'id': '',
      'ms': '',
    },
    'llgmr8xb': {
      'en': 'Limited Edition',
      'id': '',
      'ms': '',
    },
    'x6cfyt2c': {
      'en': 'R\$ 259,00',
      'id': '',
      'ms': '',
    },
    'jekqpj95': {
      'en': 'Shop',
      'id': '',
      'ms': '',
    },
  },
  // detalhesProdutoCatalogo
  {
    'e7u8owbg': {
      'en': 'Minha Empresa LTDA',
      'id': '',
      'ms': '',
    },
    'cg3b54rb': {
      'en': 'Entrar',
      'id': '',
      'ms': '',
    },
    '4v2kjb84': {
      'en': 'Zion Limited',
      'id': '',
      'ms': '',
    },
    'cufr566a': {
      'en': 'R\$156.00',
      'id': '',
      'ms': '',
    },
    '3zgozjjb': {
      'en': 'Calçados',
      'id': '',
      'ms': '',
    },
    'r9ymihvv': {
      'en': 'Descrição',
      'id': '',
      'ms': '',
    },
    '36jlgwnx': {
      'en':
          'With a down-to-earth persona and abilities that are out of this world, Zion is unlike anybody else. On court, the gentle spirit who\'s all about family transforms into an unmatched force of unstoppable athleticism and speed.With a down-to-earth persona and abilities that are out of this world, Zion is unlike anybody else. On court, the gentle spirit who\'s all about family transforms into an unmatched force of unstoppable athleticism and speed.With a down-to-earth persona and abilities that are out of this world, Zion is unlike anybody else. On court, the gentle spirit who\'s all about family transforms into an unmatched force of unstoppable athleticism and speed.',
      'id': '',
      'ms': '',
    },
    'ft5v3vrt': {
      'en': 'Pedir por Whatsapp',
      'id': '',
      'ms': '',
    },
    'lx00m5y4': {
      'en': 'Adicionar',
      'id': '',
      'ms': '',
    },
    'dtpkw5pi': {
      'en': 'Pedir por Whatsapp',
      'id': '',
      'ms': '',
    },
    'sskyf93v': {
      'en': 'Adicionar',
      'id': '',
      'ms': '',
    },
    'qsksituu': {
      'en': 'Home',
      'id': '',
      'ms': '',
    },
  },
  // Checkout
  {
    'k19z6nai': {
      'en': 'Minha Empresa LTDA',
      'id': '',
      'ms': '',
    },
    'wp5v1cco': {
      'en': 'Entrar',
      'id': '',
      'ms': '',
    },
    'chbjmu1w': {
      'en': 'Meu carrinho',
      'id': '',
      'ms': '',
    },
    '0nniaq79': {
      'en': 'Abaixo está a lista de itens em seu carrinho.',
      'id': '',
      'ms': '',
    },
    'gll5ja2t': {
      'en': 'Air Max',
      'id': '',
      'ms': '',
    },
    'gx03lnzb': {
      'en': 'Calçados',
      'id': '',
      'ms': '',
    },
    '32a2hk2h': {
      'en': 'R\$124,00',
      'id': '',
      'ms': '',
    },
    'furngbg0': {
      'en':
          'Men\'s Sleeveless Fitness T-Shirt\nTumbled Grey/Flat Silver/Heather/Black',
      'id': '',
      'ms': '',
    },
    'ma2ny391': {
      'en': 'Remover',
      'id': '',
      'ms': '',
    },
    'dvmjlt6p': {
      'en': 'Air Max',
      'id': '',
      'ms': '',
    },
    'gahlxp89': {
      'en': 'Calçados',
      'id': '',
      'ms': '',
    },
    'asb7y9zw': {
      'en': 'R\$117,00',
      'id': '',
      'ms': '',
    },
    'uuk8lgxm': {
      'en':
          'Men\'s Sleeveless Fitness T-Shirt\nTumbled Grey/Flat Silver/Heather/Black',
      'id': '',
      'ms': '',
    },
    'd4k8be5g': {
      'en': 'Remover',
      'id': '',
      'ms': '',
    },
    'vsih9vxs': {
      'en': 'Resumo do pedido',
      'id': '',
      'ms': '',
    },
    't3f18xoo': {
      'en': 'Abaixo está os valores dos itens.',
      'id': '',
      'ms': '',
    },
    'lprmform': {
      'en': 'Itens',
      'id': '',
      'ms': '',
    },
    '3l9mluae': {
      'en': '1x Air Max',
      'id': '',
      'ms': '',
    },
    'w560eykd': {
      'en': 'R\$156,00',
      'id': '',
      'ms': '',
    },
    'weyia5ox': {
      'en': '1x Air Max',
      'id': '',
      'ms': '',
    },
    'xwesevg2': {
      'en': 'R\$156,00',
      'id': '',
      'ms': '',
    },
    'ch7egu6o': {
      'en': 'Total',
      'id': '',
      'ms': '',
    },
    'eue5jxpf': {
      'en': 'R\$273,00',
      'id': '',
      'ms': '',
    },
    'vbwaedaj': {
      'en': 'Realizar pedido',
      'id': '',
      'ms': '',
    },
    'hambvnsw': {
      'en': 'Continuar comprando',
      'id': '',
      'ms': '',
    },
    'bhdhqnla': {
      'en': 'Home',
      'id': '',
      'ms': '',
    },
  },
  // loginPage
  {
    'tmuklm9f': {
      'en': 'Bem vindo de volta!',
      'id': 'Selamat Datang kembali!',
      'ms': 'Selamat kembali!',
    },
    'fywru75u': {
      'en': 'Use o formulário abaixo para acessar sua conta.',
      'id': 'Gunakan formulir di bawah ini untuk mengakses akun Anda.',
      'ms': 'Gunakan borang di bawah untuk mengakses akaun anda.',
    },
    'g5n4d8nq': {
      'en': '',
      'id': 'Alamat email',
      'ms': 'Alamat emel',
    },
    'clx5q1n2': {
      'en': 'Insira seu e-mail aqui...',
      'id': 'Masukkan email Anda disini...',
      'ms': 'Masukkan e-mel anda di sini...',
    },
    'dtxnnmn8': {
      'en': '',
      'id': 'Kata sandi',
      'ms': 'Kata laluan',
    },
    '1zsdvbjx': {
      'en': 'Insira sua senha aqui...',
      'id': 'Masukkan kata sandi Anda di sini...',
      'ms': 'Masukkan kata laluan anda di sini...',
    },
    'hu7z5toa': {
      'en': 'Esqueceu a senha?',
      'id': 'Tidak ingat kata sandi?',
      'ms': 'Lupa kata laluan?',
    },
    '6qgbfoeo': {
      'en': 'Entrar',
      'id': 'Gabung',
      'ms': 'Log masuk',
    },
    'kecosnko': {
      'en': 'Não tem uma conta?',
      'id': 'Tidak punya akun?',
      'ms': 'Tiada akaun?',
    },
    'e3voatj3': {
      'en': 'Criar uma conta',
      'id': 'Buat Akun',
      'ms': 'Buat akaun',
    },
    '52ylkulr': {
      'en': 'Home',
      'id': '',
      'ms': '',
    },
  },
  // cadastroUsuario
  {
    '0b4uu4ik': {
      'en': 'Cadastre-se',
      'id': 'Memulai',
      'ms': 'Mulakan',
    },
    '2jxl2hcv': {
      'en': 'Use o formulário abaixo para começar.',
      'id': 'Gunakan formulir di bawah ini untuk memulai.',
      'ms': 'Gunakan borang di bawah untuk bermula.',
    },
    'a2zu29v0': {
      'en': '',
      'id': 'Alamat email',
      'ms': 'Alamat emel',
    },
    'dzo6jyi2': {
      'en': 'Insira seu e-mail aqui...',
      'id': 'Masukkan email Anda disini...',
      'ms': 'Masukkan e-mel anda di sini...',
    },
    'qmge0ox7': {
      'en': '',
      'id': 'Alamat email',
      'ms': 'Alamat emel',
    },
    't30v5fdy': {
      'en': 'Insira seu nome completo...',
      'id': 'Masukkan email Anda disini...',
      'ms': 'Masukkan e-mel anda di sini...',
    },
    '4s7quu0e': {
      'en': '',
      'id': 'Alamat email',
      'ms': 'Alamat emel',
    },
    '90d3m4ul': {
      'en': 'Insira o nome da sua loja...',
      'id': 'Masukkan email Anda disini...',
      'ms': 'Masukkan e-mel anda di sini...',
    },
    'ahxmopw8': {
      'en': '',
      'id': 'Kata sandi',
      'ms': 'Kata laluan',
    },
    'h7udt0ka': {
      'en': 'Insira sua senha aqui...',
      'id': 'Masukkan email Anda disini...',
      'ms': 'Masukkan e-mel anda di sini...',
    },
    'trlbfj9m': {
      'en': 'Criar conta',
      'id': 'Buat Akun',
      'ms': 'Buat akaun',
    },
    't9znn185': {
      'en': 'já tem uma conta?',
      'id': 'Sudah memiliki akun?',
      'ms': 'Sudah mempunyai akaun?',
    },
    'e3meok13': {
      'en': 'Entre aqui',
      'id': 'Gabung',
      'ms': 'Log masuk',
    },
    '7xrjx7v7': {
      'en': 'Home',
      'id': '',
      'ms': '',
    },
  },
  // MeusPedidos
  {
    'r18cac6n': {
      'en': 'Minha Empresa LTDA',
      'id': '',
      'ms': '',
    },
    '5lkpniy7': {
      'en': 'Entrar',
      'id': '',
      'ms': '',
    },
    'iovtyqhx': {
      'en': 'Pedidos',
      'id': 'Kontrak',
      'ms': 'Kontrak',
    },
    'yhspdy6y': {
      'en': '5',
      'id': 'Desain Platform Tanpa Kode',
      'ms': 'Reka Bentuk Platform Tanpa Kod',
    },
    'p3lxr0is': {
      'en': 'Pendente',
      'id': '',
      'ms': '',
    },
    'iifms6li': {
      'en': '723',
      'id': 'Desain Platform Tanpa Kode',
      'ms': 'Reka Bentuk Platform Tanpa Kod',
    },
    '5dvnmn0t': {
      'en': 'Pago',
      'id': '',
      'ms': '',
    },
    'x8sxsipk': {
      'en': '19',
      'id': 'Dokumen Tim Desain',
      'ms': 'Dokumen Pasukan Reka Bentuk',
    },
    'htc2icyq': {
      'en': 'Cancelado',
      'id': '',
      'ms': '',
    },
    'bcxio5pc': {
      'en': 'Lista de pedidos',
      'id': 'Kontrak',
      'ms': 'Kontrak',
    },
    'uc4sbia7': {
      'en': 'Pendentes',
      'id': '',
      'ms': '',
    },
    'eft3zxv0': {
      'en': '#2',
      'id': 'Tindakan Selanjutnya',
      'ms': 'Tindakan Seterusnya',
    },
    'djmrw4gn': {
      'en': '25/05/22, 09:32',
      'id': 'Selasa, 10:00',
      'ms': 'Selasa, 10:00 pagi',
    },
    '9cwt4rhv': {
      'en': '3x',
      'id': 'Akuisisi Klien untuk Q3',
      'ms': 'Pemerolehan Pelanggan untuk S3',
    },
    'q8c5unkx': {
      'en': 'Nike Air Jordan',
      'id': 'KesehatanAi',
      'ms': 'KesihatanAi',
    },
    'r1bkq3vn': {
      'en': 'Calçados',
      'id': 'Akuisisi Klien untuk Q3',
      'ms': 'Pemerolehan Pelanggan untuk S3',
    },
    'sax884nv': {
      'en': 'R\$ 1.350,00',
      'id': 'Selasa, 10:00',
      'ms': 'Selasa, 10:00 pagi',
    },
    '5uni1gry': {
      'en': '1x',
      'id': 'Akuisisi Klien untuk Q3',
      'ms': 'Pemerolehan Pelanggan untuk S3',
    },
    'fnh7rg9s': {
      'en': 'Apple Watch Series 7',
      'id': 'KesehatanAi',
      'ms': 'KesihatanAi',
    },
    'dl4achr4': {
      'en': 'Acessório',
      'id': 'Akuisisi Klien untuk Q3',
      'ms': 'Pemerolehan Pelanggan untuk S3',
    },
    '64ans8ct': {
      'en': 'R\$ 6.000,00',
      'id': 'Selasa, 10:00',
      'ms': 'Selasa, 10:00 pagi',
    },
    'i377seo6': {
      'en': 'Total: R\$ 8.350,00',
      'id': 'Selasa, 10:00',
      'ms': 'Selasa, 10:00 pagi',
    },
    '9w06xk7n': {
      'en': 'Pendente',
      'id': '',
      'ms': '',
    },
    'gdk8dbeg': {
      'en': '#1',
      'id': 'Tindakan Selanjutnya',
      'ms': 'Tindakan Seterusnya',
    },
    'h27ajhuw': {
      'en': '25/05/22, 09:32',
      'id': 'Selasa, 10:00',
      'ms': 'Selasa, 10:00 pagi',
    },
    '7zoh0xfs': {
      'en': '2x',
      'id': 'Akuisisi Klien untuk Q3',
      'ms': 'Pemerolehan Pelanggan untuk S3',
    },
    'z1fcek1a': {
      'en': 'Red Laga',
      'id': 'KesehatanAi',
      'ms': 'KesihatanAi',
    },
    'r5mhstnt': {
      'en': 'Vestuário',
      'id': 'Akuisisi Klien untuk Q3',
      'ms': 'Pemerolehan Pelanggan untuk S3',
    },
    'nqcgvjaj': {
      'en': 'R\$ 6.000,00',
      'id': 'Selasa, 10:00',
      'ms': 'Selasa, 10:00 pagi',
    },
    'a0w4dzbe': {
      'en': '2x',
      'id': 'Akuisisi Klien untuk Q3',
      'ms': 'Pemerolehan Pelanggan untuk S3',
    },
    'lz807iry': {
      'en': 'Nike Air Jordan',
      'id': 'KesehatanAi',
      'ms': 'KesihatanAi',
    },
    'chdgbbov': {
      'en': 'Calçados',
      'id': 'Akuisisi Klien untuk Q3',
      'ms': 'Pemerolehan Pelanggan untuk S3',
    },
    'sf5nmoxf': {
      'en': 'R\$ 6.000,00',
      'id': 'Selasa, 10:00',
      'ms': 'Selasa, 10:00 pagi',
    },
    'eqj5vfsx': {
      'en': 'Total: R\$ 750,00',
      'id': 'Selasa, 10:00',
      'ms': 'Selasa, 10:00 pagi',
    },
    'w2skzmqu': {
      'en': 'Pendente',
      'id': '',
      'ms': '',
    },
    'tlfst4ix': {
      'en': 'Pagos',
      'id': '',
      'ms': '',
    },
    'wft494ly': {
      'en': '#4',
      'id': 'Tindakan Selanjutnya',
      'ms': 'Tindakan Seterusnya',
    },
    'aig3fjt7': {
      'en': '25/05/22, 09:32',
      'id': 'Selasa, 10:00',
      'ms': 'Selasa, 10:00 pagi',
    },
    'glq832a9': {
      'en': '2x',
      'id': 'Akuisisi Klien untuk Q3',
      'ms': 'Pemerolehan Pelanggan untuk S3',
    },
    '28ybpj4z': {
      'en': 'Nike Air Jordan',
      'id': 'KesehatanAi',
      'ms': 'KesihatanAi',
    },
    'c53fbsze': {
      'en': 'Calçados',
      'id': 'Akuisisi Klien untuk Q3',
      'ms': 'Pemerolehan Pelanggan untuk S3',
    },
    'izsdlf5v': {
      'en': 'R\$ 6.000,00',
      'id': 'Selasa, 10:00',
      'ms': 'Selasa, 10:00 pagi',
    },
    '8zmu4wov': {
      'en': '1x',
      'id': 'Akuisisi Klien untuk Q3',
      'ms': 'Pemerolehan Pelanggan untuk S3',
    },
    '6sh85ljb': {
      'en': 'Apple Watch Series 7',
      'id': 'KesehatanAi',
      'ms': 'KesihatanAi',
    },
    'ztucfj1h': {
      'en': 'Acessório',
      'id': 'Akuisisi Klien untuk Q3',
      'ms': 'Pemerolehan Pelanggan untuk S3',
    },
    '3ulpsman': {
      'en': 'R\$ 6.000,00',
      'id': 'Selasa, 10:00',
      'ms': 'Selasa, 10:00 pagi',
    },
    'j3akr9c6': {
      'en': 'Total: R\$ 8.350,00',
      'id': 'Selasa, 10:00',
      'ms': 'Selasa, 10:00 pagi',
    },
    '5nhv3k1y': {
      'en': 'Pago',
      'id': '',
      'ms': '',
    },
    'ctdtrk5c': {
      'en': 'Cancelados',
      'id': '',
      'ms': '',
    },
    '54u2cs0g': {
      'en': '#3',
      'id': 'Tindakan Selanjutnya',
      'ms': 'Tindakan Seterusnya',
    },
    '6q06ufpg': {
      'en': '25/05/22, 09:32',
      'id': 'Selasa, 10:00',
      'ms': 'Selasa, 10:00 pagi',
    },
    'wn3jy2fb': {
      'en': '2x',
      'id': 'Akuisisi Klien untuk Q3',
      'ms': 'Pemerolehan Pelanggan untuk S3',
    },
    'a6wcyari': {
      'en': 'Nike Air Jordan',
      'id': 'KesehatanAi',
      'ms': 'KesihatanAi',
    },
    'zpfr026k': {
      'en': 'Calçados',
      'id': 'Akuisisi Klien untuk Q3',
      'ms': 'Pemerolehan Pelanggan untuk S3',
    },
    '2kb4mjvm': {
      'en': 'R\$ 6.000,00',
      'id': 'Selasa, 10:00',
      'ms': 'Selasa, 10:00 pagi',
    },
    '2b9g90a3': {
      'en': '1x',
      'id': 'Akuisisi Klien untuk Q3',
      'ms': 'Pemerolehan Pelanggan untuk S3',
    },
    'a1776m3y': {
      'en': 'Apple Watch Series 7',
      'id': 'KesehatanAi',
      'ms': 'KesihatanAi',
    },
    '8nyd1pmr': {
      'en': 'Acessório',
      'id': 'Akuisisi Klien untuk Q3',
      'ms': 'Pemerolehan Pelanggan untuk S3',
    },
    '0xl9qwld': {
      'en': 'R\$ 6.000,00',
      'id': 'Selasa, 10:00',
      'ms': 'Selasa, 10:00 pagi',
    },
    '525scovc': {
      'en': 'Total: R\$ 8.350,00',
      'id': 'Selasa, 10:00',
      'ms': 'Selasa, 10:00 pagi',
    },
    'yr06088b': {
      'en': 'Cancelado',
      'id': '',
      'ms': '',
    },
    '0u23glq4': {
      'en': '__',
      'id': '__',
      'ms': '__',
    },
  },
  // pagina_nao_encontrada
  {
    '6q37m6wg': {
      'en': 'Ops!',
      'id': '',
      'ms': '',
    },
    '2qo123gy': {
      'en': 'Página não encontrada :(',
      'id': '',
      'ms': '',
    },
    's53qdhd5': {
      'en': 'Home',
      'id': '',
      'ms': '',
    },
  },
  // popupEnviarPedido
  {
    'kred63vb': {
      'en': 'Enviar pedido ao vendedor',
      'id': 'Kirim Konfirmasi Kontrak',
      'ms': 'Hantar Pengesahan Kontrak',
    },
    'hywgg8eu': {
      'en': 'Segue a lista de itens do seu pedido:',
      'id': 'Kontrak baru telah dibuat untuk:',
      'ms': 'Kontrak baru telah dijana untuk:',
    },
    'kmp2gbpy': {
      'en': 'Camisa Preta',
      'id': 'Randy Alcorn',
      'ms': 'Randy Alcorn',
    },
    'a7nc1dt4': {
      'en': 'Vestuário',
      'id': 'Kepala Pengadaan',
      'ms': 'Ketua Perolehan',
    },
    '2f2nxucv': {
      'en': 'R\$ 59,90',
      'id': 'ACME Co.',
      'ms': 'ACME Co.',
    },
    'cznmrcv8': {
      'en': '2x',
      'id': 'Randy Alcorn',
      'ms': 'Randy Alcorn',
    },
    'vcm4fijj': {
      'en': 'Próximos passos',
      'id': 'Langkah selanjutnya',
      'ms': 'Langkah seterusnya',
    },
    '60n0fqw5': {
      'en':
          'Confirme o pedido e você será redirecionado para o WhatsApp do vendedor. ',
      'id':
          'Kirim informasi di bawah ini. Dan kami akan mengirimkan email dengan detail kepada pelanggan dan memungkinkan Anda untuk mengelolanya di dasbor Anda.',
      'ms':
          'Hantar maklumat di bawah. Dan kami akan menghantar e-mel dengan butiran kepada pelanggan dan membenarkan anda mengurusnya dalam papan pemuka anda.',
    },
    'e408bhw6': {
      'en': 'Enviar pedido',
      'id': 'Kirim Informasi',
      'ms': 'Hantar Maklumat',
    },
    'wo1onxhi': {
      'en': 'Cancelar',
      'id': 'Sudahlah',
      'ms': 'Tidak mengapa',
    },
  },
  // popupCancelarPedido
  {
    'wa4vkne2': {
      'en': 'Você tem certeza?',
      'id': 'Selamat!',
      'ms': 'tahniah!',
    },
    '3hf2ocig': {
      'en':
          'Você está prestes a cancelar este pedido, essa ação é irreversível.\n\nDeseja continuar?',
      'id':
          'Sekarang kontrak telah dibuat untuk pelanggan ini, silakan hubungi mereka dengan tanggal Anda akan mengirim perjanjian yang ditandatangani.',
      'ms':
          'Memandangkan kontrak telah dijana untuk pelanggan ini, sila hubungi mereka dengan tarikh anda akan menghantar perjanjian yang ditandatangani.',
    },
    'q0jvi1lp': {
      'en': 'Cancelar',
      'id': 'Oke',
      'ms': 'baik',
    },
    'oo4y13nf': {
      'en': 'Confirmar',
      'id': 'Melanjutkan',
      'ms': 'teruskan',
    },
  },
  // numeroDoPedido
  {
    '00flvi93': {
      'en': 'Pedido enviado!',
      'id': 'Selamat!',
      'ms': 'tahniah!',
    },
    'fmzceh74': {
      'en':
          'Informe o código do pedido abaixo ao vendedor para acompanhar o andamento:',
      'id': 'Kontrak baru telah dibuat untuk:',
      'ms': 'Kontrak baru telah dijana untuk:',
    },
    'x2tqh765': {
      'en': '#23453',
      'id': 'Selamat!',
      'ms': 'tahniah!',
    },
    'g8q2u55w': {
      'en': 'Fechar',
      'id': 'Melanjutkan',
      'ms': 'teruskan',
    },
  },
  // cadastrarProduto
  {
    'l2jlnhye': {
      'en': 'Cadastrar novo produto',
      'id': 'Buat Catatan',
      'ms': 'Cipta Nota',
    },
    'd6yfe8tj': {
      'en': 'Insira as informações do seu produto nos campos abaixo.',
      'id': 'Temukan anggota dengan mencari di bawah',
      'ms': 'Cari ahli dengan mencari di bawah',
    },
    'shub3yb6': {
      'en': 'Produto tem variação',
      'id': 'Buat Catatan',
      'ms': 'Cipta Nota',
    },
    'ei1nymte': {
      'en': 'card variacçao',
      'id': '',
      'ms': '',
    },
    'x0y3eoys': {
      'en': 'Fotos do produto',
      'id': 'Temukan anggota dengan mencari di bawah',
      'ms': 'Cari ahli dengan mencari di bawah',
    },
    'kx5q8aj9': {
      'en': 'Nome do produto',
      'id': 'Masukkan catatan Anda di sini...',
      'ms': 'Masukkan nota anda di sini...',
    },
    'fduz2mki': {
      'en': 'Preço de Venda',
      'id': 'Masukkan catatan Anda di sini...',
      'ms': 'Masukkan nota anda di sini...',
    },
    '5g0ebxs3': {
      'en': 'Opcionais',
      'id': 'Buat Catatan',
      'ms': 'Cipta Nota',
    },
    '9gf6o5ss': {
      'en': 'Preço promocional',
      'id': 'Masukkan catatan Anda di sini...',
      'ms': 'Masukkan nota anda di sini...',
    },
    'x63cptq3': {
      'en': 'Option 1',
      'id': '',
      'ms': '',
    },
    '5rflny0s': {
      'en': 'Categoria',
      'id': '',
      'ms': '',
    },
    '0ud4ehqx': {
      'en': 'Search for an item...',
      'id': '',
      'ms': '',
    },
    '6jpwmudw': {
      'en': 'Cadastrar nova categoria',
      'id': '',
      'ms': '',
    },
    '6xkliwol': {
      'en': 'Código do produto',
      'id': 'Masukkan catatan Anda di sini...',
      'ms': 'Masukkan nota anda di sini...',
    },
    'maumf221': {
      'en': 'Custo',
      'id': 'Masukkan catatan Anda di sini...',
      'ms': 'Masukkan nota anda di sini...',
    },
    'rkywqv5u': {
      'en': 'Descrição',
      'id': 'Masukkan catatan Anda di sini...',
      'ms': 'Masukkan nota anda di sini...',
    },
    'farrki57': {
      'en': 'Cadastrar produto',
      'id': 'Buat Catatan',
      'ms': 'Cipta Nota',
    },
  },
  // webNav
  {
    'fiv8j2wn': {
      'en': 'Dashboard',
      'id': 'Dasbor',
      'ms': 'Papan pemuka',
    },
    'nmtda22q': {
      'en': 'Produtos',
      'id': 'Kelompok ku',
      'ms': 'Pasukan saya',
    },
    'h1k4eq34': {
      'en': 'Clientes',
      'id': 'Pelanggan',
      'ms': 'Pelanggan',
    },
    'jx6y62rq': {
      'en': 'Pedidos',
      'id': 'Kontrak',
      'ms': 'Kontrak',
    },
    '6ji7f1hi': {
      'en': 'Minha Loja',
      'id': 'Kontrak',
      'ms': 'Kontrak',
    },
    's51mlt3o': {
      'en': 'Perfil',
      'id': 'Profil',
      'ms': 'Profil',
    },
  },
  // cadastrarCliente
  {
    '1wqwtktd': {
      'en': 'Cadastrar novo cliente',
      'id': 'Buat Catatan',
      'ms': 'Cipta Nota',
    },
    'yeotyzv1': {
      'en': 'Insira as informações do seu cliente nos campos abaixo.',
      'id': 'Temukan anggota dengan mencari di bawah',
      'ms': 'Cari ahli dengan mencari di bawah',
    },
    'umh31736': {
      'en': 'Imagem do cliente',
      'id': '',
      'ms': '',
    },
    'kb6ipauf': {
      'en': 'Imagem do cliente ou logo',
      'id': '',
      'ms': '',
    },
    'erpy0vu6': {
      'en': 'Suporta PNG, JPG e JPEG',
      'id': '',
      'ms': '',
    },
    '8892zkrc': {
      'en': 'Carregar imagem',
      'id': '',
      'ms': '',
    },
    '5l4rb33l': {
      'en': 'Dados básicos',
      'id': '',
      'ms': '',
    },
    'l1xjbh3y': {
      'en': '',
      'id': '',
      'ms': '',
    },
    '0s04tnsp': {
      'en': 'Nome',
      'id': '',
      'ms': '',
    },
    'cp8z93ww': {
      'en': '',
      'id': '',
      'ms': '',
    },
    '5wzvuk72': {
      'en': 'CPF/CNPJ',
      'id': '',
      'ms': '',
    },
    '8kog3cl1': {
      'en': '',
      'id': '',
      'ms': '',
    },
    'is9tc8sf': {
      'en': 'Observações',
      'id': '',
      'ms': '',
    },
    'w0u2f2jv': {
      'en': 'Contato',
      'id': '',
      'ms': '',
    },
    'a09fpklq': {
      'en': '',
      'id': '',
      'ms': '',
    },
    'krugja4e': {
      'en': 'Telefone',
      'id': '',
      'ms': '',
    },
    '0jbnfjdo': {
      'en': '',
      'id': '',
      'ms': '',
    },
    '6k9jgctw': {
      'en': 'E-mail',
      'id': '',
      'ms': '',
    },
    'bpa1wvau': {
      'en': 'Endereço',
      'id': '',
      'ms': '',
    },
    '6jhw2v7a': {
      'en': '',
      'id': '',
      'ms': '',
    },
    'opylmkz6': {
      'en': 'Rua',
      'id': '',
      'ms': '',
    },
    'vh1l9f5b': {
      'en': '',
      'id': '',
      'ms': '',
    },
    's4bqq66f': {
      'en': 'Nº',
      'id': '',
      'ms': '',
    },
    'sjccpiqd': {
      'en': '',
      'id': '',
      'ms': '',
    },
    '0sbqx1p2': {
      'en': 'Bairro',
      'id': '',
      'ms': '',
    },
    'hfsk0llf': {
      'en': '',
      'id': '',
      'ms': '',
    },
    'nqtb2s16': {
      'en': 'Cidade',
      'id': '',
      'ms': '',
    },
    'f7i95rj0': {
      'en': '',
      'id': '',
      'ms': '',
    },
    '75db68uk': {
      'en': 'Estado',
      'id': '',
      'ms': '',
    },
    'kzd1q4l1': {
      'en': 'Cadastrar cliente',
      'id': 'Buat Catatan',
      'ms': 'Cipta Nota',
    },
  },
  // popupConfirmarPedido
  {
    's62tmxxp': {
      'en': 'Parabéns!',
      'id': 'Selamat!',
      'ms': 'tahniah!',
    },
    '142wl8vt': {
      'en': 'Você está prestes a confirmar uma venda.',
      'id':
          'Sekarang kontrak telah dibuat untuk pelanggan ini, silakan hubungi mereka dengan tanggal Anda akan mengirim perjanjian yang ditandatangani.',
      'ms':
          'Memandangkan kontrak telah dijana untuk pelanggan ini, sila hubungi mereka dengan tarikh anda akan menghantar perjanjian yang ditandatangani.',
    },
    'kqqdpd6u': {
      'en': 'Cancelar',
      'id': 'Oke',
      'ms': 'baik',
    },
    'dunysg6e': {
      'en': 'Confirmar',
      'id': 'Melanjutkan',
      'ms': 'teruskan',
    },
  },
  // popupCadastrarCategoria
  {
    'fgoqhqtn': {
      'en': 'Cadastrar nova categoria',
      'id': 'Selamat!',
      'ms': 'tahniah!',
    },
    'dk61nmyg': {
      'en': 'Insira o nome da categoria',
      'id':
          'Sekarang kontrak telah dibuat untuk pelanggan ini, silakan hubungi mereka dengan tanggal Anda akan mengirim perjanjian yang ditandatangani.',
      'ms':
          'Memandangkan kontrak telah dijana untuk pelanggan ini, sila hubungi mereka dengan tarikh anda akan menghantar perjanjian yang ditandatangani.',
    },
    'zsrwquen': {
      'en': 'Categoria',
      'id': 'Masukkan catatan Anda di sini...',
      'ms': 'Masukkan nota anda di sini...',
    },
    'z16rjnos': {
      'en': 'Cancelar',
      'id': 'Oke',
      'ms': 'baik',
    },
    'qo40wn3q': {
      'en': 'Cadastrar',
      'id': 'Melanjutkan',
      'ms': 'teruskan',
    },
  },
  // esqueciMinhaSenha
  {
    'du1l542h': {
      'en':
          'Não lembra sua senha? Digite o e-mail associado à sua conta abaixo e enviaremos um novo link.',
      'id':
          'Tidak ingat kata sandi Anda? Masukkan email yang terkait dengan akun Anda di bawah ini dan kami akan mengirimkan tautan baru kepada Anda.',
      'ms':
          'Tidak ingat kata laluan anda? Masukkan e-mel yang dikaitkan dengan akaun anda di bawah dan kami akan menghantar pautan baharu kepada anda.',
    },
    '5k36k0aa': {
      'en': 'E-mail',
      'id': 'Alamat email',
      'ms': 'Alamat emel',
    },
    '0o37mgk4': {
      'en': 'Insira o seu e-mail',
      'id': 'Tolong masukkan email yang benar...',
      'ms': 'Sila masukkan e-mel yang sah...',
    },
    'dpensvrq': {
      'en': 'Enviar link',
      'id': 'Kirim Setel Ulang Tautan',
      'ms': 'Hantar Pautan Tetapan Semula',
    },
    'yb59c9iu': {
      'en': 'Voltar',
      'id': 'Kirim Setel Ulang Tautan',
      'ms': 'Hantar Pautan Tetapan Semula',
    },
  },
  // EditarPerfilLojista
  {
    'qyvbnuog': {
      'en': 'Editar perfil',
      'id': '',
      'ms': '',
    },
    'qol8vroq': {
      'en': 'Insira as informações abaixo para editar seu perfil',
      'id': '',
      'ms': '',
    },
    'p6rzqyaz': {
      'en': 'Adicionar Foto',
      'id': '',
      'ms': '',
    },
    'przb8zb6': {
      'en': 'Carregue uma imagem aqui',
      'id': '',
      'ms': '',
    },
    '55es5uxf': {
      'en': '',
      'id': '',
      'ms': '',
    },
    'dfqmeat4': {
      'en': 'Nome completo',
      'id': '',
      'ms': '',
    },
    'q8s1zpgv': {
      'en': '',
      'id': '',
      'ms': '',
    },
    'i9w0au4z': {
      'en': 'CPF',
      'id': '',
      'ms': '',
    },
    'd6wbev2g': {
      'en': 'Salvar informações',
      'id': '',
      'ms': '',
    },
    'y2t3rp0i': {
      'en': 'Field is required',
      'id': '',
      'ms': '',
    },
    '4kq8j6ae': {
      'en': 'Please enter a real name',
      'id': '',
      'ms': '',
    },
    '3xycy3uy': {
      'en': 'Please choose an option from the dropdown',
      'id': '',
      'ms': '',
    },
    'c24r8575': {
      'en': 'Please enter a short desription',
      'id': '',
      'ms': '',
    },
    'v5058au4': {
      'en': 'Please choose an option from the dropdown',
      'id': '',
      'ms': '',
    },
    'aovkcym9': {
      'en': 'We have to have a URL for the project.',
      'id': '',
      'ms': '',
    },
    'khs5kdiy': {
      'en': 'Please enter a valid URL...',
      'id': '',
      'ms': '',
    },
    '9ser5t4f': {
      'en': 'Please choose an option from the dropdown',
      'id': '',
      'ms': '',
    },
    'o4b3rtkj': {
      'en': 'Field is required',
      'id': '',
      'ms': '',
    },
    'c15fmle8': {
      'en': 'Please choose an option from the dropdown',
      'id': '',
      'ms': '',
    },
  },
  // EditarPerfilCliente
  {
    'yjowbpyy': {
      'en': 'Editar perfil',
      'id': '',
      'ms': '',
    },
    'zi46n4ch': {
      'en': 'Insira as informações abaixo para editar seu perfil',
      'id': '',
      'ms': '',
    },
    'ydnbgxzv': {
      'en': 'Adicionar Foto',
      'id': '',
      'ms': '',
    },
    'yu0j3ftm': {
      'en': 'Carregue uma imagem aqui',
      'id': '',
      'ms': '',
    },
    'fkv8376a': {
      'en': '',
      'id': '',
      'ms': '',
    },
    'f6up712u': {
      'en': 'Nome completo',
      'id': '',
      'ms': '',
    },
    'dkoeyd2b': {
      'en': '',
      'id': '',
      'ms': '',
    },
    '661b52ef': {
      'en': 'CPF',
      'id': '',
      'ms': '',
    },
    'x8crc0a6': {
      'en': '',
      'id': '',
      'ms': '',
    },
    'zifrc2iw': {
      'en': 'Telefone',
      'id': '',
      'ms': '',
    },
    'mxxxno1s': {
      'en': 'Endereço',
      'id': '',
      'ms': '',
    },
    'eyzc3zkn': {
      'en': '',
      'id': '',
      'ms': '',
    },
    '8scg8aah': {
      'en': 'Rua',
      'id': '',
      'ms': '',
    },
    'e8md2hwc': {
      'en': '',
      'id': '',
      'ms': '',
    },
    'xh5ahq0e': {
      'en': 'Nº',
      'id': '',
      'ms': '',
    },
    '63aco2w1': {
      'en': '',
      'id': '',
      'ms': '',
    },
    'wxvzmaia': {
      'en': 'Bairro',
      'id': '',
      'ms': '',
    },
    'e0q10k2h': {
      'en': '',
      'id': '',
      'ms': '',
    },
    'frmugz32': {
      'en': 'Cidade',
      'id': '',
      'ms': '',
    },
    '65dntqti': {
      'en': '',
      'id': '',
      'ms': '',
    },
    '5x9lae0y': {
      'en': 'Estado',
      'id': '',
      'ms': '',
    },
    'ja2dhqma': {
      'en': 'Salvar informações',
      'id': '',
      'ms': '',
    },
    'kpuwxcva': {
      'en': 'Field is required',
      'id': '',
      'ms': '',
    },
    'f13mrp8g': {
      'en': 'Please enter a real name',
      'id': '',
      'ms': '',
    },
    '2a3xl7sy': {
      'en': 'Please choose an option from the dropdown',
      'id': '',
      'ms': '',
    },
    '3rg7schb': {
      'en': 'Please enter a short desription',
      'id': '',
      'ms': '',
    },
    'f5430gqy': {
      'en': 'Please choose an option from the dropdown',
      'id': '',
      'ms': '',
    },
    'z132ncre': {
      'en': 'We have to have a URL for the project.',
      'id': '',
      'ms': '',
    },
    'i7aem5hl': {
      'en': 'Please enter a valid URL...',
      'id': '',
      'ms': '',
    },
    'eeeg07zc': {
      'en': 'Please choose an option from the dropdown',
      'id': '',
      'ms': '',
    },
    '8yo5kbx4': {
      'en': 'Field is required',
      'id': '',
      'ms': '',
    },
    'qn2am6o6': {
      'en': 'Please choose an option from the dropdown',
      'id': '',
      'ms': '',
    },
  },
  // TrocarSenha
  {
    'kqn42zzy': {
      'en':
          'Digite o e-mail associado à sua conta abaixo e enviaremos um novo link para trocar sua senha.',
      'id':
          'Tidak ingat kata sandi Anda? Masukkan email yang terkait dengan akun Anda di bawah ini dan kami akan mengirimkan tautan baru kepada Anda.',
      'ms':
          'Tidak ingat kata laluan anda? Masukkan e-mel yang dikaitkan dengan akaun anda di bawah dan kami akan menghantar pautan baharu kepada anda.',
    },
    '6rovi4yd': {
      'en': 'E-mail',
      'id': 'Alamat email',
      'ms': 'Alamat emel',
    },
    '65bg0lqm': {
      'en': 'Insira o seu e-mail',
      'id': 'Tolong masukkan email yang benar...',
      'ms': 'Sila masukkan e-mel yang sah...',
    },
    'h6559vc8': {
      'en': 'Enviar link',
      'id': 'Kirim Setel Ulang Tautan',
      'ms': 'Hantar Pautan Tetapan Semula',
    },
    '8ztiquhv': {
      'en': 'Voltar',
      'id': 'Kirim Setel Ulang Tautan',
      'ms': 'Hantar Pautan Tetapan Semula',
    },
  },
  // Miscellaneous
  {
    'u8hqlhbv': {
      'en': '',
      'id': '',
      'ms': '',
    },
    '5ty2dpcb': {
      'en': '',
      'id': '',
      'ms': '',
    },
    '65e2tfs2': {
      'en': '',
      'id': '',
      'ms': '',
    },
    'ddazihx4': {
      'en': '',
      'id': '',
      'ms': '',
    },
    'db03cpjj': {
      'en': '',
      'id': '',
      'ms': '',
    },
    'fdb9078p': {
      'en': '',
      'id': '',
      'ms': '',
    },
    '80ouzj9q': {
      'en': '',
      'id': '',
      'ms': '',
    },
    '6rzhptp9': {
      'en': '',
      'id': '',
      'ms': '',
    },
    'ce8c4ty0': {
      'en': '',
      'id': '',
      'ms': '',
    },
    'rjlh8m7p': {
      'en': '',
      'id': '',
      'ms': '',
    },
    'wlq1dhb3': {
      'en': '',
      'id': '',
      'ms': '',
    },
    'b0zflngn': {
      'en': '',
      'id': '',
      'ms': '',
    },
    'hasfna2o': {
      'en': '',
      'id': '',
      'ms': '',
    },
    'kcvqa08x': {
      'en': '',
      'id': '',
      'ms': '',
    },
    'dqrzd6sq': {
      'en': '',
      'id': '',
      'ms': '',
    },
    'dpqtohyf': {
      'en': '',
      'id': '',
      'ms': '',
    },
    'v01vf71s': {
      'en': '',
      'id': '',
      'ms': '',
    },
    'gcv6def1': {
      'en': '',
      'id': '',
      'ms': '',
    },
    'um9es99m': {
      'en': '',
      'id': '',
      'ms': '',
    },
    'o4enbz4j': {
      'en': '',
      'id': '',
      'ms': '',
    },
    '8z4tvfh7': {
      'en': '',
      'id': '',
      'ms': '',
    },
    '2ybzla8x': {
      'en': '',
      'id': '',
      'ms': '',
    },
    'd1wdf5i1': {
      'en': '',
      'id': '',
      'ms': '',
    },
    '18vtvoum': {
      'en': '',
      'id': '',
      'ms': '',
    },
    '2py80kgi': {
      'en': '',
      'id': '',
      'ms': '',
    },
    'p6lsrh2a': {
      'en': '',
      'id': '',
      'ms': '',
    },
    'ne8cclp9': {
      'en': '',
      'id': '',
      'ms': '',
    },
  },
].reduce((a, b) => a..addAll(b));
