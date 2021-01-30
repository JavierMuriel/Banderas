-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-01-2021 a las 11:10:10
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `banderas`
--
CREATE DATABASE IF NOT EXISTS `banderas` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci;
USE `banderas`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paises`
--

CREATE TABLE `paises` (
  `id` int(11) NOT NULL,
  `iso` varchar(2) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `nombre` varchar(120) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `continente` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `bandera` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `capital` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `poblacion` int(12) NOT NULL,
  `moneda` varchar(50) COLLATE utf8mb4_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `paises`
--

INSERT INTO `paises` (`id`, `iso`, `nombre`, `continente`, `bandera`, `capital`, `poblacion`, `moneda`) VALUES
(1, 'AF', 'Afganistán', 'Asia', 'af.png', 'Kabul', 32225560, 'Afgani afgano'),
(2, 'AX', 'Islas Åland', 'Europa', 'ax.png', 'Mariehamn', 29789, 'Euro'),
(3, 'AL', 'Albania', 'Europa', 'al.png', 'Tirana', 2862427, 'Lek albanés'),
(4, 'DE', 'Alemania', 'Europa', 'de.png', 'Berlín', 83149300, 'Euro'),
(5, 'AD', 'Andorra', 'Europa', 'ad.png', 'Andorra la Vieja', 77543, 'Euro'),
(6, 'AO', 'Angola', 'África', 'ao.png', 'Luanda', 31127674, 'Kwanza angoleño'),
(7, 'AI', 'Anguila', 'América del Norte', 'ai.png', 'El Valle', 14869, 'Dólar del Caribe Oriental'),
(8, 'AQ', 'Antártida', NULL, 'aq.png', NULL, 3000, 'Dólar de los Estados Unidos'),
(9, 'AG', 'Antigua y Barbuda', 'América del Norte', 'ag.png', 'Saint Johns', 96453, 'Dólar del Caribe Oriental'),
(11, 'SA', 'Arabia Saudí', 'Asia', 'sa.png', 'Riad', 34218169, 'Riyal saudí'),
(12, 'DZ', 'Argelia', 'África', 'dz.png', 'Argel', 43000000, 'Dinar argelino'),
(13, 'AR', 'Argentina', 'América del Sur', 'ar.png', 'Buenos Aires', 44938712, 'Peso argentino'),
(14, 'AM', 'Armenia', 'Asia', 'am.png', 'Ereván', 2957500, 'Dram armenio'),
(15, 'AW', 'Aruba', 'América del Norte', 'aw.png', 'Oranjestad', 112309, 'Florín arubeño'),
(16, 'AU', 'Australia', 'Oceanía', 'au.png', 'Canberra', 25627280, 'Dólar tuvaluano'),
(17, 'AT', 'Austria', 'Europa', 'at.png', 'Viena', 8902600, 'Euro'),
(18, 'AZ', 'Azerbaiyán', 'Asia', 'az.png', 'Baku', 10067108, 'Manat azerbaiyano'),
(19, 'BS', 'Bahamas', 'América del Norte', 'bs.png', 'Nassau', 385340, 'Dólar bahameño'),
(20, 'BH', 'Bahréin', 'Asia', 'bh.png', 'Manama', 1543300, 'Dinar bareiní'),
(21, 'BD', 'Bangladesh', 'Asia', 'bd.png', 'Dacca', 168163758, 'Taka bangladesí'),
(22, 'BB', 'Barbados', 'América del Norte', 'bb.png', 'Bridgetown', 287025, 'Dólar de Barbados'),
(23, 'BE', 'Bélgica', 'Europa', 'be.png', 'Bruselas', 11522169, 'Euro'),
(24, 'BZ', 'Belice', 'América del Norte', 'bz.png', 'Belmopan', 408487, 'Dólar beliceño'),
(25, 'BJ', 'Benin', 'África', 'bj.png', 'Porto-Novo', 11733059, 'Franco CFA'),
(26, 'BM', 'Bermudas', 'América del Norte', 'bm.png', 'Hamilton', 64027, 'Dólar bermudeño'),
(27, 'BY', 'Bielorrusia', 'Europa', 'by.png', 'Minsk', 9413446, 'Rublo bielorruso'),
(28, 'BT', 'Bhután', 'Asia', 'bt.png', 'Thimbu', 741672, 'Ngultrum butanés'),
(29, 'BO', 'Bolivia', 'América del Sur', 'bo.png', 'Sucre', 11469896, 'Boliviano'),
(30, 'BA', 'Bosnia y Herzegovina', 'Europa', 'ba.png', 'Sarajevo', 3301000, 'Marco bosnioherzegovino'),
(31, 'BW', 'Botsuana', 'África', 'bw.png', 'Gaborone', 2338851, 'Pula'),
(32, 'BV', 'Isla Bouvet', 'Antártida', 'bv.png', NULL, 0, 'Ngultrum butanés'),
(33, 'BR', 'Brasil', 'América del Sur', 'br.png', 'Brasilia', 211173432, 'Real brasileño'),
(34, 'BN', 'Brunéi', 'Asia', 'bn.png', 'Bandar Seri Begawan', 442400, 'Dólar de Brunéi'),
(35, 'BG', 'Bulgaria', 'Europa', 'bg.png', 'Sofia', 7000039, 'Lev'),
(36, 'BF', 'Burkina Faso', 'África', 'bf.png', 'Uagadugú', 20870060, 'Franco CFA'),
(37, 'BI', 'Burundi', 'África', 'bi.png', 'Buyumbura', 10953317, 'Franco de Burundi'),
(38, 'CV', 'Cabo Verde', 'África', 'cv.png', 'Praia', 550483, 'Escudo caboverdiano'),
(39, 'KY', 'Islas Caimán', 'América del Norte', 'ky.png', 'George Town', 65813, 'Dólar de las Islas Caimán'),
(40, 'KH', 'Camboya', 'Asia', 'kh.png', 'Phnom Penh', 15288489, 'Riel camboyano'),
(41, 'CM', 'Camerún', 'África', 'cm.png', 'Yaundé', 25876000, 'Franco CFA'),
(42, 'CA', 'Canadá', 'América del Norte', 'ca.png', 'Ottawa', 37935814, 'Dólar canadiense'),
(43, 'CF', 'República Centroafricana', 'África', 'cf.png', 'Bangui', 5496011, 'Franco CFA'),
(44, 'TD', 'Chad', 'Áfica', 'td.png', 'Yamena', 15692969, 'Franco CFA'),
(45, 'CZ', 'República Checa', 'Europa', 'cz.png', 'Praga', 10681161, 'Corona checa'),
(46, 'CL', 'Chile', 'América del Sur', 'cl.png', 'Santiago', 19107216, 'Peso chileno'),
(47, 'CN', 'China', 'Asia', 'cn.png', 'Pekín', 1401492920, 'Yuan chino'),
(48, 'CY', 'Chipre', 'Europa', 'cy.png', 'Nicosia', 875900, 'Euro'),
(49, 'CX', 'Isla de Navidad', 'Oceanía', 'cx.png', 'Flying Fish Cove', 1928, 'Dólar tuvaluano'),
(50, 'VA', 'Ciudad del Vaticano', 'Europa', 'va.png', 'Ciudad del Vaticano', 799, 'Euro'),
(51, 'CC', 'Islas Cocos', 'Oceanía', 'cc.png', 'West Island', 538, 'Dólar tuvaluano'),
(52, 'CO', 'Colombia', 'América del Sur', 'co.png', 'Santa Fe de Bogotá', 49395678, 'Peso colombiano'),
(53, 'KM', 'Comoras', 'África', 'km.png', 'Moroni', 873724, 'Franco comorense'),
(54, 'CD', 'República Democrática del Congo', 'África', 'cd.png', 'Kinshasa', 86790567, 'Franco congoleño'),
(55, 'CG', 'Congo', 'África', 'cg.png', 'Brazzaville', 5380508, 'Franco CFA'),
(56, 'CK', 'Islas Cook', 'Oceanía', 'ck.png', 'Avarua', 15200, 'Dólar neozelandés'),
(57, 'KP', 'Corea del Norte', 'Asia', 'kp.png', 'Pyongyang', 25450000, 'Won norcoreano'),
(58, 'KR', 'Corea del Sur', 'Asia', 'kr.png', 'Seúl', 51780579, 'Won de Corea del Sur'),
(59, 'CI', 'Costa de Marfil', 'África', 'ci.png', 'Yamusukro', 25823071, 'Franco CFA'),
(60, 'CR', 'Costa Rica', 'América del Norte', 'cr.png', 'San José', 5058007, 'Colón'),
(61, 'HR', 'Croacia', 'Europa', 'hr.png', 'Zagreb', 4076246, 'Kuna croata'),
(62, 'CU', 'Cuba', 'América del Norte', 'cu.png', 'La Habana', 11209628, 'Peso cubano'),
(63, 'DK', 'Dinamarca', 'Europa', 'dk.png', 'Copenhague', 5822763, 'Corona danesa'),
(64, 'DM', 'Dominica', 'América del Norte', 'dm.png', 'Roseau', 71808, 'Dólar del Caribe Oriental'),
(65, 'DO', 'República Dominicana', 'América del Norte', 'do.png', 'Santo Domingo', 10358320, 'Peso dominicano'),
(66, 'EC', 'Ecuador', 'América del Sur', 'ec.png', 'Quito', 17431712, 'Dólar de los Estados Unidos'),
(67, 'EG', 'Egipto', 'África-Asia', 'eg.png', 'El Cairo', 100052943, 'Libra egipcia'),
(68, 'SV', 'El Salvador', 'América del Norte', 'sv.png', 'San Salvador', 6704864, 'Dólar de los Estados Unidos'),
(69, 'AE', 'Emiratos Árabes Unidos', 'Asia', 'ae.png', 'Abu Dhabi', 9770529, 'Dirham de los Emiratos Árabes Unidos'),
(70, 'ER', 'Eritrea', 'África', 'er.png', 'Asmara', 3497117, 'Nakfa'),
(71, 'SK', 'Eslovaquia', 'Europa', 'sk.png', 'Bratislava', 5456362, 'Euro'),
(72, 'SI', 'Eslovenia', 'Europa', 'si.png', 'Liubliana', 2094060, 'Euro'),
(73, 'ES', 'España', 'Europa', 'es.png', 'Madrid', 47100396, 'Euro'),
(74, 'UM', 'Islas ultramarinas de Estados Unidos', 'América del Norte', 'um.png', 'Atolón Johnston', 300, 'Dólar de los Estados Unidos'),
(75, 'US', 'Estados Unidos', 'América del Norte', 'um.png', 'Washington D.C.', 329345637, 'Dólar de los Estados Unidos'),
(76, 'EE', 'Estonia', 'Europa', 'ee.png', 'Tallin', 1328360, 'Euro'),
(77, 'ET', 'Etiopía', 'África', 'et.png', 'Adís Abeba', 98665000, 'Birr etíope'),
(78, 'FO', 'Islas Feroe', 'Europa', 'fo.png', 'Tórshavn', 52124, 'Corona feroesa'),
(79, 'PH', 'Filipinas', 'Asia', 'ph.png', 'Manila', 108323702, 'Peso filipino'),
(80, 'FI', 'Finlandia', 'Europa', 'fi.png', 'Helsinki', 5527573, 'Euro'),
(81, 'FJ', 'Fiyi', 'Oceanía', 'fj.png', 'Suva', 884887, 'Dólar fiyiano'),
(82, 'FR', 'Francia', 'Europa', 'fr.png', 'París', 67064000, 'Euro'),
(83, 'GA', 'Gabón', 'África', 'ga.png', 'Libreville', 2172579, 'Franco CFA'),
(84, 'GM', 'Gambia', 'África', 'gm.png', 'Banjul', 2347706, 'Dalasi gambiano'),
(85, 'GE', 'Georgia', 'Asia', 'ge.png', 'Tiflis', 3723464, 'Lari georgiano'),
(86, 'GS', 'Islas Georgias del Sur y Sandwich del Sur', NULL, 'gs.png', 'Base King Edward Point', 30, 'Libra esterlina'),
(87, 'GH', 'Ghana', 'África', 'gh.png', 'Accra', 30280811, 'Cedi'),
(88, 'GI', 'Gibraltar', 'Europa', 'gi.png', NULL, 33701, 'Libra esterlina'),
(89, 'GD', 'Granada', 'América del Norte', 'gd.png', 'Saint Georges', 112003, 'Dólar del Caribe Oriental'),
(90, 'GR', 'Grecia', 'Europa', 'gr.png', 'Atenas', 10724599, 'Euro'),
(91, 'GL', 'Groenlandia', 'América del Norte', 'gl.png', 'Nuuk', 56081, 'Corona danesa'),
(92, 'GP', 'Guadalupe', 'América del Norte', 'gp.png', 'Basse-Terre', 395700, 'Euro'),
(93, 'GU', 'Guam', 'Oceanía', 'gu.png', 'Agaña', 172400, 'Dólar de los Estados Unidos'),
(94, 'GT', 'Guatemala', 'América del Norte', 'gt.png', 'Guatemala', 16604026, 'Quetzal'),
(95, 'GF', 'Guayana Francesa', 'América del Sur', 'gf.png', 'Cayena', 290691, 'Euro'),
(96, 'GN', 'Guinea', 'África', 'gn.png', 'Conakry', 12218357, 'Franco guineano'),
(97, 'GQ', 'Guinea Ecuatorial', 'África', 'gq.png', 'Malabo', 1358276, 'Franco CFA'),
(98, 'GW', 'Guinea-Bissau', 'África', 'gw.png', 'Bissau', 1604528, 'Franco CFA'),
(99, 'GY', 'Guyana', 'América del Sur', 'gy.png', 'Georgetown', 782766, 'Dólar guyanés'),
(100, 'HT', 'Haití', 'América del Norte', 'ht.png', 'Puerto Príncipe', 11577779, 'Haitiano de Haití'),
(101, 'HM', 'Islas Heard y McDonald', NULL, 'hm.png', NULL, 0, 'Dólar australiano'),
(102, 'HN', 'Honduras', 'América del Norte', 'hn.png', 'Tegucigalpa', 9158345, 'Lempira'),
(103, 'HK', 'Hong Kong', 'Asia', 'hk.png', 'Victoria', 7500700, 'Dólar de Hong Kong'),
(104, 'HU', 'Hungría', 'Europa', 'hu.png', 'Budapest', 9772756, 'Forinto húngaro'),
(105, 'IN', 'India', 'Asia', 'in.png', 'Nueva Delhi', 1359072550, 'Rupia india'),
(106, 'ID', 'Indonesia', 'Asia-Oceanía', 'id.png', 'Yakarta', 266911900, 'Rupia indonesia'),
(107, 'IR', 'Irán', 'Asia', 'ir.png', 'Teheran', 83230120, 'Rial iraní'),
(108, 'IQ', 'Irak', 'Asia', 'iq.png', 'Bagdad', 39127900, 'Dinar iraquí'),
(109, 'IE', 'Irlanda', 'Europa', 'ie.png', 'Dublin', 4921500, 'Euro'),
(110, 'IS', 'Islandia', 'Europa', 'is.png', 'Reykjavík', 364260, 'Corona islandesa'),
(111, 'IL', 'Israel', 'Asia', 'il.png', 'Jerusalén', 9164160, 'El Shekel israelí'),
(112, 'IT', 'Italia', 'Europa', 'it.png', 'Roma', 60247214, 'Euro'),
(113, 'JM', 'Jamaica', 'América del Norte', 'jm.png', 'Kingston', 2726667, 'Dólar jamaiquino'),
(114, 'JP', 'Japón', 'Asia', 'jp.png', 'Tokio', 126010000, 'Yen'),
(115, 'JO', 'Jordania', 'Asia', 'jo.png', 'Ammán', 10622608, 'Dinar jordano'),
(116, 'KZ', 'Kazajistán', 'Asia', 'kz.png', 'Astaná', 18651680, 'Tenge kazajo'),
(117, 'KE', 'Kenia', 'África', 'ke.png', 'Nairobi', 47564296, 'Chelín keniano'),
(118, 'KG', 'Kirguistán', 'Asia', 'kg.png', 'Biskek', 6490300, 'Som kirguís'),
(119, 'KI', 'Kiribati', 'Oceanía', 'ki.png', 'Tarawa', 120100, 'Dólar tuvaluano'),
(120, 'KW', 'Kuwait', 'Asia', 'kw.png', 'Ciudad de Kuwait', 4420110, 'Dinar kuwaití'),
(121, 'LA', 'Laos', 'Asia', 'la.png', 'Vientiane', 7123205, 'Kip laosiano'),
(122, 'LS', 'Lesotho', 'África', 'ls.png', 'Maseru', 2007201, 'Lesotho Loti'),
(123, 'LV', 'Letonia', 'Europa', 'lv.png', 'Riga', 1906800, 'Euro'),
(124, 'LB', 'Líbano', 'Asia', 'lb.png', 'Beirut', 6855713, 'La Libra libanesa'),
(125, 'LR', 'Liberia', 'África', 'lr.png', 'Monrovia', 4475353, 'Dólar liberiano'),
(126, 'LY', 'Libia', 'África', 'ly.png', 'Trípoli', 6777452, 'Dinar libio'),
(127, 'LI', 'Liechtenstein', 'Europa', 'li.png', 'Vaduz', 38557, 'Franco Suizo'),
(128, 'LT', 'Lituania', 'Europa', 'lt.png', 'Vilna', 2793350, 'Euro'),
(129, 'LU', 'Luxemburgo', 'Europa', 'lu.png', 'Luxemburgo', 613894, 'Euro'),
(130, 'MO', 'Macao', 'Asia', 'mo.png', 'Macao', 676100, 'Yuan chino'),
(131, 'MK', 'Macedonia', 'Europa', 'mk.png', 'Skopie', 2077132, 'Denar macedonio'),
(132, 'MG', 'Madagascar', 'África', 'mg.png', 'Antananarivo', 25680342, 'Ariary malgache'),
(133, 'MY', 'Malasia', 'Asia', 'my.png', 'Kuala Lumpur', 32700760, 'Ringgit'),
(134, 'MW', 'Malawi', 'África', 'mw.png', 'Lilongüe', 17563749, 'El kwacha de Malawi'),
(135, 'MV', 'Maldivas', 'Asia', 'mv.png', 'Malé', 374775, 'Rupia de Maldivas'),
(136, 'ML', 'Malí', 'África', 'ml.png', 'Bamako', 19973000, 'Franco CFA'),
(137, 'MT', 'Malta', 'Europa', 'mt.png', 'La Valeta', 493559, 'Euro'),
(138, 'FK', 'Islas Malvinas', 'América del Sur', 'fk.png', 'Islas Malvinas', 3198, 'Dólar de los Estados Unidos'),
(139, 'MP', 'Islas Marianas del Norte', 'Oceanía', 'mp.png', 'Islas Marianas del Norte', 56200, 'Dólar de los Estados Unidos'),
(140, 'MA', 'Marruecos', 'África', 'ma.png', 'Rabat', 35821024, 'Dírham marroquí'),
(141, 'MH', 'Islas Marshall', 'Oceanía', 'mh.png', 'Majuro', 55500, 'Dólar de los Estados Unidos'),
(142, 'MQ', 'Martinica', 'América del Norte', 'mq.png', 'Martinica', 376480, 'Euro'),
(143, 'MU', 'Mauricio', 'África', 'mu.png', '	Port Louis', 1265985, 'Rupia de Mauricio'),
(144, 'MR', 'Mauritania', 'África', 'mr.png', 'Nuakchot', 4077347, 'Euro'),
(145, 'YT', 'Mayotte', 'África', 'yt.png', 'Mayote', 279471, 'Euro'),
(146, 'MX', 'México', 'América del Sur', 'mx.png', 'Ciudad de México', 126577691, 'Peso Mexicano'),
(147, 'FM', 'Micronesia', 'Oceanía', 'fm.png', 'Palikir', 104468, 'Euro'),
(148, 'MD', 'Moldavia', 'Europa', 'md.png', 'Chişinău', 2681735, 'Leu moldavo'),
(149, 'MC', 'Mónaco', 'Europa', 'mc.png', 'Mónaco', 38300, 'Euro'),
(150, 'MN', 'Mongolia', 'Asia', 'mn.png', 'Ulán Bator', 3304526, 'Tugrik mongol'),
(151, 'MS', 'Montserrat', 'América del Norte', 'ms.png', 'Tugrik mongol', 4989, 'Dólar del Caribe Oriental'),
(152, 'MZ', 'Mozambique', 'África', 'mz.png', 'Maputo', 28571310, 'Metical mozambiqueño'),
(153, 'MM', 'Myanmar', 'Asia', 'mm.png', 'Naypyidaw', 54339766, 'Kyat birmano'),
(154, 'NA', 'Namibia', 'África', 'na.png', 'Windhoek', 2458936, 'Dólar namibio'),
(155, 'NR', 'Nauru', 'Oceanía', 'nr.png', 'Yaren', 11000, 'Dólar tuvaluano'),
(156, 'NP', 'Nepal', 'Asia', 'np.png', 'Katmandú', 29609623, 'Rupia nepalí'),
(157, 'NI', 'Nicaragua', 'América del Norte', 'ni.png', 'Managua', 6460411, 'Córdoba'),
(158, 'NE', 'Níger', 'África', 'ne.png', 'Niamey', 22314743, 'Franco CFA'),
(159, 'NG', 'Nigeria', 'África', 'ng.png', 'Abuja', 200963599, 'Naira'),
(160, 'NU', 'Niue', 'Oceanía', 'nu.png', 'Alofi', 1520, 'Dólar neozelandés'),
(161, 'NF', 'Isla Norfolk', 'Oceanía', 'nf.png', 'Isla Norfolk', 1756, 'Dólar tuvaluano'),
(162, 'NO', 'Noruega', 'Europa', 'no.png', 'Oslo', 5356789, 'Corona Noruega'),
(163, 'NC', 'Nueva Caledonia', 'Oceanía', 'nc.png', 'Nueva Caledonia', 282200, 'Dólar neozelandés'),
(164, 'NZ', 'Nueva Zelanda', 'Oceanía', 'nz.png', 'Wellington', 4961213, 'Dólar neozelandés'),
(165, 'OM', 'Omán', 'Asia', 'om.png', 'Mascate', 4664790, 'Rial Omaní'),
(166, 'NL', 'Países Bajos', 'Europa', 'nl.png', 'Amsterdam', 17438081, 'Euro'),
(167, 'PK', 'Pakistán', 'Asia', 'pk.png', 'Islamabad', 218741520, 'Rupia pakistaní'),
(168, 'PW', 'Palau', 'Oceanía', 'pw.png', 'Ngerulmud', 17900, 'Dólar de los Estados Unidos'),
(169, 'PS', 'Palestina', 'Asia', 'ps.png', 'Jerusalén', 5051953, 'Nuevo Séquel'),
(170, 'PA', 'Panamá', 'América del Norte', 'pa.png', 'Panamá', 4218808, 'Balboa'),
(171, 'PG', 'Papúa Nueva Guinea', 'Oceanía', 'pg.png', 'Port Moresby', 8935000, 'Kina'),
(172, 'PY', 'Paraguay', 'América del Sur', 'py.png', 'Asunción', 7151703, 'Guaraní'),
(173, 'PE', 'Perú', 'América del Sur', 'pe.png', 'Lima', 32131400, 'Nuevo Sol'),
(174, 'PN', 'Islas Pitcairn', 'Oceanía', 'pn.png', 'Islas Pitcairn', 50, 'Dólar neozelandés'),
(175, 'PF', 'Polinesia Francesa', 'Oceanía', 'pf.png', 'Polinasia Francesa', 275918, 'Euro'),
(176, 'PL', 'Polonia', 'Europa', 'pl.png', 'Varsovia', 38386000, 'Zloty'),
(177, 'PT', 'Portugal', 'Europa', 'pt.png', 'Lisboa', 10276617, 'Euro'),
(178, 'PR', 'Puerto Rico', 'América del Norte', 'pr.png', 'San Juan', 3193694, 'Dólar de los Estados Unidos'),
(179, 'QA', 'Qatar', 'Asia', 'qa.png', 'Doha', 2747282, 'Qatar Rial'),
(180, 'GB', 'Reino Unido', 'Reino Unido', 'gb.png', 'Londres', 66435600, 'Libra esterlina'),
(181, 'RE', 'Reunión', 'África', 're.png', 'Reunión', 859959, 'Euro'),
(182, 'RW', 'Ruanda', 'África', 'rw.png', 'Kigali', 12374397, 'Franco ruandés'),
(183, 'RO', 'Rumania', 'Europa', 'ro.png', 'Bucarest', 19405156, 'Leu rumano'),
(184, 'RU', 'Rusia', 'Europa-Asia', 'ru.png', 'Moscú', 146780720, 'Rublo Ruso'),
(185, 'EH', 'Sahara Occidental', 'África', 'eh.png', 'El Aaiún', 582463, 'Dírham marroquí '),
(186, 'SB', 'Islas Salomón', 'Oceanía', 'sb.png', 'Honiara', 680806, 'Dólar de las Islas Salomón'),
(187, 'WS', 'Samoa', 'Oceanía', 'ws.png', 'Apia', 200874, 'Dólar de los Estados Unidos'),
(188, 'AS', 'Samoa Americana', 'Oceanía', 'as.png', 'Samoa Americana', 56700, 'Dólar de los Estados Unidos'),
(189, 'KN', 'San Cristóbal y Nevis', 'América del Norte', 'kn.png', 'Basseterre', 52823, 'Dólar del Caribe Oriental'),
(190, 'SM', 'San Marino', 'Europa', 'sm.png', 'Ciudad de San Marino', 33574, 'Euro'),
(191, 'PM', 'San Pedro y Miquelón', 'América del Norte', 'pm.png', 'San Pedro y Miquelón', 6008, 'Euro'),
(192, 'VC', 'San Vicente y las Granadinas', 'América del Norte', 'vc.png', 'Kingstown', 110608, 'Dólar del Caribe Oriental'),
(193, 'SH', 'Santa Helena', 'África', 'sh.png', 'Santa Helena', 5633, 'Libra esterlina'),
(194, 'LC', 'Santa Lucía', 'América del Norte', 'lc.png', 'Castries', 178696, 'Dólar del Caribe Oriental'),
(195, 'ST', 'Santo Tomé y Príncipe', 'África', 'st.png', 'Santo Tomé', 201784, 'Euro'),
(196, 'SN', 'Senegal', 'África', 'sn.png', 'Dakar', 16209125, 'Franco CFA'),
(197, 'RS', 'Serbia', 'Europa', 'rs.png', 'Belgrado', 6963764, 'Dinar serbio'),
(198, 'SC', 'Seychelles', 'África', 'sc.png', 'Victoria', 97625, 'Rupia de Seychelles'),
(199, 'SL', 'Sierra Leona', 'África', 'sl.png', 'Freetown', 7901454, 'Trenza de Sierra Leona'),
(200, 'SG', 'Singapur', 'Asia', 'sg.png', 'Singapur', 5703600, 'Dólar de Singapur'),
(201, 'SY', 'Siria', 'Asia', 'sy.png', 'Damasco', 17070135, 'La Libra Siria'),
(202, 'SO', 'Somalia', 'África', 'so.png', 'Mogadiscio', 15442905, 'Chelín somalí'),
(203, 'LK', 'Sri Lanka', 'Asia', 'lk.png', 'Colombo', 21903000, 'Rupia de Sri Lanka'),
(204, 'SZ', 'Suazilandia', 'África', 'sz.png', 'Lobamba', 1093238, 'Swazilandia Lilangeni'),
(205, 'ZA', 'Sudáfrica', 'África', 'za.png', 'Pretoria', 1221040, 'Rand Sudafricano'),
(206, 'SD', 'Sudán', 'África', 'sd.png', 'Jartum', 42295645, 'Libra Sudanesa'),
(207, 'SE', 'Suecia', 'Europa', 'se.png', 'Estocolmo', 10327589, 'Corona Sueca'),
(208, 'CH', 'Suiza', 'Europa', 'ch.png', 'Berna', 8586550, 'Franco Suizo'),
(209, 'SR', 'Surinam', 'América del Sur', 'sr.png', 'Paramaribo', 581372, 'Dólar surinamés'),
(210, 'SJ', 'Svalbard y Jan Mayen', 'Europa', 'sj.png', 'Svalbard y Jan Mayen', 0, 'Corona noruega'),
(211, 'TH', 'Tailandia', 'Asia', 'th.png', 'Bangkok', 66474267, 'Baht tailandés'),
(212, 'TW', 'Taiwán', 'Asia', 'tw.png', 'Taipei', 23604265, 'Yuan Taiwanes'),
(213, 'TZ', 'Tanzania', 'África', 'tz.png', 'Dodoma', 55890747, '	Chelín tanzano'),
(214, 'TJ', 'Tayikistán', 'Asia', 'tj.png', 'Dushanbe', 9127000, 'Renminbi'),
(215, 'IO', 'Territorio Británico del Océano Índico', 'África', 'io.png', 'Territorio Británico del Océano Índico', 0, 'Dólar de los Estados Unidos'),
(216, 'TF', 'Territorios Australes Franceses', 'NULL', 'tf.png', 'Territorios Australes Franceses', 0, 'Euro'),
(217, 'TL', 'Timor Oriental', 'Asia', 'tl.png', 'Dili', 1387149, 'Dólar de los Estados Unidos'),
(218, 'TG', 'Togo', 'África', 'tg.png', 'Lomé', 7538000, 'Franco CFA'),
(219, 'TK', 'Tokelau', 'Oceanía', 'tk.png', 'Tokelau', 1400, 'Dólar neozelandés'),
(220, 'TO', 'Tonga', 'Oceanía', 'to.png', 'Nukualofa', 100651, 'Pa`anga'),
(221, 'TT', 'Trinidad y Tobago', 'América del Sur', 'tt.png', 'Puerto España', 1363985, 'Dólar trinitense'),
(222, 'TN', 'Túnez', 'África', 'tn.png', 'Túnez', 11722038, 'Dinar tunecino'),
(223, 'TC', 'Islas Turcas y Caicos', 'América del Norte', 'tc.png', 'Islas Turcas y Caicos', 41369, 'Dólar de los Estados Unidos'),
(224, 'TM', 'Turkmenistán', 'Asia', 'tm.png', 'Asjabad', 5942089, 'Dólar de los Estados Unidos'),
(225, 'TR', 'Turquía', 'Europa-Asia', 'tr.png', 'Ankara', 83154997, 'Lira Turca'),
(226, 'TV', 'Tuvalu', 'Oceanía', 'tv.png', 'Funafuti', 10200, 'Dólar tuvaluano'),
(227, 'UA', 'Ucrania', 'Europa', 'ua.png', 'Kiev', 41902416, 'Grivna'),
(228, 'UG', 'Uganda', 'África', 'ug.png', 'Kampala', 40299300, 'Chelín ugandés '),
(229, 'UY', 'Uruguay', 'América del Sur', 'uy.png', 'Montevideo', 3518552, 'Peso Uruguayo'),
(230, 'UZ', 'Uzbekistán', 'Asia', 'uz.png', 'Taskent', 34034952, 'Som uzbeko'),
(231, 'VU', 'Vanuatu', 'Oceanía', 'vu.png', 'Port Vila', 304500, 'Vanuatu algodón'),
(232, 'VE', 'Venezuela', 'América del Sur', 've.png', 'Caracas', 32219521, 'Bolivares'),
(233, 'VN', 'Vietnam', 'Asia', 'vn.png', 'Hanoi', 96208984, 'Đồng vietnamita'),
(234, 'VG', 'Islas Vírgenes Británicas', 'América del Norte', 'vg.png', 'Islas Vírgenes Británicas', 30030, 'Dólar de los Estados Unidos'),
(235, 'VI', 'Islas Vírgenes de los Estados Unidos', 'América del Norte', 'vi.png', 'Islas Vírgenes de los Estados Unidos', 104589, 'Dólar de los Estados Unidos'),
(236, 'WF', 'Wallis y Futuna', 'Oceanía', 'wf.png', 'Wallis y Futuna', 11700, 'Dólar de los Estados Unidos'),
(237, 'YE', 'Yemen', 'Áfica-Asia', 'ye.png', 'Saná', 29161922, 'Rial yemení'),
(238, 'DJ', 'Yibuti', 'África', 'dj.png', 'Yibuti', 1078383, 'Franco yibutiano'),
(239, 'ZM', 'Zambia', 'África', 'zm.png', 'Lusaka', 17381168, 'Kwacha zambiano'),
(240, 'ZW', 'Zimbabue', 'África', 'zw.png', 'Harare', 15159624, 'Dólar de los Estados Unidos');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `paises`
--
ALTER TABLE `paises`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `paises`
--
ALTER TABLE `paises`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=241;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
