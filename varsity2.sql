-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 18, 2016 at 08:12 AM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `varsity2`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_table`
--

CREATE TABLE `admin_table` (
  `adminId` int(11) NOT NULL,
  `adminName` varchar(200) NOT NULL,
  `adminUser` varchar(200) NOT NULL,
  `adminPass` varchar(100) NOT NULL,
  `adminEmail` varchar(200) NOT NULL,
  `level` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_table`
--

INSERT INTO `admin_table` (`adminId`, `adminName`, `adminUser`, `adminPass`, `adminEmail`, `level`) VALUES
(1, 'Ahsan Habib', 'habib', '12345', 'habib@gmail.com', 0),
(2, 'Mama', 'mama', '12345', 'mama@gmail.com', 0);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `c_id` int(11) NOT NULL,
  `cname` varchar(200) NOT NULL,
  `cemail` varchar(200) NOT NULL,
  `cmobile` varchar(200) NOT NULL,
  `csubject` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`c_id`, `cname`, `cemail`, `cmobile`, `csubject`) VALUES
(2, 'Ahsan', 'sah.rabby@gmail.com', '01515697488', 'afaff'),
(3, 'rahman', 'sd@gmail.com', '+88015454784444', 'hi soi3');

-- --------------------------------------------------------

--
-- Table structure for table `customer_reg`
--

