-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 02 Haz 2018, 23:20:13
-- Sunucu sürümü: 10.1.30-MariaDB
-- PHP Sürümü: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `habersitesi`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `url` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `name` varchar(200) COLLATE utf8_turkish_ci NOT NULL,
  `content` text COLLATE utf8_turkish_ci NOT NULL,
  `short_content` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `image` varchar(250) COLLATE utf8_turkish_ci DEFAULT NULL,
  `cat_id` int(11) NOT NULL,
  `slider` int(1) DEFAULT '0',
  `video_url` varchar(200) COLLATE utf8_turkish_ci DEFAULT NULL,
  `tags` varchar(250) COLLATE utf8_turkish_ci DEFAULT NULL,
  `hit` int(11) NOT NULL,
  `author` int(11) DEFAULT NULL,
  `active` int(11) NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `article`
--

INSERT INTO `article` (`id`, `url`, `name`, `content`, `short_content`, `image`, `cat_id`, `slider`, `video_url`, `tags`, `hit`, `author`, `active`, `updated_at`, `created_at`) VALUES
(1, '2018-05-18-224455-what-is-lorem-ipsum', 'What is Lorem Ipsum?', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><h2>Why do we use it?</h2><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', NULL, 12, 0, 'youtube.com', 'lipsum', 0, 1, 0, '2018-05-18 22:45:54', '2018-05-18 22:44:56'),
(2, '2018-05-18-224513-what-is-lorem-ipsum2', 'What is Lorem Ipsum?2', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><h2>Why do we use it?</h2><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', NULL, 12, 0, 'youtube.com', 'lipsum', 0, 1, 0, '2018-05-18 22:45:13', '2018-05-18 22:45:13'),
(3, '2018-05-18-224519-what-is-lorem-ipsum3', 'What is Lorem Ipsum?3', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><h2>Why do we use it?</h2><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', NULL, 12, 0, 'youtube.com', 'lipsum', 0, 1, 0, '2018-05-18 22:45:19', '2018-05-18 22:45:19'),
(4, '2018-05-18-224526-what-is-lorem-ipsum4', 'What is Lorem Ipsum?4', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><h2>Why do we use it?</h2><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', NULL, 12, 0, 'youtube.com', 'lipsum', 0, NULL, 0, '2018-05-18 22:45:26', '2018-05-18 22:45:26'),
(5, '2018-05-18-224532-what-is-lorem-ipsum5', 'What is Lorem Ipsum?5', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><h2>Why do we use it?</h2><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', NULL, 13, 0, 'youtube.com', 'lipsum', 0, NULL, 0, '2018-05-20 22:00:58', '2018-05-18 22:45:32'),
(6, '2018-05-20-190214-angulara-giris', 'Angulara Giriş', '<p>aksdfjnasdf</p>', 'kjsdfas', NULL, 9, 0, 'sdd', 'sad', 0, NULL, 0, '2018-05-20 19:02:14', '2018-05-20 19:02:14'),
(7, '2018-05-22-204531-laravel-dersleri', 'Codeigniter Dersleri', '<h2>What is Lorem Ipsum?</h2><p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><h2>Why do we use it?</h2><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '2018-05-22-204531-laravel-dersleri.png', 11, 0, 'youtube.com', 'asd', 0, NULL, 0, '2018-05-22 21:57:50', '2018-05-22 20:45:31'),
(8, '2018-05-22-204823-laravel-dersleri', 'Laravel Dersleri', '<h2>What is Lorem Ipsum?</h2><p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><h2>Why do we use it?</h2><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '2018-05-22-212039-laravel-dersleri.jpg', 13, 0, 'youtube.com', 'asd', 0, NULL, 0, '2018-05-22 22:18:29', '2018-05-22 20:48:23'),
(9, '2018-05-22-205045-laravel-dersleri', '1Laravel Dersleri', '<h2>What is Lorem Ipsum?</h2><p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><h2>Why do we use it?</h2><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '2018-05-22-212039-laravel-dersleri.jpg', 10, 0, 'youtube.com', 'asd', 0, NULL, 0, '2018-05-22 20:50:46', '2018-05-22 20:50:46'),
(10, '2018-05-22-210120-laravel-dersleri', 'Laravel Dersleri', '<h2>What is Lorem Ipsum?</h2><p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><h2>Why do we use it?</h2><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '2018-05-22-212039-laravel-dersleri.jpg', 10, 0, 'youtube.com', 'asd', 0, NULL, 0, '2018-05-22 21:01:20', '2018-05-22 21:01:20'),
(11, '2018-05-22-212039-laravel-dersleri', 'Laravel Dersleri', '<h2>What is Lorem Ipsum?</h2><p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><h2>Why do we use it?</h2><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '2018-05-22-212039-laravel-dersleri.jpg', 10, 0, 'youtube.com', 'lipsum', 0, 0, 0, '2018-05-22 21:20:40', '2018-05-22 21:20:40'),
(12, '2018-05-24-163815-nasanin-resmi-facebook-hesabindan-iklim-degisikligini-inkar-edenleri-rencide-eden-cevap', 'NASA\'nın Resmi Facebook Hesabından İklim Değişikliğini İnkar Edenleri Rencide Eden Cevap!', '<p>Sosyal medyadaki yorumlar&nbsp;her zaman eğlencelidir. Özellikle de söz konusu alevli bir tartışma olunca. Ancak bazı yorumlar, internet aleminde ilgi çekmek yerine kaybolup gider.</p><p>Geçtiğimiz günlerde NASA\'nın Facebook\'taki resmi hesaplarından bir tanesi (NASA Climate Change), iklim değişikliği inkarcılarının ağzının payını vermek için harekete geçti. Birkaç gün önce iklim değişikliği inkarcısı Marc Morano\'ya bilim duayeni Bill Nye, 20.000 dolarlık bahis teklif etti. Ancak Morano bunu reddetti.</p><p>O olaydan sonra ise insanları şaşırtmayacak bir şekilde iklim değişikliği inkarcıları, Nye\'nin gönderimini paylaşarak Facebook\'taki trolleri çağırdı. Bununla birlikte birçok YouTube komplo teorisyeni NASA\'yı dolandırıcılıkla ve insanları kandırmakla suçladı. Ancak birçok insan da NASA\'dan birtakım alıntılama yaparak onlara cevabını verdi.</p><p><i>\"Andy Andreadis: NASA, abartılı sayılarla insanları oyalamayı seviyor. NASA, uzay programıyla ilişiğini kesmelidir.\"</i></p><p><i>NASA Climate Changes: Andy Andreadis NASA insanları abartılı rakamlarla oyalamaz. Tüm veriler, önceki bilgileri ortadan kaldırmak için istatiksel bilgiler içerir. Günün belirli zamanlarına göre ayarlanan sıcaklık, kentsel ısıyı ortadan kaldırır... Bunların hepsi açıkça belgelendi. Bu ayarlamalar, daha doğru veri elde etmek için yapıldı.\"</i></p>', 'NASA, her ne kadar her düz Dünyacılara ya da iklim değişikliği inkarcılarına cevap vermese de sosyal medyada durum biraz farklı olabiliyor.', '2018-05-24-163815-nasanin-resmi-facebook-hesabindan-iklim-degisikligini-inkar-edenleri-rencide-eden-cevap.png', 14, 0, NULL, 'bilim', 1, 0, 1, '2018-05-27 13:47:40', '2018-05-24 16:38:15'),
(13, '2018-05-24-164309-arastirmacilar-dunyanin-ne-zaman-yasanilabilir-bir-gezegen-haline-donustugunu-buldular', 'Araştırmacılar, Dünya\'nın Ne Zaman Yaşanılabilir Bir Gezegen Haline Dönüştüğünü Buldular!', '<p>Hepimiz biliyoruz ki tek evimiz olan Dünya, günümüzden milyarlarca yıl önce hiç tanıyamayacağımız bir haldeydi. 1-2 milyar kadar önce Dünya üzerindeki karalar&nbsp;bambaşka şekillerdeydi. Daha da geçmişe gittiğimizde ise karaların denizlere oranı günümüzden katbekat düşüktü. Fakat dinamik bir yapıda olan Dünya, sonunda karasal yaşamı destekleyebilecek kadar fazla karaya kavuşmuş oldu.</p><p>Nature dergisinde bugün(24 Mayıs) yayınlanan bir çalışmaya göre Dünya’da en fazla rastlanılan tortul kaya olan şist örnekleri gösteriyor ki gezegenimiz, 2.4 milyar yıl önce büyük bir değişim göstermiş. Kabuğun hemen altında bulunan manto, 2.4 milyar yıl önce bir miktar soğuyarak kabuğun kalınlaşmasını ve su yüzeyine çıkmasını sağladı. İlk kıtasal çarpışmaların yaşandığı bu dönemde kabuk, ani bir değişimle deniz yüzeyine çıkarak Dünya’daki kara miktarını günümüzün 3’de 2’si oranına çıkardı.</p><p>Her bir kıtadan alınan 278 şist örneğinin ortaya çıkardığı bu gerçek, Dünya’nın günümüzdeki yaşamı destekleyecek gezegen olma sürecine 2.4 milyar yıl önce başladığını gösteriyor. Zira kara miktarı günümüzdeki seviyeye ulaşmamış olsaydı&nbsp;bundan yalnızca karasal yaşam değil, denizlerin altındaki yaşam da etkilenirdi.</p><p>Dünya bir zamanlar neredeyse tamamen denizlerden oluşuyordu. Gün ışığı yalnızca denizlere düşüyordu ve suyu ısıtıyordu. Bu nedenle Dünya çok daha sıcak bir gezegendi. Dakat 2.4 milyar yıl önce kara oranında bir anda artış olunca Dünya’daki deniz oranı azalmış oldu. Buna ek olarak kayalar, atmosferdeki karbondioksiti emip atmosferdeki oksijen oranını arttırınca Dünya hızlı bir şekilde soğumaya başladı. Bu soğuma önce Dünya’ya ilk kez kar yağmasına, sonra da ilk buzulların oluşmasına neden oldu. Ardından ilerleyen süreçte ise karalar bugünkü şekline kavuşmuş oldu.</p>', 'Yeni bir araştırmaya göre 2.4 milyar yıl önce Dünya üzerindeki karasal alan oranı ani bir şekilde arttı. Bu artış, gezegenin yaşamı destekleyecek kadar soğumasına neden oldu.', '2018-05-24-164309-arastirmacilar-dunyanin-ne-zaman-yasanilabilir-bir-gezegen-haline-donustugunu-buldular.jpg', 14, 0, NULL, NULL, 0, 0, 1, '2018-05-26 23:51:28', '2018-05-24 16:43:09'),
(14, '2018-05-24-164839-duz-metin-dosyasina-gizli-bilgi-sifreleyebilen-bir-yazilim-gelistirildi', 'Düz Metin Dosyasına Gizli Bilgi Şifreleyebilen Bir Yazılım Geliştirildi!', '<p>Times New Roman veya Helvetica gibi yazı tiplerinin harflerinin şeklinde gözle algılanamayacak kadar ufak değişiklikler yapılmasına dayanan bu yeni teknikle, şifrelenmiş bir mesajı çözmek için akıllı telefona yüklenebilen bir uygulama kullanmak yeterli oluyor. Yazılım, her harfin 52 değişik versiyonunu oluşturabiliyor.</p><p>Chang Xiao, Cheng Zhang, Changxi Zheng isimli 3 araştırmacıdan oluşan ekip, \'FontCode\' (Yazı Tipi Kodu) ismini verdikleri tekniği, arXiv sitesinde yayımladıkları makalede şu şekilde anlatıyor: “Metin dosyaları için bir enformasyon gömme tekniği olan FontCode’u sunuyoruz. Belirli yazı tipleri ile yazılmış bir metin belgesi verildiğinde, yöntemimiz metin içeriğini değiştirmeden, metni oluşturan karakterlerin oyuntularında hafif değişimler yaparak, kullanıcının belirlediği bilgiyi gömebiliyor.</p><p>Bir yazı tipi dağıtıcısı üzerindeki her bir karakterin oyuntularını sürekli olarak değiştiren, daha önceden geliştirilmiş üretken bir modeli güçlendirerek, göze çarpmayan ama makine tarafından tanınabilir oyuntu değişimleri seçmek için bir algoritma geliştirdik. Ardından, kullanıcı tarafından verilen bir iletiyi metin belgesine gömen ve başlangıçtaki belgeden çok az değişik görünümde bir belge üreten bir algoritma ekledik. Ayrıca, vektör grafiği ya da piksel görüntüsü veya hatta basılı kağıt şeklinde saklanmış durumdaki kod içeren bir belgede gömülü olan bilgiyi yeniden oluşturabilen bir oyuntu tanıma yöntemi sunduk. Bunlara ek olarak, çok sayıda tanıma hatasını düzeltebilen yeni bir hata düzeltme kodlama şeması da sunduk. Son olarak, metin dosyası metadata saklayıcı, göze çarpmayan optik barkod, şifreli ileti gömme şeması ve metin belgesi imzası için kullanılabilecek olan tekniğimizin geniş bir uygulama alanı olduğunu gösterdik.”</p><p>Changxi Zheng, FontCode‘un gizli mesaj gönderme maksatlı kullanımın yanında, şirketlerin işine yarayabilecek uygulamalarının da önemini belirtiyor: Belgelerin görüntüsü bozulmadan kullanım haklarının korunmasını, QR kodu ya da farklı metadata çeşitlerinin gömülmesini sağlıyor. Bu teknikte bir metin belgesine gizlenebilecek veri miktarı, belgedeki metnin uzunluğuna bağlı oluyor. Çoğu yazı tipi ile kullanılabiliyor ve öteki belgeye veri gizleme yöntemlerinden farklı olarak çoğu belge tipi ile kullanılabiliyor. Üstelik belgenin dosya türü değiştirilse veya çıktısı alınsa dahi gizli ileti kaybedilmiyor. Ama şayet şifreli metni bir editörde açıp kopyalarak, farklı bir metin editörü penceresine yapıştırırsanız, iletiyi kaybediyorsunuz.</p><p>Program gizlenecek mesajı bir bit dizisine çevirdikten sonra, bir tamsayı dizisine çeviriyor. Her bir tamsayı, normal metindeki beş harflik bir bloğa atanıyor.</p><figure class=\"image\"><img src=\"http://www.webtekno.com/images/editor/default/0001/52/ab6165306843998b811c203e95654b7983cb2d9a.jpeg\"></figure><p>FontCode‘u kullanarak veri gömmek için gizli bir mesaj ve bir taşıyıcı belge sunuyorsunuz. Program saklanacak mesajı 0 ve 1’lerden meydana gelen bir bit dizisine (ASCII veya Unicode) çevirdikten sonra, bir tamsayı dizisine çeviriyor. Her bir tamsayı, normal metindeki beş harflik bir bloğa atanıyor. Ardından normal metindeki her bir harfin yerine, kod kitabındaki değiştirilmiş hâli yerleştiriliyor. Her beşlideki değiştirilmiş hâldeki harflerin kod kitabındaki konum numaralarının toplamı, o beşliye atanmış olan tamsayı ediyor.</p><p>Gizli iletiyi açığa çıkarmak içinse işlem tersinden yapılıyor. Dijital bir dosyadan ya da akıllı telefonla çekilmiş bir fotoğraftan, FontCode harfleri orijinalleriyle karşılaştırarak değiştirilmiş harfleri tespit ediyor ve kod kitabından iletiyi oluşturuyor.</p><p>Karşılaştırma, evrişimli sinirsel ağlar (İng. convolutional neural networks – CNN) kullanılarak yapılıyor. Vektör çizimli (PDF biçiminde kaydedilenler veya Illustrator gibi programlarla hazırlananlar gibi olan) yazı tiplerinde söz konusu belirleme işlemi kolay, zira biçim ve yol tanımları bilgisayar tarafından okunabilir oluyor. Fakat PNG, IMG gibi pikselli yazı tiplerinde iş o denli basit değil. Aydınlatma farkı, farklı kamera açıları, gürültü ve netlikteki bozukluklar dolayısıyla karşılaştırma ve oyuntusu farklı olanları saptama işlemi zorlaşıyor.</p><p>\'Hello World\' iletisinin \'Bilbo was very rich…\' diye başlayan metnin içine gizlenme ve gizli metnin tekrar oluşturulma sürecini gösteren şema.</p><figure class=\"image\"><img src=\"http://www.webtekno.com/images/editor/default/0001/52/586d800ed6f029d489cffbafd173270612f30cd5.jpeg\"></figure><p>Ekip bu zorluğu aşabilme adına 1700 senelik Çinli Kalan Teoremi‘nden faydalandıklarını ifade ediyor. Söz konusu teorem, bilinmeyen bir sayının, birkaç farklı bölenle bölümünden kalan sayılara bakarak bulunmasını sağlar. Efsaneye göre eski bir Çin hükümdarı, ordusundaki asker sayısını bulmak için bütün orduyu önce 3 kişilik, sonra 5 kişilik, akabinde de 7 kişilik gruplara ayırır ve her defasında grup dışı kalan asker sayısına bakarmış. Buna göre de, ordudaki toplam asker sayısını hesaplarmış. Zheng, FontCode için bu teoremden nasıl yararlandıklarını şu şekilde açıklıyor: “Üç tane bilinmeyen değişken olsun. Üç tane lineer eşitlik ile bunların üçünü de bulabilmeniz gerekir. Eğer eşitlik sayısını üçten beşe çıkarırsanız, bu beş eşitlikten herhangi üçünü bildiğiniz sürece, üç bilinmeyeni yine bulursunuz.”&nbsp;</p><p>Çinli Kalan Teoremi’ni kullanarak, harflerdeki değişikliklerin %25’i tanınamasa dahi mesajların tekrar oluşturulabileceğini araştırmacılar gösterdi.&nbsp;</p>', 'Columbia Mühendislik’ten bilgisayar bilimcileri, düz metin dosyalarının içine enformasyon gizlemek için yeni bir yöntem geliştirdiklerini duyurdu.', '2018-05-24-164839-duz-metin-dosyasina-gizli-bilgi-sifreleyebilen-bir-yazilim-gelistirildi.png', 14, 0, NULL, NULL, 5, 0, 1, '2018-05-27 13:45:06', '2018-05-24 16:48:39'),
(15, '2018-05-26-135558-bir-yapay-zekadan-insanin-beynini-eriten-bitcoin-ve-kripto-para-nedir-cevabi', 'Bir Yapay Zekadan, İnsanın Beynini Eriten ‘Bitcoin ve Kripto Para Nedir?’ Cevabı', '<p>Temel olarak bir bilgi sahibi olanlardan tutun, Bitcoin&rsquo;in kitabını yalayıp yutanlara kadar herkesin aklını &ccedil;orba edecek bir a&ccedil;ıklama var. &Uuml;stelik bu a&ccedil;ıklama bir yapay zekaya ait.<br />\r\n&nbsp;</p>\r\n\r\n<p>Ge&ccedil;tiğimiz yıldan bu yana sadece Blok Zinciri teknolojisine merak salan dijitalleşme aşığı kişilerin bildiği Bitcoin ve kripto para kavramları, son aylarda pek &ccedil;ok insan tarafından merak ediliyor. Bilgi almak i&ccedil;in herkes deliler gibi internete başvururken, yabancı dil bilenler diğerlerine g&ouml;re biraz daha şanslı olup, daha kapsamlı a&ccedil;ıklamalara erişiyorlar.&nbsp;<br />\r\n&nbsp;</p>\r\n\r\n<p>Temel olarak Blok Zinciri, asla silinemeyen bir deftere yazılan bilgilerin işlenmesiyle &ccedil;alışan, yazılan her bilginin milyonlarca sistem tarafından doğrulanmak zorunda olduğu bir teknoloji. Kripto paralar ise bu teknolojinin sadece bir &uuml;r&uuml;n&uuml;. Dolayısıyla hi&ccedil;bir devlet otoritesine bağlı kalmayan, değerini sadece &uuml;retenlerin ve yatırımcıların belirlediği merkezi olmayan bir ekonomik sistem.&nbsp;<br />\r\n&nbsp;</p>\r\n\r\n<p>Yapay zekalar anlaşıldığı &uuml;zere hen&uuml;z dijital &ccedil;ağın en b&uuml;y&uuml;k buluşlarından birisi olarak lanse edilen Blok Zinciri teknolojisini a&ccedil;ıklayamıyorlar. Bir genelleme yapmak belki hata olacak fakat bu video kadar işi karıştıran bir a&ccedil;ıklama g&ouml;rmeniz &ccedil;ok zor.&nbsp;</p>', 'Kripto paralar ve özellikle de en değerli birim olan Bitcoin, her şeyin dijitalleştiği şu günlerde çoğu insanın teknolojiye ilgi duymasına yol açtı.', '2018-05-26-135558-bir-yapay-zekadan-insanin-beynini-eriten-bitcoin-ve-kripto-para-nedir-cevabi.jpg', 16, 0, 'https://www.youtube.com/embed/tBRWJzAjkjk', 'kripto para', 48, 0, 1, '2018-05-28 08:15:19', '2018-05-26 13:55:59'),
(16, '2018-05-26-140011-rusyada-kripto-para-hirsizliklarini-engellemek-icin-emsal-bir-karar-alindi', 'Rusya’da Kripto Para Hırsızlıklarını Engellemek İçin Emsal Bir Karar Alındı!', '<p>Temel olarak bir bilgi sahibi olanlardan tutun, Bitcoin&rsquo;in kitabını yalayıp yutanlara kadar herkesin aklını &ccedil;orba edecek bir a&ccedil;ıklama var. &Uuml;stelik bu a&ccedil;ıklama bir yapay zekaya ait.<br />\n&nbsp;</p>\n\n<p>Ge&ccedil;tiğimiz yıldan bu yana sadece Blok Zinciri teknolojisine merak salan dijitalleşme aşığı kişilerin bildiği Bitcoin ve kripto para kavramları, son aylarda pek &ccedil;ok insan tarafından merak ediliyor. Bilgi almak i&ccedil;in herkes deliler gibi internete başvururken, yabancı dil bilenler diğerlerine g&ouml;re biraz daha şanslı olup, daha kapsamlı a&ccedil;ıklamalara erişiyorlar.&nbsp;<br />\n&nbsp;</p>\n\n<p>Temel olarak Blok Zinciri, asla silinemeyen bir deftere yazılan bilgilerin işlenmesiyle &ccedil;alışan, yazılan her bilginin milyonlarca sistem tarafından doğrulanmak zorunda olduğu bir teknoloji. Kripto paralar ise bu teknolojinin sadece bir &uuml;r&uuml;n&uuml;. Dolayısıyla hi&ccedil;bir devlet otoritesine bağlı kalmayan, değerini sadece &uuml;retenlerin ve yatırımcıların belirlediği merkezi olmayan bir ekonomik sistem.&nbsp;<br />\n&nbsp;</p>\n\n<p>Yapay zekalar anlaşıldığı &uuml;zere hen&uuml;z dijital &ccedil;ağın en b&uuml;y&uuml;k buluşlarından birisi olarak lanse edilen Blok Zinciri teknolojisini a&ccedil;ıklayamıyorlar. Bir genelleme yapmak belki hata olacak fakat bu video kadar işi karıştıran bir a&ccedil;ıklama g&ouml;rmeniz &ccedil;ok zor.&nbsp;</p>', 'Son yılın en tartışmalı konularından olan kripto paralar, pek çok ülkenin ilgili devlet birimlerini finansal teknoloji konusunda çalışmalar yapmaya itiyor.', '2018-05-26-140011-rusyada-kripto-para-hirsizliklarini-engellemek-icin-emsal-bir-karar-alindi.jpg', 16, 0, NULL, NULL, 0, 0, 1, '2018-05-27 19:55:58', '2018-05-26 14:00:11'),
(17, '2018-05-26-140451-qualcomm-yapay-zekali-yeni-yongasi-snapdragon-710u-duyurdu', 'Qualcomm, Yapay Zekalı Yeni Yongası Snapdragon 710\'u Duyurdu', '<p>Dünyanın en büyük mobil işlemci üreticisi Qualcomm, orta seviye olarak piyasaya sürülen cihazların, daha yüksek özelliklere kavuşmaları için yeni bir ara işlemci modeli tanıttı. Snapdragon 710, şirketin orta seviyeli cihazlara yapay zekayı getirmesini sağlayacak. &nbsp;</p><p>&nbsp;</p><p>Akıllı telefon dünyasına amiral gemisi sıfatıyla giren son cihazların&nbsp;öncekilerden en önemli farkı, yapay zeka destekli mobil işlemcileri oldu. Şu anda piyasada bu şekilde üretilen ve kullanımda olan 4 farklı işlemci var: Apple’ın A11 Bionic yongası, Huawei’nin Kirin 970 yongası, Samsung’un Exynos 9810 yongası ve son olarak Snapdragon 845.</p><p>&nbsp;</p><p>Bu işlemcilerin ilk üçü, sadece işlemcileri üreten şirketlerin cihazlarında görebiliyoruz. Qualcomm ise Snapdragon 845 ile onlarca farklı üreticinin işlemci sorununu çözüyor. Hatta kısa bir süre önce hücresel veri anteni sattığı Apple da bu şirketler arasındaydı. &nbsp;</p><p>&nbsp;</p><p>Elbette bahsi geçen yapay zeka destekli işlemciler, sadece amiral gemisi cihazlarda bulunuyorlar. Pazarda bir fark yaratmak isteyen Qualcomm ise yapay zeka desteğini daha ucuz bir sınıfa, orta seviye cihazlara getirmek için kollarını sıvadı. &nbsp;</p><p>&nbsp;</p><p>Yeni Snapdragon 710, son dönem orta seviye cihazlarda kullanılan 600 serisinden çok daha fazlasını vadederken, amirallerde yer alan 800 serisinin bazı özelliklerine de sahip. Bir başka deyişle bundan sonra çıkacak 710 yongalı cihazlar, önceki yılların amirallerinden farksız olacaklar. Hatta yapay zeka desteği olmayan 835’li modellere de önemli farklar atmaları mümkün. &nbsp;</p><p>&nbsp;</p><figure class=\"image\"><img src=\"http://www.webtekno.com/images/editor/default/0001/52/c371938638feeb6896cb2ede7b8ede0faedb7788.jpeg\"></figure><p>&nbsp;</p><p>Snapdragon 710 yongası, içerisinde bir Kryo 6 ve bir Adreno 6 serisi GPU ile geliyor. Snapdragon 660’a kıyasla %10’lik bir performans artışı sağlayacak 710, 4K video oynatma ve uzun süreli batarya kullanımı gibi avantajları da orta seviyeli cihazlara getirecek. &nbsp;&nbsp;</p><p>&nbsp;</p><p>Ayrıca yeni işlemci yongası, Spectra 250 işlemcisi sayesinde kamera performansını da arttırıyor. Görüntülerdeki kumlanmanın azalması, görüntülerin sabitlenmesi ve hatta aktif derinlik algılama gibi özelliklerle zengin bir deneyim sunuyor. Spectra 250, 32 megapiksele kadar tek sensör, 20’şer megapiksele kadar da çift sensörlü kamera donanımlarını destekliyor. &nbsp;</p><p>&nbsp;</p><figure class=\"image\"><img src=\"http://www.webtekno.com/images/editor/default/0001/52/e62a7190e7b053dc4aab4a056c6a6f525afebba6.jpeg\"></figure><p>&nbsp;</p><p>Şimdilik Snapdragon 710 ile birlikte geleceği açıklanan orta seviyeli bir cihazın adını duymadık. Yine de oldukça hızlı ilerleyen akıllı telefon sektöründe bu işlemciye sahip cihazları birkaç ay içinde görmeyi bekliyoruz. &nbsp;&nbsp;</p><p>&nbsp;</p><p>Snapdragon&nbsp;710, orta seviyeye “premium” özellikler getirecek ve çoğu otoriteye göre, orta seviye amiral gemisi adında yeni bir sınıf oluşturacak. Tüketiciler de amiral gemilerin yüksek fiyatlarından kaçınıp, 710 ile donatılmış daha ucuz cihazlara yönelecekler.&nbsp;</p>', 'Akıllı telefon dünyasına amiral gemisi sıfatıyla giren son cihazların öncekilerden en önemli farkı, yapay zeka destekli mobil işlemcileri oldu.', '2018-05-26-140451-qualcomm-yapay-zekali-yeni-yongasi-snapdragon-710u-duyurdu.jpeg', 15, 1, NULL, 'Donanım', 4, 0, 1, '2018-05-27 19:56:56', '2018-05-26 14:04:51'),
(18, '2018-05-26-142040-gelecek-geliyor-lgden-yuvarlanabilir-ve-arkasi-gorulebilen-televizyon', 'Gelecek Geliyor: LG\'den Yuvarlanabilir ve Arkası Görülebilen Televizyon!', '<p>D&uuml;nyanın en b&uuml;y&uuml;k mobil işlemci &uuml;reticisi Qualcomm, orta seviye olarak piyasaya s&uuml;r&uuml;len cihazların, daha y&uuml;ksek &ouml;zelliklere kavuşmaları i&ccedil;in yeni bir ara işlemci modeli tanıttı. Snapdragon 710, şirketin orta seviyeli cihazlara yapay zekayı getirmesini sağlayacak.<br />\r\n&nbsp;</p>\r\n\r\n<p>Akıllı telefon d&uuml;nyasına amiral gemisi sıfatıyla giren son cihazların&nbsp;&ouml;ncekilerden en &ouml;nemli farkı, yapay zeka destekli mobil işlemcileri oldu. Şu anda piyasada bu şekilde &uuml;retilen ve kullanımda olan 4 farklı işlemci var: Apple&rsquo;ın A11 Bionic yongası, Huawei&rsquo;nin Kirin 970 yongası, Samsung&rsquo;un Exynos 9810 yongası ve son olarak Snapdragon 845.</p>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n\r\n<p>Bu işlemcilerin ilk &uuml;&ccedil;&uuml;, sadece işlemcileri &uuml;reten şirketlerin cihazlarında g&ouml;rebiliyoruz. Qualcomm ise Snapdragon 845 ile onlarca farklı &uuml;reticinin işlemci sorununu &ccedil;&ouml;z&uuml;yor. Hatta kısa bir s&uuml;re &ouml;nce h&uuml;cresel veri anteni sattığı Apple da bu şirketler arasındaydı.<br />\r\n&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://www.webtekno.com/images/editor/default/0001/52/1711f1007064f30007125b9592573d5edce7b2a7.jpeg\" /></p>\r\n\r\n<p>Elbette bahsi ge&ccedil;en yapay zeka destekli işlemciler, sadece amiral gemisi cihazlarda bulunuyorlar. Pazarda bir fark yaratmak isteyen Qualcomm ise yapay zeka desteğini daha ucuz bir sınıfa, orta seviye cihazlara getirmek i&ccedil;in kollarını sıvadı.<br />\r\n&nbsp;</p>\r\n\r\n<p>Yeni Snapdragon 710, son d&ouml;nem orta seviye cihazlarda kullanılan 600 serisinden &ccedil;ok daha fazlasını vadederken, amirallerde yer alan 800 serisinin bazı &ouml;zelliklerine de sahip. Bir başka deyişle bundan sonra &ccedil;ıkacak 710 yongalı cihazlar, &ouml;nceki yılların amirallerinden farksız olacaklar. Hatta yapay zeka desteği olmayan 835&rsquo;li modellere de &ouml;nemli farklar atmaları m&uuml;mk&uuml;n.<br />\r\n&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://www.webtekno.com/images/editor/default/0001/52/c371938638feeb6896cb2ede7b8ede0faedb7788.jpeg\" /></p>\r\n\r\n<p>Snapdragon 710 yongası, i&ccedil;erisinde bir Kryo 6 ve bir Adreno 6 serisi GPU ile geliyor. Snapdragon 660&rsquo;a kıyasla %10&rsquo;lik bir performans artışı sağlayacak 710, 4K video oynatma ve uzun s&uuml;reli batarya kullanımı gibi avantajları da orta seviyeli cihazlara getirecek.&nbsp;<br />\r\n&nbsp;</p>\r\n\r\n<p>Ayrıca yeni işlemci yongası, Spectra 250 işlemcisi sayesinde kamera performansını da arttırıyor. G&ouml;r&uuml;nt&uuml;lerdeki kumlanmanın azalması, g&ouml;r&uuml;nt&uuml;lerin sabitlenmesi ve hatta aktif derinlik algılama gibi &ouml;zelliklerle zengin bir deneyim sunuyor. Spectra 250, 32 megapiksele kadar tek sens&ouml;r, 20&rsquo;şer megapiksele kadar da &ccedil;ift sens&ouml;rl&uuml; kamera donanımlarını destekliyor.<br />\r\n&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://www.webtekno.com/images/editor/default/0001/52/e62a7190e7b053dc4aab4a056c6a6f525afebba6.jpeg\" /></p>\r\n\r\n<p>Şimdilik Snapdragon 710 ile birlikte geleceği a&ccedil;ıklanan orta seviyeli bir cihazın adını duymadık. Yine de olduk&ccedil;a hızlı ilerleyen akıllı telefon sekt&ouml;r&uuml;nde bu işlemciye sahip cihazları birka&ccedil; ay i&ccedil;inde g&ouml;rmeyi bekliyoruz.&nbsp;<br />\r\n&nbsp;</p>\r\n\r\n<p>Snapdragon&nbsp;710, orta seviyeye &ldquo;premium&rdquo; &ouml;zellikler getirecek ve &ccedil;oğu otoriteye g&ouml;re, orta seviye amiral gemisi adında yeni bir sınıf oluşturacak. T&uuml;keticiler de amiral gemilerin y&uuml;ksek fiyatlarından ka&ccedil;ınıp, 710 ile donatılmış daha ucuz cihazlara y&ouml;nelecekler.&nbsp;</p>', 'Teknolojinin her alanda çağ atladığı günümüzde televizyonların da sıçrama yapmasının zamanı gelmiş gibi görünüyor.', '2018-05-26-142040-gelecek-geliyor-lgden-yuvarlanabilir-ve-arkasi-gorulebilen-televizyon.png', 15, 0, 'https://www.youtube.com/embed/qIRjytgNuhM', 'Televizyon', 10, 0, 1, '2018-05-27 18:43:15', '2018-05-26 14:20:41'),
(19, '2018-05-26-142901-apple-yeni-iphone-modellerinde-kullanilacak-teknoloji-harikasi-islemcilerini-uretmeye-basladi', 'Apple, Yeni iPhone Modellerinde Kullanılacak Teknoloji Harikası İşlemcilerini Üretmeye Başladı', '<p>LG&#39;nin 195 ekranlı prototipi olduk&ccedil;a g&ouml;z alıcı g&ouml;r&uuml;n&uuml;yor.</p>\n\n<p>Ge&ccedil;tiğimiz yıllarda hem katlanabilir hem de transparan modellerinin konseptini yayınlayan LG&#39;nin bu televizyonlarının yakın gelecekte piyasaya &ccedil;ıkması beklenmiyordu. Ancak son gelen haberler, geleceğin olduk&ccedil;a yakınımızda olduğunu g&ouml;steriyor.<br />\n&nbsp;</p>\n\n<p>Ge&ccedil;tiğimiz CES konferasında 65 in&ccedil; modeli tanıtılan televizyon, şu an aynı teknolojiyi &ccedil;ok 77&quot; olarak hayata ge&ccedil;irmeyi başardı. %40 oranında transparan bir g&ouml;r&uuml;n&uuml;me kavuşabilen, altındaki hazne i&ccedil;erisine neredeyse tamamı yuvarlanarak gizlenebilen televizyon, olduk&ccedil;a şık g&ouml;r&uuml;n&uuml;yor.</p>\n\n<p><br />\nUltra HD &ccedil;&ouml;z&uuml;n&uuml;rl&uuml;kte (3840 &times; 2160) &ccedil;alışan cihaz, 80 mm kalındığında bir kutu i&ccedil;ine gizlenebiliyor. Hen&uuml;z televizyon son kullanıcıya sunulmadı ve teknolojinin piyasaya &ccedil;ıkacak hale gelmesine halen bir s&uuml;re var. Yine de bir s&uuml;re sonra oturma odalarımızdaki dijital &ccedil;er&ccedil;evelerin hi&ccedil; olmadığı kadar farklı olacağı kesin.</p>', 'Apple, 2018 sonbaharında görücüye çıkacak iPhone modellerine ait yeni nesil işlemciler için üretime geçti.', '2018-05-26-142901-apple-yeni-iphone-modellerinde-kullanilacak-teknoloji-harikasi-islemcilerini-uretmeye-basladi.jpeg', 15, 1, 'https://www.youtube.com/embed/qIRjytgNuhM', 'apple', 2, 0, 1, '2018-05-28 07:09:46', '2018-05-26 14:29:01'),
(20, '2018-05-26-205709-avast-windows-10-nisan-guncellemesi-sonrasi-yasanan-tehlikeli-sorunu-cozdu', 'Avast, Windows 10 Nisan Güncellemesi Sonrası Yaşanan Tehlikeli Sorunu Çözdü', '<p>Resmi kaynaklarca onaylanan Avast ve Windows 10 Nisan g&uuml;ncellemesinde yaşanan sorun, bilgisayar verilerini bozuyor ve &ouml;n y&uuml;kleme ekranının a&ccedil;ılmasına engel oluyordu. Konuya dair &ccedil;&ouml;z&uuml;m Avast ekibinden geldi.<br />\n&nbsp;</p>\n\n<p>Windows 10 sahibi bir Avast kullanıcısı iseniz, siz fark etmemiş olsanız dahi bu iki yazılım arasında ciddi bir hatanın ger&ccedil;ekliği resmi olarak a&ccedil;ıklanmış durumda. Windows 10&rsquo;un 10 Nisan 2018 g&uuml;ncellemesi (s&uuml;r&uuml;m 1803), Avast ile ciddi bir &ccedil;akışma yaşamış&nbsp; ve iki yazılım birleşerek bilgisayarlarda ciddi veri kayıplarına ve benzeri zararlara sebep olmuştu. Sorunun ana kaynağı g&uuml;n itibariyle nihayet &ccedil;&ouml;z&uuml;ld&uuml;.<br />\n&nbsp;</p>\n\n<p><img alt=\"\" src=\"https://i2.wp.com/beebom.com/wp-content/uploads/2018/05/Avast-Internet-Security-official-screenshot.jpg?resize=632%2C420&amp;ssl=1\" style=\"height:332px; width:500px\" /></p>\n\n<p><br />\nNeyse ki Avast, &ldquo;Davranış Kalkanı&rdquo; sebebiyle ortaya &ccedil;ıkan bu sorunu hafifletmek i&ccedil;in&nbsp;<strong>VPS 180524-08</strong>&nbsp;g&uuml;ncellemesini kullanıcılarına sundu. Avast CTO&rsquo;su Ondreh Vicek yaptığı a&ccedil;ıklamada,<em>&nbsp;&ldquo;Bu g&uuml;ncellemeyi kullanan t&uuml;m kullanıcılar %100 olarak g&uuml;ven altında olacak, sorunu &ccedil;&ouml;z&uuml;me kavuşturabildiğimiz i&ccedil;in olduk&ccedil;a mutluyuz.</em>&rdquo; s&ouml;zleriyle&nbsp;kullanıcılarını bilgilendirdi..<br />\n&nbsp;</p>\n\n<p>Bahsi ge&ccedil;en sorun ilk olarak Nisan g&uuml;ncellemesinden hemen sonra bir Reddit yazarı tarafından fark edilmiş ve kamuoyuna duyurulmuştu. Hata, Windows 10 Nisan g&uuml;ncellemesinin hemen ardından kendini belli etmiş ve yazarın bilgisayarında &ouml;n y&uuml;kleme sorununa sebep olmuştu.<br />\n&nbsp;</p>\n\n<p><img alt=\"\" src=\"https://cdn.wccftech.com/wp-content/uploads/2017/10/windows-10-fall-creators-update-iso-740x417.jpg\" style=\"height:282px; width:500px\" /></p>\n\n<p><br />\nFakat bu maaleseftir ki Windows 10 Nisan g&uuml;ncellemesine dair ilk şikayet ya da sorun değil. Avast cephesınde sorun &ccedil;&ouml;z&uuml;lm&uuml;ş olsa dahi Microsoft, bu g&uuml;ncelleme ile bazı Intel ve Toshiba SSD modelleriyle sorun yaşamaya devam ediyor. &Ouml;zetlemek gerekirse b&uuml;y&uuml;k bir ihtimalle Avast ile yaşanan hatanın baş mimarı Microsoft ekibi olarak g&ouml;z&uuml;k&uuml;yor.</p>', 'Resmi kaynaklarca onaylanan Avast ve Windows 10 Nisan güncellemesinde yaşanan sorun, bilgisayar verilerini bozuyor', '2018-05-26-205709-avast-windows-10-nisan-guncellemesi-sonrasi-yasanan-tehlikeli-sorunu-cozdu.jpg', 19, 1, NULL, 'avast', 8, 0, 1, '2018-05-27 13:08:36', '2018-05-26 20:57:10'),
(21, '2018-05-26-205917-her-yerde-karsimiza-cikan-windows-hata-kodlari-ne-anlama-geliyor', 'Her Yerde Karşımıza Çıkan Windows Hata Kodları Ne Anlama Geliyor?', '<p>Resmi kaynaklarca onaylanan Avast ve Windows 10 Nisan g&uuml;ncellemesinde yaşanan sorun, bilgisayar verilerini bozuyor ve &ouml;n y&uuml;kleme ekranının a&ccedil;ılmasına engel oluyordu. Konuya dair &ccedil;&ouml;z&uuml;m Avast ekibinden geldi.<br />\r\n&nbsp;</p>\r\n\r\n<p>Windows 10 sahibi bir Avast kullanıcısı iseniz, siz fark etmemiş olsanız dahi bu iki yazılım arasında ciddi bir hatanın ger&ccedil;ekliği resmi olarak a&ccedil;ıklanmış durumda. Windows 10&rsquo;un 10 Nisan 2018 g&uuml;ncellemesi (s&uuml;r&uuml;m 1803), Avast ile ciddi bir &ccedil;akışma yaşamış&nbsp; ve iki yazılım birleşerek bilgisayarlarda ciddi veri kayıplarına ve benzeri zararlara sebep olmuştu. Sorunun ana kaynağı g&uuml;n itibariyle nihayet &ccedil;&ouml;z&uuml;ld&uuml;.<br />\r\n&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://i2.wp.com/beebom.com/wp-content/uploads/2018/05/Avast-Internet-Security-official-screenshot.jpg?resize=632%2C420&amp;ssl=1\" style=\"height:332px; width:500px\" /></p>\r\n\r\n<p><br />\r\nNeyse ki Avast, &ldquo;Davranış Kalkanı&rdquo; sebebiyle ortaya &ccedil;ıkan bu sorunu hafifletmek i&ccedil;in&nbsp;<strong>VPS 180524-08</strong>&nbsp;g&uuml;ncellemesini kullanıcılarına sundu. Avast CTO&rsquo;su Ondreh Vicek yaptığı a&ccedil;ıklamada,<em>&nbsp;&ldquo;Bu g&uuml;ncellemeyi kullanan t&uuml;m kullanıcılar %100 olarak g&uuml;ven altında olacak, sorunu &ccedil;&ouml;z&uuml;me kavuşturabildiğimiz i&ccedil;in olduk&ccedil;a mutluyuz.</em>&rdquo; s&ouml;zleriyle&nbsp;kullanıcılarını bilgilendirdi..<br />\r\n&nbsp;</p>\r\n\r\n<p>Bahsi ge&ccedil;en sorun ilk olarak Nisan g&uuml;ncellemesinden hemen sonra bir Reddit yazarı tarafından fark edilmiş ve kamuoyuna duyurulmuştu. Hata, Windows 10 Nisan g&uuml;ncellemesinin hemen ardından kendini belli etmiş ve yazarın bilgisayarında &ouml;n y&uuml;kleme sorununa sebep olmuştu.<br />\r\n&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.wccftech.com/wp-content/uploads/2017/10/windows-10-fall-creators-update-iso-740x417.jpg\" style=\"height:282px; width:500px\" /></p>\r\n\r\n<p><br />\r\nFakat bu maaleseftir ki Windows 10 Nisan g&uuml;ncellemesine dair ilk şikayet ya da sorun değil. Avast cephesınde sorun &ccedil;&ouml;z&uuml;lm&uuml;ş olsa dahi Microsoft, bu g&uuml;ncelleme ile bazı Intel ve Toshiba SSD modelleriyle sorun yaşamaya devam ediyor. &Ouml;zetlemek gerekirse b&uuml;y&uuml;k bir ihtimalle Avast ile yaşanan hatanın baş mimarı Microsoft ekibi olarak g&ouml;z&uuml;k&uuml;yor.</p>', 'Windows 10 dahil olmak üzere tüm Windows sürümleri, zaman zaman güncelleme hatalarına sebep olur.', '2018-05-26-205917-her-yerde-karsimiza-cikan-windows-hata-kodlari-ne-anlama-geliyor.jpg', 19, 0, NULL, 'windows10', 18, 1, 1, '2018-05-27 12:10:29', '2018-05-26 20:59:17');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(150) COLLATE utf8_turkish_ci NOT NULL,
  `url` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `active` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `category`
--

INSERT INTO `category` (`id`, `name`, `url`, `cat_id`, `active`, `created_at`, `updated_at`) VALUES
(4, 'Php', 'php', 0, 0, '2018-05-20 16:18:50', '2018-05-20 16:18:50'),
(5, 'Javascript', 'javascript', 0, 0, '2018-05-20 16:19:23', '2018-05-20 16:19:23'),
(6, 'HTML', 'html', 0, 0, '2018-05-20 16:19:28', '2018-05-20 16:19:28'),
(7, 'Css', 'css', 0, 0, '2018-05-20 16:19:34', '2018-05-20 16:19:34'),
(8, 'Framework', 'framework', 4, 0, '2018-05-20 16:22:38', '2018-05-20 16:22:38'),
(9, 'Angular', 'angular', 5, 0, '2018-05-20 16:23:34', '2018-05-20 16:23:34'),
(10, 'Laravel', 'laravel', 8, 0, '2018-05-20 16:24:14', '2018-05-20 16:24:14'),
(11, 'Codeigniter', 'codeigniter', 8, 0, '2018-05-20 16:24:54', '2018-05-20 16:24:54'),
(12, 'Haber', 'haber', 0, 0, '2018-05-24 15:08:16', '2018-05-24 15:08:16'),
(13, 'Video', 'video', 0, 0, '2018-05-24 15:08:22', '2018-05-24 15:08:22'),
(14, 'Bilim', 'bilim', 0, 1, '2018-05-24 16:26:17', '2018-05-24 16:26:17'),
(15, 'Donanım', 'donanim', 0, 1, '2018-05-24 16:26:22', '2018-05-24 16:26:22'),
(16, 'Kripto Para', 'kripto-para', 0, 1, '2018-05-24 16:26:40', '2018-05-24 16:26:40'),
(17, 'Mobil', 'mobil', 0, 1, '2018-05-24 16:26:48', '2018-05-24 16:26:48'),
(18, 'Mobil Uygulama', 'mobil-uygulama', 0, 1, '2018-05-24 16:26:55', '2018-05-24 16:26:55'),
(19, 'Yazılım', 'yazilim', 0, 1, '2018-05-24 16:27:06', '2018-05-24 16:27:06'),
(20, 'deneme', 'deneme', 0, 0, '2018-05-27 01:22:29', '2018-05-27 20:00:13'),
(21, 'deneme2', 'deneme2', 0, 0, '2018-05-27 01:22:33', '2018-05-27 20:00:10'),
(22, 'deneme3', 'deneme3', 0, 0, '2018-05-27 01:22:36', '2018-05-27 01:39:53');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `name` varchar(150) COLLATE utf8_turkish_ci DEFAULT NULL,
  `email` varchar(150) COLLATE utf8_turkish_ci DEFAULT NULL,
  `comment` varchar(500) COLLATE utf8_turkish_ci NOT NULL,
  `comment_id` int(11) NOT NULL DEFAULT '0',
  `article_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `active` int(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `comment`
--

INSERT INTO `comment` (`id`, `name`, `email`, `comment`, `comment_id`, `article_id`, `user_id`, `active`, `created_at`, `updated_at`) VALUES
(1, 'Furkan Demirtürk', 'furkan-demirtrk@yandex.com', 'Üst...Lorem ipsum dolor sit amet, consectetur adipisicing elit,There are many variations of passages of Lorem Ipsum available, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 0, 9, 1, 1, '2018-05-22 23:44:46', '2018-05-22 23:44:46'),
(2, 'Furkan Demirtürk', 'furkan-demirtrk@yandex.com', 'Alt..Lorem ipsum dolor sit amet, consectetur adipisicing elit,There are many variations of passages of Lorem Ipsum available, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 1, 9, 1, 1, '2018-05-22 23:45:08', '2018-05-22 23:45:08'),
(3, 'Furkan Demirtürk', 'furkan-demirtrk@yandex.com', 'Alt..Lorem ipsum dolor sit amet, consectetur adipisicing elit,There are many variations of passages of Lorem Ipsum available, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 1, 9, 1, 1, '2018-05-22 23:46:46', '2018-05-22 23:46:46'),
(4, 'Furkan Demirtürk', 'furkan-demirtrk@yandex.com', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit,There are many variations of passages of Lorem Ipsum available, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 0, 9, 1, 1, '2018-05-22 23:47:01', '2018-05-22 23:47:01'),
(5, 'Furkan Demirtürk', 'furkan-demirtrk@yandex.com', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit,There are many variations of passages of Lorem Ipsum available, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 4, 9, 1, 1, '2018-05-22 23:47:35', '2018-05-22 23:47:35'),
(6, 'Furkan Demirtürk', 'furkan-demirtrk@yandex.com', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit,There are many variations of passages of Lorem Ipsum available, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 4, 9, 1, 1, '2018-05-22 23:47:55', '2018-05-22 23:47:55'),
(7, 'Furkan Demirtürk', 'furkan-demirtrk@yandex.com', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit,There are many variations of passages of Lorem Ipsum available, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 0, 8, 0, 1, '2018-05-22 23:48:21', '2018-05-22 23:48:21'),
(8, 'Furkan Demirtürk', 'furkan-demirtrk@yandex.com', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit,There are many variations of passages of Lorem Ipsum available, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 0, 8, 0, 1, '2018-05-22 23:48:52', '2018-05-22 23:48:52'),
(9, 'Furkan Demirtürk', 'furkan-demirtrk@yandex.com', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit,There are many variations of passages of Lorem Ipsum available, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 0, 8, 0, 1, '2018-05-22 23:48:54', '2018-05-22 23:48:54'),
(13, 'Furkan Demirtürk', 'furkan-demirtrk@yandex.com', 'Reply', 9, 9, 0, 1, '2018-05-23 22:13:18', '2018-05-23 22:13:18'),
(14, 'Furkan Demirtürk', 'furkan-demirtrk@yandex.com', 'YAnıt', 1, 9, 0, 1, '2018-05-23 22:16:26', '2018-05-23 22:16:26'),
(15, 'Furkan Demirtürk', 'furkan-demirtrk@yandex.com', 'üst yorum', 0, 9, 1, 1, '2018-05-23 22:20:00', '2018-05-23 22:20:00'),
(16, NULL, NULL, 'Deneme', 0, 9, 1, 1, '2018-05-23 22:30:41', '2018-05-23 22:30:41'),
(17, NULL, NULL, 'deneme kullanıcı', 0, 9, 1, 1, '2018-05-23 22:35:27', '2018-05-23 22:35:27'),
(18, NULL, NULL, 'kayıtlı kullanıcı', 0, 9, 1, 1, '2018-05-23 22:38:16', '2018-05-23 22:38:16'),
(19, NULL, NULL, 'yeni site yorum', 0, 21, 1, 1, '2018-05-27 12:08:57', '2018-05-27 12:08:57'),
(20, NULL, NULL, 'yeni yorum 2', 0, 21, 1, 1, '2018-05-27 12:09:48', '2018-05-27 12:09:48'),
(27, NULL, NULL, 'Temel olarak bir bilgi sahibi olanlardan tutun, Bitcoin’in kitabını yalayıp yutanlara kadar herkesin aklını çorba edecek bir açıklama var. Üstelik bu açıklama bir yapay zekaya ait.', 0, 15, 1, 1, '2018-05-27 19:47:10', '2018-05-27 19:47:10'),
(28, NULL, NULL, 'Kripto paralar ve özellikle de en değerli birim olan Bitcoin, her şeyin dijitalleştiği şu günlerde çoğu insanın teknolojiye ilgi duymasına yol açtı.', 0, 15, 1, 1, '2018-05-27 19:47:25', '2018-05-27 19:47:25'),
(29, NULL, NULL, 'Yapay zekalar anlaşıldığı üzere henüz dijital çağın en büyük buluşlarından birisi olarak lanse edilen Blok Zinciri teknolojisini açıklayamıyorlar. Bir genelleme yapmak belki hata olacak fakat bu video kadar işi karıştıran bir açıklama görmeniz çok zor.', 28, 15, 1, 1, '2018-05-27 19:47:37', '2018-05-27 19:47:37'),
(30, NULL, NULL, 'deneme', 0, 15, 1, 1, '2018-05-28 07:08:49', '2018-05-28 07:08:49'),
(31, NULL, NULL, 'deneme', 27, 15, 1, 1, '2018-05-28 08:15:17', '2018-05-28 08:15:17');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `logo` varchar(150) COLLATE utf8_turkish_ci DEFAULT NULL,
  `title` varchar(200) COLLATE utf8_turkish_ci DEFAULT NULL,
  `keywords` varchar(250) COLLATE utf8_turkish_ci DEFAULT NULL,
  `description` varchar(250) COLLATE utf8_turkish_ci DEFAULT NULL,
  `url` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  `telefon` varchar(15) COLLATE utf8_turkish_ci DEFAULT NULL,
  `gsm` varchar(15) COLLATE utf8_turkish_ci DEFAULT NULL,
  `faks` varchar(20) COLLATE utf8_turkish_ci DEFAULT NULL,
  `adres` varchar(150) COLLATE utf8_turkish_ci DEFAULT NULL,
  `il` varchar(30) COLLATE utf8_turkish_ci DEFAULT NULL,
  `ilce` varchar(30) COLLATE utf8_turkish_ci DEFAULT NULL,
  `facebook` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  `twitter` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  `instagram` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  `youtube` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  `google` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  `recapctha` varchar(500) COLLATE utf8_turkish_ci DEFAULT NULL,
  `maps` text COLLATE utf8_turkish_ci,
  `analystic` text COLLATE utf8_turkish_ci,
  `smtp_user` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  `smtp_password` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  `smtp_host` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  `smtp_port` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `settings`
--

INSERT INTO `settings` (`id`, `logo`, `title`, `keywords`, `description`, `url`, `telefon`, `gsm`, `faks`, `adres`, `il`, `ilce`, `facebook`, `twitter`, `instagram`, `youtube`, `google`, `recapctha`, `maps`, `analystic`, `smtp_user`, `smtp_password`, `smtp_host`, `smtp_port`, `created_at`, `updated_at`) VALUES
(1, 'logo.png', 'Haber Portalı', 'Site Anahtar Kelimeler', 'Site Açıklamaları', 'localhost:8000', '000000000', '000000000', '000000000', 'İstanbul', 'İstanbul', 'Pendik', 'Facebook', 'Twitter', 'Instagram', 'Youtube', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '2018-05-18 23:04:23');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `authority` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `authority`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Furkan Demirtürk', 'furkan-demirtrk@yandex.com', '$2y$10$VzLnsf3v4a2s610jUkkMAO/RjfLTb/UiIwSWo4o50I8HFtfhU3Oge', '1', 'xtnuF1nyAC1gfziWYWOZNM3Ds6G3nAwGxpExkOnOe2rDfH3FCl52nNXa7kfQ', '2018-05-18 20:07:54', '2018-05-18 20:07:54'),
(2, 'deneme', 'furkan-demirtrk@yandex.coma', '$2y$10$9/sck22MV91QSNMhNu7bN.5bl6OkHYIrCn9lpyVbHzm0UAf96m02m', '0', 'Bg05r3PEdFvSpjOEW3UzoJDbcjLQStuLRFH1HWtXUAYCobW4OQkzKvUP7QKh', '2018-05-27 19:48:40', '2018-05-27 19:48:40');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Tablo için indeksler `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Tablo için AUTO_INCREMENT değeri `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Tablo için AUTO_INCREMENT değeri `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Tablo için AUTO_INCREMENT değeri `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