CREATE TABLE `customer_reg` (
  `id` int(11) NOT NULL,
  `cname` varchar(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `pass1` varchar(200) NOT NULL,
  `caddress` varchar(200) NOT NULL,
  `cmail` varchar(200) NOT NULL,
  `cphone` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_reg`
--

INSERT INTO `customer_reg` (`id`, `cname`, `username`, `pass1`, `caddress`, `cmail`, `cphone`) VALUES
(7, 'Syed Ahsan Habib', 'habib13', '123456', 'Mohammadpur', 'fff@gmail.com', '01545446464'),
(8, 'Kabir', 'kabir', '123456', 'wg', 'gwg', '42');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` int(11) NOT NULL,
  `job_name` varchar(200) NOT NULL,
  `job_vacancy` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `job_name`, `job_vacancy`) VALUES
(1, 'Web developer', 20),
(2, 'Web Designer', 7),
(3, 'Physics Teacher', 401);

-- --------------------------------------------------------

--
-- Table structure for table `order1`
--

CREATE TABLE `order1` (
  `o_id` int(11) NOT NULL,
  `userid` int(10) NOT NULL,
  `qty` int(11) NOT NULL,
  `procode` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL,
  `dates` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `msg` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order1`
--

INSERT INTO `order1` (`o_id`, `userid`, `qty`, `procode`, `amount`, `dates`, `msg`) VALUES
(50, 7, 1, 'PD1001', 236, '2016-08-17 15:53:15', 'Approved'),
(51, 7, 1, 'POD1005', 236, '2016-08-18 04:19:56', 'Approved');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `O_Id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_code` varchar(200) NOT NULL,
  `id` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_code` varchar(60) NOT NULL,
  `product_name` varchar(60) NOT NULL,
  `product_desc` tinytext NOT NULL,
  `name` varchar(500) NOT NULL,
  `image` blob NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_code`, `product_name`, `product_desc`, `name`, `image`, `price`) VALUES
(1, 'PD1001', 'Pizzas', 'ok', 'feature2.jpg', '', '200.50'),
(2, 'PD1002', 'Burger Am', 'delicious', 'feature1.jpg', '', '500.85'),
(3, 'PD1003', 'Sandwiitchs', 'good', 'feature3.jpg', '', '100.00'),
(4, 'PD1004', 'Wingsq', 'vey good', 'picc3.jpg', '', '400.30'),
(5, 'POD1005', 'Chill', 'gbdgbvj', 'feature2.jpg', '', '200.00'),
(6, 'POD1006', 'Burger', 'eghrvhvjtv', 'feature1.jpg', '', '300.00'),
(7, 'POD1007', 'Sandwitch', 'rvjhyjyjyjjtju', 'feature3.jpg', '', '150.00'),
(8, 'POD1008', 'Wings', 'tvvhr ryr rt', 'picc3.jpg', '', '200.35'),
(9, '32', 'Fruit', 'ok', 'lcd-tv.jpg', 0xffd8ffe000104a46494600010200006400640000ffec00114475636b79000100040000003c0000ffee000e41646f62650064c000000001ffdb0084000604040405040605050609060506090b080606080b0c0a0a0b0a0a0c100c0c0c0c0c0c100c0e0f100f0e0c1313141413131c1b1b1b1c1f1f1f1f1f1f1f1f1f1f010707070d0c0d181010181a1511151a1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1fffc00011080064006403011100021101031101ffc40083000002030101010100000000000000000000050407080603010201010100000000000000000000000000000001100000050204020604080f0100000000000001020304110521310607120841518191a113617182a2b1d122527214b415c14292c2335363b324344425356526271101010100000000000000000000000000001101ffda000c03010002110311003f00d0d2f71743c2bd3b649b7b8916eac70f9d15e709b34f989e2491a9544d4d275a5403e8d2e2ca689d8cf21f68f271b512d27da933201ea000000000000000000000000c3bccabd263ee36a77e3b8a69699b08b8d06693c6ded9d30f50a2afb56bfd596a752ec2b83ad2d39290a536afca6cd0af10a2c5b0f353b9d6ce14bd34e63659a5f24bde2b49afdf0162d8b9d55170a6f3646dce835b0b532af5d144f27c484161d8b9aedaab970a653d26dae1e7e735e6a0bda60dd3ef4900b0ec3b8ba12fe49fb9efd0662d593487d04ef6b6a34acbb80744000000000000000c49cd1a129d6fa9a8589ccb719f6dbcbe21450c2000003e80f443efa4cb856752cba69de03add3db9db8d614a4ad1a8a7c442712692f296d61fb25f1b7ee80b3b4ef36dbaf00d09b92205e9a2a128df64d874cbd0b60d29ef400b3b4ff38fa6e412517ed3d36dea3a129d88b6e63647d743f25ca7b2602c8d3dbefb4d7e34a21ea38acbeafe9e69aa1b847d54904dd7b00774c498f21a4bd1dd43cd2b14b8da89493f51954807a540003147350645aeb51a3a4deb6acbb2112451410800000007b34dd7130131b4009ac34018c762b400cd88c959125692511e6465500f2c8edc6d4e93b699d2ad8e964b84fb8c779214493ed201a1397dd6dacef579b9daefb7472e7123436df8ea7d0d93a95a9d341d5c42526aa917e300bc4061fe6b9c34ee6dedbe85a202bba31100a2c000001e8d3753a98098d3790098cb588060c3390069198c80358cc658006d198c805d3cb73649d4b7aeb382cfef94034000c33cda3849ddab93679ae3c3517b2c97c602910000fd2106a30131b6c04b65a00c1867200ce33001b46632c00358ec6401a47632016df2f27c3abaecdf5db9a5773ea2fc202fe0185f9bb4d377a4abae347f0692029301f529333a10094d3742c804c69a0139867200d233001a468f96001b4563d001a47632c003265ac320166ec0e1ae2e65fead3f69017f00c3fce035c3ba46e7cf8cd783682014611198090d35de025b4d809cc35900651d8c80358cc60401b46632c00348cc0066c359009692a100b1760cff00eeee25d76af824a405fc0314f390922dc68a7f3a291fba8211543b2dd7315131a6cc04d61a00ca3b190069198c80368d1f2c00358ec7a00326190135b491100fd80b03615d22dc298d74aed0b517a9129a2fcf01a08062ee71c90adc582446467f54f9645d0744e7d822a8c6d190a898cb40184767200d23319006d1a3e401ac663200d186404f69044403d00003bad882ff00d31e3ff4923ed7180688018979b5c7748d25d08499f6c7604c14f32d198a1830ce4019c663200da3b14a19e05d66026225db98a79d2996fe93882f84c0486f52e9c450bebcdacfa09a25387ee1280486b575a547c31d899257d4d4673a3e97080690ded5b70ff19a3ef1288caa4af20d2543c8ea5c401d44d09bd538e91f479462ad38a64a6d181fa0f8003b81b1dbd32bf9b559ede933a62e3ae1917b24b2301636d36d16a3d25a8645eaf7778f3dd761ae1b71e332a6d2825badb86ae3552bfa2ea016b80c99cc86db6b9d41b9672ecf63973a2ada6d487d9694b6ce8ca10a2e3492888c8d1892a8038db5f2e3bbf2c88cac498c478d643ada3b286ea55e003a9b6f29db98ed0e4cfb742e9a711acfd5836e17880e9a0728370517f72d58a4966698cc1f69578daf80079ea0e5311052cb9634fdfeaf9472513a51c5511953849b226dd4a8958d6aa2a0b4244ecd5e2d2afe236f56a4a4ebe6475b5348fb10ff0017b82e68e6b5fe8dd5f746a05bf4a695ba4592cadc395e5c07a291a5492e12370d29e2a191f4d028edf4a682de26f4f5b6133a79f8b2633286dc93266b31b12cce8852ddef48947616ddb3dfa5f0a9ed5ac5a91fab6df9930d3d8bf29020b1747e93d616893e75f35748beb7c06928aa8cc30d128ccbe59a8b8dd332fa603ae0000001800080000000000180000000000000003fffd9, '50.00'),
(11, '43', '343', '343', 'android-phone.jpg', 0xffd8ffe000104a46494600010200006400640000ffec00114475636b79000100040000003c0000ffee000e41646f62650064c000000001ffdb0084000604040405040605050609060506090b080606080b0c0a0a0b0a0a0c100c0c0c0c0c0c100c0e0f100f0e0c1313141413131c1b1b1b1c1f1f1f1f1f1f1f1f1f1f010707070d0c0d181010181a1511151a1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1fffc00011080064006403011100021101031101ffc4009c000001050101010000000000000000000006000204050703080101010101010101000000000000000000000001020304051000010204040204070a0b08030000000001020300110405211213063107415122146191a123b315087181b132c37585161848c1d142527292d233537335f0e162b29324341744a425110101000202020202030000000000000000011102120321311304f032415114ffda000c03010002110311003f00f4cde6fb4168a7d6aa51999e9b49915aa520653204b1189f86096e01b5dccebca49ee7605147e4b950fa5b98fd1202a2e1cef60437173df795a0255f57d97d2b9fee355f225d0aca44a2f1276056a7dabb76d336a79fdb6d30c238adf43cd83d404d7c4c30d4d9ca8fdb3dd0a1df36db6b4f496aa5683e2534e7c3130b96b5cb4e79ed2df64b14a95d0dc132cd4af14a8127804ad27fcc04fa21859b08b7ef3076d6c6b0aef37ea82d319b4e9d86c6679f748986da4613387b83a622bcef78f6d1bdade50b2ed9a76599f6155afadc591d652d06c0fd68b84c87aa3dafb9aae1259a4b5303a934ef2e5facf43099353ed59ce70ac69ede480545068dd0728c4996ace50c195adabdb037f2520d7daadb5299f68b6979a32f079c589c30646db27dafb6fdcee8d5b773dad5650fac368b8b6eeb53249321aa0a50b6c7f8bb4074c30b2bd03acd696b674e965cda931972ca79a7c25288aca05e9ebcef7dcee38aff006d657dab752a27805a5a0b715ef29665eec6a396f7ca2dd5f94f18ae541977a8905630464dcd2ac3eab6999fef5f13f71292615d3ae7966519754fb1de2e367b9355d6f7d54f5283942d048c0f419787182568fed03beab776deb6e38f2fccb363a2a9d21f145456b7aafaa5d7f153ef416b304b248822d76d388a4bf51bae0129ac09f0cc5072f962c4dbd256e1a80fee8a17a9d971805212a70cc058cb9978cf198579617da6b3c29c216da95978127088d233cd60678cf8c07a5bfec0bafd9035f597dfb37a87bc4ce7d2d7d3e3fc8ec4144db59e237373144f86e2740ff41b8bab1bfb3aed52ac718e93562c04de6a5ced768c6e6a6190f31aa5c5bb46d951206a2bdfc04677d5d74819454db434b4aa8d6a59c991cd620a48967c02647379239ed3ccc7a317fb314ed2ad4d0619534a0a9aca979c1055d9129094844ab449bd533afb2fcc76cf41111069e933267d116442acb73ab64161595f410b6cf0c44304a4c2aed50fb6e57665161191a2b33084ca524899970e8860aee68d30c1957d73390188351efa8fb26f75c8737d64d2cd84a7935e7fab841a6a9b7572dd5cc41d7b89ef40dc6b4637f657451338f448980cdd28a9cb59d45dcd3402d8cb98870a5216048e500ab81e3e08b22e195eedb2b1557369a53ca2e36159a40a53a61690549cc82924a952f8d871c444de3701772a114b55a4933050db92cc9594ea202f29527b2a299ca6231c5519b04389f747c31cf685146ea39ab2d1d62d34027e00c88cb2eb48ccd91158aefa3e080f9a3e082116a0aa7bba653895a83fc89fb2de6d54e6fad33c98cffe1e5cbc253fcaf72234d676e02bdebcc0687156e178f8986e35a7b636fd93ee76e74cfb263d1368d710fdca969881a8e56a4a5394645a4849224653e8f047494c327dc36fa472e6ea4b9704a91a730da919351091250139f67a234e92780d5558ea1c7d6e0438a0a339ba732c996398f4e30c45e2adb85b5da54b4b5a0a417026663877c984da785ceec6928b859b28f8f65b6ace3f945800fc11e673a974600604698aea4ca08613107352a28a6bc1e312b507fdcaabecb1de32799fad3ab9a63e2776d09cbf998446dae6ccc7999be51d77ea93ff00ae88b18dbf61dd55220ce296a92aed4d38652049c23594e408aedb342ed53ae9489a9670e9c235caafc88abdab472c0110e47c802e6c591aa0b2d13c8266aac4231fd051fc118db6cb5cf214ddff00d42c7f31db3d0c616bbd22bcc08d39d3d44cbe0888aca1aaac72a1f4bc9f369e0a3848fe688ad5898a541151763c62558d57ee81f4f7cb446da16cf74a39adbd801989bed576672ffc64433e18dbdb457de5cf16a43af308cf2a9620ac1757a6da0a9c560842712a5740c22f2acd81eac63496e0a84a597924274662664313812263a61b5da7b675b2a3666fabca231f235c59873cde79562a16f4006056a087f38249d35e1925878e1aef6df4ebaeb24cff002cfb787f50b27cc76df431d15d294f9811a73a728cf0eb8223374ccb4b2b466cc448cd4a23ca60d64e52a02aae878c4aad5fee81f4f7cb44686564ac14bcd3dece13202f953e5a7408b265cfb2f9125c77734d038f0f0c3e2ac720c5573298a374bca754da500cdc462a4cc4a60613947afeaf4c9bce5e9c7bf374b35f6a6debcd9b2d7d432e5bd53715954fad3a994640ae97025454acdd520047afedf56bc26b3cbcff00574db95db698fcf61e1cc81f9d1f37fcb5efc8677e6edf5cdb6969e73c952973c4950fc3137e8e132d6b72aede1fd42c9f31db3d0c736df698f9911a629ea5407352a0a6154055dc8f18cd56b3f741fa7be5a0d2e2b2a74398bbe55397ff006dff004288e9d33cb877aa2f378e3da8f748f34d99fee1b9e761c483c643cb16dc3b6819350aeb8cf374e2fbde881c62cd99b0c71f2e1403d0b11cbec5cead75fb12ef1ff9f64f98edbe863c4ec6d32fcd811a8c5394a8061540732602bae0660c456b5f740fa7be5a2347ee97cb7bfb7ccb8faedef4688e9d5715c7ba641b75ac74931e9bdb1cf5eb07dd5f5abb27ae396dd9977d75574cc73e6d61f318bf2260e6a7a899f58f8626dbe6120b3799957593e63b6fa18e6a80cd448718b9474554050209e3d5c6194724a9095660a54fa8a89105255443221553930622b60fba07d3df2b0576e6a5baa6d1cd0dd8d3a921aaeaa6eb585f410f30827ca0f8a2eac6fec05727adbead5cd4e7acb53b230d2d2963e1cd0a9203ab5799787862365589a14a9bee6e2dc4940d52e272c97d32f0414ca6eedae9ef39b471cf90c95c30960601d454eba8ab436da4aa4731f025389262a5ad0b9dbb5ab36ddcf6b21f4140a9dbb6f13225e7584143a9f752651159feb2549cab19927883fdd047c9537f093e357e38052a6fe127c6afc7008680334b69047038fe380e6f3d81c603d21f53ebbec71f10ebea7ae74e58e97799ce5fcaed415b0f38b95ceef0b6aaa6d45a6ef8d37a49d6c10f360e60852a472a927149fec12a6dae5e4cbf72ab9c76c79c6eb76bd63c849203d4cdf78491fa4c970432602951b5b75b6b21fb0dc9a57485523dfb220b8724edadc6b324d9ae2a3d4291efd980b5b7f2cb98970525347b5ee8ee6e04d2ba84f8d4903cb146e9c95f672dc6c57a2e7bc695bb7d0a0a562df992e3ef949cc94b994a821b98c44e67848718994e2d8b9c7ca3b5f3236e2281e77b9dd6894a76d75e139836b509290b4f4b6b90cc3df88d58f23df7d9db9cb66796836072e0d24909a8b7ad150950eb0904383df4c5ca6038be5bf321a5943fb5eecd91c6744f9f81300dff00aff7f1f89b72ea4f5772a8fd8809147ca8e6a5699536d3ba2a7d2aa571b1e3702440699cb9f64fdeb75ba53d4ef26d367b236a0b7e9438972a9e48c74c06ca92de6e04933f0432af5f7aa6dbea9f54f7647ab743baf74979bd0c9934e5d597088a9700a0140280500a0140280500a0140280501fffd9, '3434.00'),
(12, 'tt', 'fgdfg', 'rtter', 'external-hard-disk.jpg', 0xffd8ffe000104a46494600010200006400640000ffec00114475636b79000100040000003c0000ffee000e41646f62650064c000000001ffdb0084000604040405040605050609060506090b080606080b0c0a0a0b0a0a0c100c0c0c0c0c0c100c0e0f100f0e0c1313141413131c1b1b1b1c1f1f1f1f1f1f1f1f1f1f010707070d0c0d181010181a1511151a1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1fffc00011080064006403011100021101031101ffc4009800010002020301010000000000000000000005080107030406020901010101010101000000000000000000000001020403051000010204030406060608070000000000010203001104052112063141510761712232130842526214151681b172233324f091a1d182643517c1d2435373442611010002020103040105000000000000000001021103122151043141d1226181a1e14252ffda000c03010002110311003f00b5300804020101a8fcc0f32eaf4ed9dbd39617169d4b79428a5c6265da5a4064e3e25b16a3d86fa66af462c40ae7a4f5deadd23753576cae79a7b37e6e9ea0add6dd96e7da59c7ed77b818e8a56933f6f4fc3cadcbd9677971cf1d39ab035455a05a2f8b92452baa9b2f2bf9774c82a7ea2a4aebdb13778d6a4663ad7bc14dd169c7a59b2e6239dea40201008040201008088d5baa2d5a5b4ed75faeae7874542d971607796ad886d037adc510948e2602a6b970bade2e95fa9ef5fd5ef0af116dce629d818334e8f65099759c63488fba5152d60fbe4c9c1825d4e0b1f4ef1d06351292f38b6ee36c7bc46c87190715148520f43883b3f4918e8d3be693d1e1bb45764627f96efe55f3c6bd0e3168b8a95568c10dd3bee0f1c7014cfb84077a1b74e6f5547647b5fc7a6c8e54facf6735366dd33c6ff6affaf7fd5bfed17cb65de98d4503c1d4a5591d41052e36e0da875b5496850f55423e7de9359c4be856d168cc3bd38cb440201008040202b273875b0d67abbe0f46e67d33a69e21d524cd155724cd2a3c148a7c523dacdd116211e41f776c511d50ec111ef3a4198328a226a996563b126973eefa07fcbf57547a536cd672ccd625e8f4bf32753586b90f7bd3be3b694a13513cce86c6c42f34d2f37ecae7ec911db1e456f1c76474fde1c3b3c5b56dcf54f1b7bc7f59f858ce5ff3e34e5fcb5437671bb75d1c210d384914cfa8ec0852f16d67d45ff0a951cbbbc59ac72afda9dfe5d1a3c9e5d2d1c6fdbe3bb690338e575100804020357f3db988fe9cb1b363b33b97535ff33348b49ed53538c1faa3c3203951ed1e83160681a6a5a7a0a26a8e9c49a693207793bd47a498a8e07dcc2088e7dddb04473eec0473eeed82e1d4555a93d950ce8f549d9d477458957db3501695784acc25f78d9db2e94ef1d23f647beadb349cd65e77d7168eb0dc9c98e756a8b6dead5a6ae0e1b9da2baa58a2652f2897a9cd4389690a6dd332a4254a1342b77748d918dd3599cc46175c4c4616b23c1e8402023b515fed9a7ac75b7bba3c18a0a0694f5439be49d8948dea51eca46f30152aaef374d477caed597849457dcc814d4c7114b469fc1613f462a3bd449df1a4755f7604a3df776e30651d50e4046beeed82a3df720ae83ceed8aae9a9d214149242819a483223aa20df3e59f97151a8afc8d55756cfc2ac4e85d34c483f5e99291b25314e24b3ede5e06132985b58ca90080adbceed6bf366a8f95685ccda7b4f3c1cbaad27b353704f758c36a18f4bdbfb222a3c3d438718a23df722a235f736c111efbb011cfbbb60d4239f7603a2f38718caa6342e90ba6add4b4365b6a675356e650e113434848cce3cbf65a4e278990df1605ffd2ba6ad7a634fd0d8ad6df874542d06db9f79476adc59deb5a89528f131912b0080d67cf8e682743e9252289e4a2ff740b66dd3c7c14a47df55287069270e2a29108143eb3535d9c59453d63ecd32544b68438a492546656b208ccb51c544c591c68d4da851ddb954fd2ea8fd6620e51abb520ffbee1fb5955f588b930fa1ac3507a55015d6847ee864c327575e0f78b6aeb44bea221930f93a9eb95de6db3d4143fc61930e355fdd56d693f4130c8335eba9792d86f293b553c0018951c36010176bcb772b4695d342fd7260b77dbcb69210b125d3d1f79b688dcb73f11ce990f46248dc90080e9de6ef6eb35aaaeeb727934f4144d2dfa9795b12840993fb8407e7df38f98f72d67aa6aee35399a0f490c52933f77a44125963ed639dcf68f4451af620406203301882b32804a037cf961e517ccfa8be3374633592d2b43b50950ecbd5182d8a7c7684e0eb9fc29de62fa22ecc408040685f37b5da898d1d69a7b7a546d55156af8928770b8da42a950e9dc82bccac70cc94c5814aea12fa5f587c283d39b99b6cce333115c5019821008040766dcca1caa478a92a652733b204e038cb197180f4ba734ed7eb1d5b476ab4d3875fa8752c53897654a94cad665f86da415a8faa22c0fd06d0da36d5a3b4bd1582da26cd2a66ebe400b79e5769d7972f496ac7a366e89227a010080e0aea1a2afa4768eb586ea691f4943d4eea42db5a4ed0a4aa60880adfcd7f2a34d50876e5a286026a5591d5c8a77fe51e54e5ff001af0e0628ab37dd3574b355bd4b594ee34f53ab23ed3a82db8d91b9c42b14f5ec808a88ac4119800133012ce325869342c8fcc5480a754ac32a640c89dc04b8c51717cae729dbd3da7c6aab8b396e9756826de85a64a6689442b390762ea080b3c13947184c8def10201008040203c7f307955a475cd264bad37875eda48a6ba31245437d19a5db47142a621914f39ade5f75468c75caa5342aad449f0ae94e93e019ec0f231530bfd68e0628d48fd3bd4ee16de4942c6e3c0ef1c4445714049db4229da556ba89e520358c893be5c78411b63cbaf29dcd71aac565cdb2ab25bf2545cca8492e4ccd9a512ff00772cd6373625e908a2f3a5294a425200004801800044198040201008040203e1e65979a5b2f212e34e24a5c6d60292a49c0820e04180d03cd6f2b769bbb6ed7e904a292a892b5d9dc3969d6a38934ee625851e1dcea8b9153b5168dbb69eba3b4574a57e9d74ea954d3ad195f4278e538284b6293d9860cb96d36badd4f7ea3b55ae9cbea79c431494e919438eaf000cbba30cca3e8a41301fa09cb5d076fd0fa4a8ec548438eb60bb5f54048bf54e48bae9e89e091b92008991ea60100804020100804020101acb9e7fdaaf977ff712f7891f85fbbff51f13f96cbda94f6e6ec718b0354795bfed67cd759eebef5f34e477e1fefbe1787e0ffade0783d9f1b2cb3cf1cbb30cd09169220402010080407fffd9, '0.00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_table`
--
ALTER TABLE `admin_table`
  ADD PRIMARY KEY (`adminId`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `customer_reg`
--
ALTER TABLE `customer_reg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order1`
--
ALTER TABLE `order1`
  ADD PRIMARY KEY (`o_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`O_Id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `id` (`id`),
  ADD KEY `fk_PerOrders` (`product_code`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD UNIQUE KEY `product_code` (`product_code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_table`
--
ALTER TABLE `admin_table`
  MODIFY `adminId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `customer_reg`
--
ALTER TABLE `customer_reg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `order1`
--
ALTER TABLE `order1`
  MODIFY `o_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `O_Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `fk_PerOrders` FOREIGN KEY (`product_code`) REFERENCES `products` (`product_code`),
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`id`) REFERENCES `customer_reg` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;