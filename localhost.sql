-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 14-Mar-2019 às 23:56
-- Versão do servidor: 5.7.24
-- versão do PHP: 7.1.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `flyinghb`
--
CREATE DATABASE IF NOT EXISTS `flyinghb` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `flyinghb`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `denuncias`
--

CREATE TABLE `denuncias` (
  `id` int(9) UNSIGNED NOT NULL,
  `user_enviado` varchar(180) DEFAULT NULL,
  `user_reportado` varchar(180) DEFAULT NULL,
  `mensagem` varchar(180) DEFAULT NULL,
  `tipo` varchar(180) DEFAULT NULL,
  `estado` varchar(180) DEFAULT NULL,
  `fecha_i` varchar(180) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `loja`
--

CREATE TABLE `loja` (
  `id` int(9) UNSIGNED NOT NULL,
  `codigo` varchar(180) DEFAULT NULL,
  `preco` varchar(180) DEFAULT NULL,
  `unidades` varchar(180) DEFAULT NULL,
  `icone` varchar(180) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `niveis_acessos`
--

CREATE TABLE `niveis_acessos` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `niveis_acessos`
--

INSERT INTO `niveis_acessos` (`id`, `nome`, `created`, `modified`) VALUES
(1, 'Administrador', '2016-02-19 00:00:00', NULL),
(2, 'Colaborador', '2016-02-19 00:00:00', NULL),
(3, 'Cliente', '2016-02-19 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `noticias`
--

CREATE TABLE `noticias` (
  `id` int(11) NOT NULL,
  `autor` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `titulo` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `resumo` varchar(126) COLLATE utf8_unicode_ci NOT NULL,
  `categoria` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `fecha` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `imagem` varchar(4000) COLLATE utf8_unicode_ci NOT NULL,
  `noticia` varchar(4000) COLLATE utf8_unicode_ci NOT NULL,
  `curtidas` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `deslikes` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `placas`
--

CREATE TABLE `placas` (
  `id` int(11) NOT NULL,
  `codigo` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `imagem` varchar(4000) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ranks`
--

CREATE TABLE `ranks` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `rank` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `cor` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `slides`
--

CREATE TABLE `slides` (
  `id` int(11) NOT NULL,
  `titulo` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `texto` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `imagem` varchar(700) COLLATE utf8_unicode_ci NOT NULL,
  `principal` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `url_imagem` varchar(500) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `slides`
--

INSERT INTO `slides` (`id`, `titulo`, `texto`, `imagem`, `principal`, `url_imagem`) VALUES
(1, 'Primeiro slide NPanel!', 'Esse é o primeiro slide do NPANEL', 'https://1.bp.blogspot.com/-D1wrox-5LPg/V3RVioTT24I/AAAAAAAAs_4/JvB7zWpG52QS-cCauI44cJk2R_awmuqHwCKgB/s1600/art_byebyebighand_hotels.gif', 'No', 'https://1.bp.blogspot.com/-D1wrox-5LPg/V3RVioTT24I/AAAAAAAAs_4/JvB7zWpG52QS-cCauI44cJk2R_awmuqHwCKgB/s1600/art_byebyebighand_hotels.gif');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `ID` int(9) UNSIGNED NOT NULL,
  `usuario` varchar(12) DEFAULT NULL,
  `senha` varchar(180) DEFAULT NULL,
  `email` varchar(180) DEFAULT NULL,
  `fecha` varchar(12) NOT NULL,
  `rank` varchar(2) NOT NULL DEFAULT '1',
  `pin` varchar(4) NOT NULL,
  `id_extreme` varchar(180) DEFAULT NULL,
  `avatar` varchar(4000) NOT NULL DEFAULT 'images/avatars/anonimo.jpg',
  `bannerperfil` varchar(4000) NOT NULL DEFAULT 'http://i.imgur.com/EPmYseB.png',
  `creditos` varchar(4000) NOT NULL DEFAULT '500',
  `diamantes` varchar(4000) NOT NULL DEFAULT '100',
  `ip` varchar(500) NOT NULL,
  `nome` varchar(120) NOT NULL DEFAULT 'No especificado',
  `apelido` varchar(120) NOT NULL DEFAULT 'No especificado',
  `pais` varchar(120) NOT NULL DEFAULT 'No especificado',
  `ban` varchar(20) NOT NULL DEFAULT '0',
  `ban_i` varchar(20) NOT NULL DEFAULT '0',
  `ban_f` varchar(20) NOT NULL DEFAULT '0',
  `mostraremail` varchar(50) NOT NULL DEFAULT 'No',
  `mostrarapelido` varchar(50) NOT NULL DEFAULT 'No',
  `mostrarpais` varchar(50) NOT NULL DEFAULT 'No',
  `seguranca_ip` varchar(10) NOT NULL DEFAULT 'No'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `denuncias`
--
ALTER TABLE `denuncias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loja`
--
ALTER TABLE `loja`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `niveis_acessos`
--
ALTER TABLE `niveis_acessos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `noticias`
--
ALTER TABLE `noticias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ranks`
--
ALTER TABLE `ranks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `denuncias`
--
ALTER TABLE `denuncias`
  MODIFY `id` int(9) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loja`
--
ALTER TABLE `loja`
  MODIFY `id` int(9) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `niveis_acessos`
--
ALTER TABLE `niveis_acessos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `noticias`
--
ALTER TABLE `noticias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `ranks`
--
ALTER TABLE `ranks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `ID` int(9) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `habbomaniaid`
--
CREATE DATABASE IF NOT EXISTS `habbomaniaid` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `habbomaniaid`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `baneo`
--

CREATE TABLE `baneo` (
  `id` int(9) UNSIGNED NOT NULL,
  `usuario` varchar(180) DEFAULT NULL,
  `razon` varchar(500) NOT NULL,
  `ban_i` varchar(180) DEFAULT NULL,
  `ban_f` varchar(180) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `titulo` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `texto` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `imagen` varchar(700) COLLATE utf8_unicode_ci NOT NULL,
  `principal` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `url_promo` varchar(500) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `banner`
--

INSERT INTO `banner` (`id`, `titulo`, `texto`, `imagen`, `principal`, `url_promo`) VALUES
(1, 'CINEMA + MÚSICA', 'Morgana esteve esta semana preparando um plano muito mas muito maligno para se divertir com todos vocês! Hoje no fim de tarde ela abrirá seu cinema pessoal para uma atividade dedicada aos amantes do cinema e da música.', 'http://www.habbonia.com/swf/c_images/web_promos/web_promo_party.png', 'active', '#'),
(4, 'CRÉDITOS EM DOBRO!', 'Como na última vez, nós usaremos as ofertas personalizadas para apresentar ofertas incríveis de Créditos em Dobro. Tudo que você terá que fazer para recebê-las é logar nos próximos dias - as ofertas aparecerão etiquetadas com \"50% de desconto\" na Habbo Shop!', 'http://i.imgur.com/0avlX9x.png', 'No', '#'),
(5, 'JOGO – HORA DO PLANETA 2017', 'O gesto, ainda que simbólico, é importante para reafirmar a necessidade de buscarmos cada vez mais iniciativas sustentáveis em prol do planeta Terra. Ainda que não possamos mudar o mundo sozinhos, podemos nos unir à causa e, juntos, transmitirmos uma mensagem de conscientização ambiental.', 'http://i.imgur.com/fcjBeC9.png', 'No', '#'),
(11, 'COMPETIÇÃO - DESAFIO BONECÃO DE MASCOTES DO HABBO HOTEL', 'Conte lentamente até 10, feche os olhos e relaxe a sua mente.habbos_pets Agora, imagine o seu mascote pixelado favorito se transformando em um boneco pixelado, gigante, ocupando um quarto inteiro, feito com blocos e mobis, uma construção única como ele.', 'http://i.imgur.com/cR2WqbJ.png', 'No', '#'),
(15, '#DIAMUNDIALDAÁGUA', 'Dia 22 de março foi a data escolhida pelas Nações Unidas como o Dia Mundial da Água. Este dia é para gerar debate sobre a importância deste recurso e a necessidade de que siga disponível já que é essencial para a nossa sobrevivência. ', 'http://i21.servimg.com/u/f21/14/92/41/94/2fc98c10.png', 'No', '#'),
(16, 'JOGOS – CELEBRANDO O EQUINÓCIO', 'Está sentindo o ar diferente? É a nova estação chegando!', 'http://habboo-a.akamaihd.net/c_images/web_promo/lpromo_infobus15.png', 'No', '#');

-- --------------------------------------------------------

--
-- Estrutura da tabela `comentarios`
--

CREATE TABLE `comentarios` (
  `id` int(11) NOT NULL,
  `username` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `noticia_id` int(11) NOT NULL,
  `avatar` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `comentario` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `comentarios`
--

INSERT INTO `comentarios` (`id`, `username`, `noticia_id`, `avatar`, `comentario`) VALUES
(1, 'ruanhop@', 1, 'http://i.imgur.com/Vh7j1UE.jpg', 'teste'),
(2, 'Offer', 1, '/images/avatars/O.png', 'ui'),
(3, 'wilvp', 1, '/images/avatars/W.png', 'top');

-- --------------------------------------------------------

--
-- Estrutura da tabela `config`
--

CREATE TABLE `config` (
  `id` int(11) NOT NULL,
  `nameweb` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `pclaves` varchar(600) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` varchar(4000) COLLATE utf8_unicode_ci NOT NULL,
  `logo` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `facebook` varchar(4000) COLLATE utf8_unicode_ci NOT NULL,
  `facebookimg` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `mantenimiento` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `iniciar_sesion` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `registro` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `publicidad` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `codigo` text COLLATE utf8_unicode_ci NOT NULL,
  `radio` varchar(9000) COLLATE utf8_unicode_ci NOT NULL,
  `nombre_radio` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `radio_op` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `xat` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `config`
--

INSERT INTO `config` (`id`, `nameweb`, `url`, `pclaves`, `descripcion`, `logo`, `facebook`, `facebookimg`, `mantenimiento`, `iniciar_sesion`, `registro`, `publicidad`, `codigo`, `radio`, `nombre_radio`, `radio_op`, `xat`) VALUES
(1, 'HabboNews', 'http://habbonews.hol.es/', 'Habbink, Fansite, webfan, Habbo, Holo, 2016, Beta, CMS, nueva', 'Únete a Habbink y mantente informado de todo lo que no sabes de Habbo, ¿Que esperas para unirte a Habbink? web fan de verdad ya estamos en línea entra Ya', 'http://i.imgur.com/CGfFmra.png', 'https://www.facebook.com/powerpixelforum', 'http://i.imgur.com/776LiPM.png', '0', '1', '1', '0', '<a href=\"http://www.traxpixel.net/vote.php?id=1\" target=\"_blank\"><img src=\"http://www.traxpixel.net/img/votame.gif\" /></a>', '<script type=\"text/javascript\" src=\"http://www.netyco.com:82/radio-x-internet/player/player.js\"></script><div id=\"radioload\">Tu radio en Internet <a alt=\"Transmite tu radio por internet, setreaming gratis con Netyco, servidores de radio por internet\" href=\"http://www.netyco.com/radio-x-internet/radio.php\">Netyco Argentina</a></div><script type=\"text/javascript\">var params={\'url\':\'http:///;\',\'lang\':\'es\',\'codec\':\'mp3\',\'volume\':100,\'autoplay\':false,\'buffering\':10,\'title\':\'Habbink\',\'welcome\':\'Bienvenid@ a la v1.0\',\'bgcolor\':\'#FFFFFF\',\'winmedia\':false,\'realplayer\':false,\'quicktime\':false,\'html5\':false,\'celulares\':false,\'skin\':\'tweety\',\'width\':189,\'height\':62};Netyco.insert(params);</script>', 'Radio', '1', '<embed wmode=\"transparent\" src=\"http://www.xatech.com/web_gear/chat/chat.swf\" quality=\"high\" width=\"640\" height=\"480\" name=\"chat\" flashvars=\"id=218304341\" align=\"middle\" allowscriptaccess=\"sameDomain\" type=\"application/x-shockwave-flash\" pluginspage=\"http://xat.com/update_flash.php\"/>\r\n						<br>\r\n						<small><a target=\"_BLANK\" href=\"http://xat.com/web_gear/chat/embed.php?id=218304341&GroupName=HabbinkFansite\">Insertar codigo de chat</a> | <a target=\"_BLANK\" href=\"http://xat.com/HabbinkFansite\"> Página xat de Habbink</a></small>');

-- --------------------------------------------------------

--
-- Estrutura da tabela `eventos`
--

CREATE TABLE `eventos` (
  `id` int(11) NOT NULL,
  `titulo` varchar(4000) COLLATE utf8_unicode_ci NOT NULL,
  `texto` varchar(4000) COLLATE utf8_unicode_ci NOT NULL,
  `fecha` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `autor` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `furnis`
--

CREATE TABLE `furnis` (
  `id` int(11) NOT NULL,
  `imagen` varchar(4000) COLLATE utf8_unicode_ci NOT NULL,
  `nombre` varchar(4000) COLLATE utf8_unicode_ci NOT NULL,
  `creditos` varchar(8) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `icon` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `seccion` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `furnis`
--

INSERT INTO `furnis` (`id`, `imagen`, `nombre`, `creditos`, `icon`, `seccion`) VALUES
(15, 'http://i.imgur.com/Z0uSI6I.png', 'Almohada Plata', '340', 'http://i.imgur.com/hntEBNE.png', '1'),
(11, 'http://i.imgur.com/rO3jYVF.png', 'Almohada Bronce', '420', 'http://i.imgur.com/hntEBNE.png', '4'),
(12, 'http://i.imgur.com/tARG6ys.png', 'Almohada Turquesa', '50', 'http://i.imgur.com/hntEBNE.png', '4'),
(13, 'http://i.imgur.com/jr8thpH.png', 'Almohada Azul', '150', 'http://i.imgur.com/hntEBNE.png', '4'),
(14, 'http://i.imgur.com/YmpPhMr.png', 'Almohada Azul Oscuro', '250', 'http://i.imgur.com/hntEBNE.png', '4'),
(10, 'http://i.imgur.com/0yo7aB6.png', 'Almohada Magenta', '300', 'http://i.imgur.com/hntEBNE.png', '3'),
(16, 'http://i.imgur.com/nyxfBCd.png', 'Almohada Dorada', '500', 'http://i.imgur.com/hntEBNE.png', '3'),
(17, 'http://i.imgur.com/IDk9dCq.png', 'Heladera Aqua', '9', 'http://i.imgur.com/hntEBNE.png', '3'),
(18, 'http://i.imgur.com/J18myQz.png', 'Heladera Naranja', '11', 'http://i.imgur.com/hntEBNE.png', '3'),
(19, 'http://i.imgur.com/ffmps81.png', 'Heladera Fucsia', '40', 'http://i.imgur.com/hntEBNE.png', '3'),
(20, 'http://i.imgur.com/j0078lU.png', 'Heladera Rosa', '35', 'http://i.imgur.com/hntEBNE.png', '3'),
(21, 'http://i.imgur.com/O7umf04.png', 'Heladera Black/Azul', '55', 'http://i.imgur.com/hntEBNE.png', '2'),
(22, 'http://i.imgur.com/j2BZYWQ.png', 'Heladera Azul', '100', 'http://i.imgur.com/hntEBNE.png', '2'),
(23, 'http://i.imgur.com/49Rc715.png', 'Heladera Verde', '10', 'http://i.imgur.com/hntEBNE.png', '2'),
(24, 'http://i.imgur.com/dMj5tlR.png', 'Heladera Roja', '100', 'http://i.imgur.com/QpP3wav.png', '2'),
(25, 'http://i.imgur.com/dAkogjx.png', 'Heladera Ejecutiva', '350', 'http://i.imgur.com/QpP3wav.png', '2'),
(26, 'http://i.imgur.com/3pyZZcT.png', 'Dragon Rosado', '2', 'http://i.imgur.com/QpP3wav.png', '5'),
(27, 'http://i.imgur.com/cHh9cGv.png', 'Dragon Dorado', '165', 'http://i.imgur.com/6nXSdBS.png', '5'),
(28, 'http://i.imgur.com/irfscPh.png', 'Dragon Musgo', '150', 'http://i.imgur.com/6nXSdBS.png', '5'),
(29, 'http://i.imgur.com/P0qENEK.png', 'Dragon De Bronce', '500', 'http://i.imgur.com/QpP3wav.png', '4'),
(35, 'http://ihabob.weebly.com/uploads/1/8/9/3/18933501/8069540.gif', 'Throne', '2000', 'http://i.imgur.com/2sjGOmJ.png', '1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `images`
--

CREATE TABLE `images` (
  `id` int(9) UNSIGNED NOT NULL,
  `url` varchar(500) DEFAULT NULL,
  `fecha` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `images`
--

INSERT INTO `images` (`id`, `url`, `fecha`) VALUES
(1, 'http://i.imgur.com/Vh7j1UE.jpg', '02/04/2017');

-- --------------------------------------------------------

--
-- Estrutura da tabela `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `usuario` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `accion` varchar(500) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'No definida',
  `fecha` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'No definida'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `logs`
--

INSERT INTO `logs` (`id`, `usuario`, `accion`, `fecha`) VALUES
(1, 'ruanhop@', 'Se ha registrado', '2017-04-02'),
(2, 'ruanhop@', 'Ha iniciado sesión', '2017-04-02'),
(3, 'ruanhop@', 'Ha actualizado su perfil', '2017-04-02'),
(4, 'ruanhop@', 'Ha comprado una placa', '2017-04-02'),
(5, 'ruanhop@', 'Ha comprado una placa', '2017-04-02'),
(6, 'ruanhop@', 'Ha cerrado sesión', '2017-04-02'),
(7, 'ruanhop@', 'Ha iniciado sesión', '2017-04-02'),
(8, 'ruanhop@', 'Ha cerrado sesión', '2017-04-02'),
(9, 'ruanhop@', 'Ha iniciado sesión', '2017-04-02'),
(10, 'ruanhop@', 'Ha cerrado sesión', '2017-04-02'),
(11, 'ruanhop@', 'Ha iniciado sesión', '2017-04-02'),
(12, 'ruanhop@', 'Ha actualizado su perfil', '2017-04-02'),
(13, 'ruanhop@', 'Ha actualizado su perfil', '2017-04-02'),
(14, 'ruanhop@', 'Ha iniciado sesión', '2017-04-02'),
(15, 'ruanhop@', 'Ha editado una noticia', '2017-04-02'),
(16, 'ruanhop@', 'Ha editado una noticia', '2017-04-02'),
(17, 'ruanhop@', 'Ha editado una noticia', '2017-04-02'),
(18, 'ruanhop@', 'Ha editado una noticia', '2017-04-02'),
(19, 'ruanhop@', 'Ha editado una noticia', '2017-04-02'),
(20, 'ruanhop@', 'Ha iniciado sesión', '2017-04-02'),
(21, 'ruanhop@', 'Ha comentado en la noticia id: 1', '2017-04-02'),
(22, 'Luanzin', 'Se ha registrado', '2017-04-02'),
(23, 'Luanzin', 'Ha iniciado sesión', '2017-04-02'),
(24, 'Luanzin', 'Ha enviado una solicitud de amistad a ruanhop@', '2017-04-02'),
(25, 'Luanzin', 'Ha comprado una placa', '2017-04-02'),
(26, 'Luanzin', 'Ha comprado una placa', '2017-04-02'),
(27, 'Luanzin', 'Ha comprado una placa', '2017-04-02'),
(28, 'Luanzin', 'Ha comprado una placa', '2017-04-02'),
(29, 'Luanzin', 'Ha comprado una placa', '2017-04-02'),
(30, 'Luanzin', 'Ha comprado una placa', '2017-04-02'),
(31, 'Luanzin', 'Ha comprado una placa', '2017-04-02'),
(32, 'Luanzin', 'Ha cerrado sesión', '2017-04-02'),
(33, 'Teach', 'Se ha registrado', '2017-04-04'),
(34, 'Teach', 'Ha iniciado sesión', '2017-04-04'),
(35, 'Egidio', 'Se ha registrado', '2017-04-06'),
(36, 'Egidio', 'Ha iniciado sesión', '2017-04-06'),
(37, 'Offer', 'Se ha registrado', '2017-04-07'),
(38, 'Offer', 'Ha iniciado sesión', '2017-04-07'),
(39, 'Offer', 'Ha comprado una placa', '2017-04-07'),
(40, 'Offer', 'Ha comprado una placa', '2017-04-07'),
(41, 'Offer', 'Ha comprado una placa', '2017-04-07'),
(42, 'Offer', 'Ha comentado en la noticia id: 1', '2017-04-07'),
(43, 'Vipper', 'Se ha registrado', '2017-04-09'),
(44, 'Vipper', 'Ha iniciado sesión', '2017-04-09'),
(45, 'wilvp', 'Se ha registrado', '2017-04-10'),
(46, 'wilvp', 'Ha iniciado sesión', '2017-04-10'),
(47, 'wilvp', 'Ha comentado en la noticia id: 1', '2017-04-10'),
(48, 'wilvp', 'Ha comprado una placa', '2017-04-10'),
(49, 'ruanhop@', 'Ha iniciado sesión', '2017-04-11'),
(50, 'ruanhop@', 'Ha comprado una placa', '2017-04-11'),
(51, 'ruanhop@', 'Ha comprado una placa', '2017-04-11'),
(52, 'ruanhop@', 'Ha comprado una placa', '2017-04-11'),
(53, 'ruanhop@', 'Ha comprado una placa', '2017-04-11'),
(54, 'ruanhop@', 'Ha actualizado la configuracion de mantenimiento de la web', '2017-04-11'),
(55, 'ruanhop@', 'Ha iniciado sesión', '2017-05-01'),
(56, 'ruanhop@', 'Ha iniciado sesión', '2017-05-01'),
(57, 'ruanhop@', 'Ha cerrado sesión', '2017-05-01'),
(58, 'ruanhop@', 'Ha iniciado sesión', '2017-05-01'),
(59, 'ruanhop@', 'Ha cerrado sesión', '2017-05-01'),
(60, 'ruanhop@', 'Ha iniciado sesión', '2017-05-01');

-- --------------------------------------------------------

--
-- Estrutura da tabela `logs_sospechosos`
--

CREATE TABLE `logs_sospechosos` (
  `id` int(9) UNSIGNED NOT NULL,
  `user_logeado` varchar(180) DEFAULT NULL,
  `ip` varchar(180) DEFAULT NULL,
  `accion` varchar(180) DEFAULT NULL,
  `fecha` varchar(180) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `logs_sospechosos`
--

INSERT INTO `logs_sospechosos` (`id`, `user_logeado`, `ip`, `accion`, `fecha`) VALUES
(1, 'ruanhop@', '187.183.172.95', 'Ha iniciado sesión con otra ip (La cuenta No a sido bloqueada)', '2017-04-11'),
(2, 'ruanhop@', '187.183.173.28', 'Ha iniciado sesión con otra ip (La cuenta No a sido bloqueada)', '2017-05-01'),
(3, 'ruanhop@', '187.183.173.28', 'Ha iniciado sesión con otra ip (La cuenta No a sido bloqueada)', '2017-05-01');

-- --------------------------------------------------------

--
-- Estrutura da tabela `logs_visitantes`
--

CREATE TABLE `logs_visitantes` (
  `id` int(9) UNSIGNED NOT NULL,
  `ip` varchar(180) DEFAULT NULL,
  `fecha_i` varchar(180) DEFAULT NULL,
  `hora` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `logs_visitantes`
--

INSERT INTO `logs_visitantes` (`id`, `ip`, `fecha_i`, `hora`) VALUES
(1, '187.183.169.60', '2017-04-02', '04:21:12'),
(2, '187.41.77.219', '2017-04-02', '15:59:19'),
(3, '177.83.98.31', '2017-04-02', '16:59:39'),
(4, '186.219.113.95', '2017-04-02', '19:02:11'),
(5, '192.95.47.46', '2017-04-02', '19:02:30'),
(6, '179.187.187.33', '2017-04-02', '19:06:26'),
(7, '190.180.175.22', '2017-04-02', '19:11:27'),
(8, '138.0.224.117', '2017-04-02', '19:15:47'),
(9, '179.110.112.115', '2017-04-02', '19:34:59'),
(10, '187.22.253.239', '2017-04-02', '19:56:54'),
(11, '187.182.31.50', '2017-04-02', '20:43:38'),
(12, '84.91.185.236', '2017-04-02', '22:51:37'),
(13, '187.183.169.60', '2017-04-03', '00:52:49'),
(14, '177.156.5.239', '2017-04-03', '01:28:46'),
(15, '189.70.2.122', '2017-04-03', '01:41:24'),
(16, '177.96.180.43', '2017-04-03', '01:43:51'),
(17, '177.190.208.18', '2017-04-03', '01:45:27'),
(18, '168.197.12.39', '2017-04-03', '01:54:24'),
(19, '138.0.224.117', '2017-04-03', '01:54:39'),
(20, '201.7.169.239', '2017-04-03', '01:55:22'),
(21, '167.250.190.154', '2017-04-03', '02:01:01'),
(22, '189.5.230.246', '2017-04-03', '02:08:57'),
(23, '190.198.216.208', '2017-04-03', '03:09:30'),
(24, '131.0.46.238', '2017-04-03', '03:33:40'),
(25, '189.106.235.24', '2017-04-03', '14:08:22'),
(26, '179.178.184.200', '2017-04-03', '14:51:57'),
(27, '168.194.20.6', '2017-04-03', '15:34:38'),
(28, '187.41.98.107', '2017-04-03', '15:48:11'),
(29, '83.132.123.247', '2017-04-03', '16:01:04'),
(30, '192.168.1.177', '2017-04-03', '16:31:48'),
(31, '187.112.184.83', '2017-04-03', '16:40:58'),
(32, '177.223.13.22', '2017-04-03', '16:58:03'),
(33, '191.248.130.22', '2017-04-03', '17:33:15'),
(34, '213.22.221.23', '2017-04-03', '17:45:38'),
(35, '94.62.252.208', '2017-04-03', '18:51:19'),
(36, '177.106.137.120', '2017-04-03', '19:07:09'),
(37, '95.7.251.128', '2017-04-03', '19:07:32'),
(38, '152.254.143.220', '2017-04-03', '21:13:27'),
(39, '84.91.185.236', '2017-04-03', '22:05:35'),
(40, '191.5.247.41', '2017-04-04', '01:13:21'),
(41, '177.130.101.240', '2017-04-04', '04:20:53'),
(42, '168.194.20.6', '2017-04-04', '14:27:47'),
(43, '204.236.212.177', '2017-04-04', '14:30:42'),
(44, '34.207.209.133', '2017-04-04', '14:31:27'),
(45, '54.172.102.3', '2017-04-04', '14:46:21'),
(46, '52.91.40.167', '2017-04-04', '15:01:26'),
(47, '187.183.171.139', '2017-04-04', '21:58:53'),
(48, '177.101.44.77', '2017-04-05', '00:27:32'),
(49, '89.145.95.71', '2017-04-05', '04:31:41'),
(50, '202.14.12.94', '2017-04-05', '11:53:30'),
(51, '187.183.172.95', '2017-04-05', '12:16:25'),
(52, '189.70.32.91', '2017-04-05', '12:42:41'),
(53, '89.145.95.77', '2017-04-05', '12:48:34'),
(54, '89.145.95.68', '2017-04-05', '12:48:38'),
(55, '89.145.95.74', '2017-04-05', '12:53:25'),
(56, '177.157.242.11', '2017-04-05', '15:29:19'),
(57, '201.43.54.56', '2017-04-05', '17:02:25'),
(58, '179.176.24.242', '2017-04-05', '17:08:21'),
(59, '82.154.24.33', '2017-04-05', '17:23:36'),
(60, '89.145.95.69', '2017-04-05', '18:42:47'),
(61, '177.157.242.11', '2017-04-06', '04:33:19'),
(62, '187.183.171.120', '2017-04-06', '12:22:37'),
(63, '202.14.12.94', '2017-04-06', '16:12:20'),
(64, '191.241.4.66', '2017-04-06', '19:09:09'),
(65, '177.44.31.124', '2017-04-06', '21:16:41'),
(66, '138.0.224.117', '2017-04-06', '21:23:18'),
(67, '177.190.208.18', '2017-04-06', '21:46:37'),
(68, '177.74.130.75', '2017-04-06', '21:51:29'),
(69, '187.19.112.196', '2017-04-06', '21:54:17'),
(70, '201.20.174.190', '2017-04-06', '22:06:24'),
(71, '189.112.147.221', '2017-04-06', '22:21:23'),
(72, '179.157.139.207', '2017-04-06', '22:34:26'),
(73, '187.64.103.135', '2017-04-06', '22:59:51'),
(74, '177.134.186.55', '2017-04-06', '23:16:06'),
(75, '179.124.16.8', '2017-04-06', '23:32:27'),
(76, '179.215.124.240', '2017-04-07', '00:05:14'),
(77, '131.0.46.56', '2017-04-07', '00:56:35'),
(78, '138.59.233.204', '2017-04-07', '01:19:14'),
(79, '177.81.122.181', '2017-04-07', '02:58:59'),
(80, '189.25.126.203', '2017-04-07', '10:37:17'),
(81, '186.206.254.160', '2017-04-07', '12:38:57'),
(82, '187.183.172.95', '2017-04-07', '12:53:20'),
(83, '191.253.224.188', '2017-04-07', '13:09:15'),
(84, '187.40.114.34', '2017-04-07', '13:31:00'),
(85, '189.70.32.91', '2017-04-07', '13:38:05'),
(86, '191.250.20.211', '2017-04-07', '14:23:16'),
(87, '187.40.101.98', '2017-04-07', '14:29:39'),
(88, '78.132.108.70', '2017-04-07', '15:36:04'),
(89, '90.161.127.24', '2017-04-07', '15:41:02'),
(90, '168.194.20.6', '2017-04-07', '15:47:00'),
(91, '191.255.126.131', '2017-04-07', '18:29:53'),
(92, '187.127.184.114', '2017-04-07', '18:32:12'),
(93, '66.220.146.25', '2017-04-07', '21:00:12'),
(94, '66.220.146.22', '2017-04-07', '21:00:13'),
(95, '173.252.98.24', '2017-04-07', '21:00:14'),
(96, '66.220.145.243', '2017-04-07', '21:00:16'),
(97, '190.44.168.249', '2017-04-07', '21:00:35'),
(98, '187.39.130.114', '2017-04-08', '04:06:23'),
(99, '95.27.74.4', '2017-04-08', '14:54:32'),
(100, '177.129.167.21', '2017-04-08', '17:15:22'),
(101, '187.183.172.95', '2017-04-08', '17:52:46'),
(102, '177.97.195.44', '2017-04-08', '18:52:22'),
(103, '89.145.95.78', '2017-04-08', '19:11:49'),
(104, '179.215.139.191', '2017-04-09', '02:26:11'),
(105, '89.145.95.78', '2017-04-09', '02:48:01'),
(106, '141.8.143.208', '2017-04-09', '03:56:24'),
(107, '187.55.29.94', '2017-04-09', '15:56:45'),
(108, '179.153.91.200', '2017-04-09', '16:03:27'),
(109, '187.114.125.242', '2017-04-09', '16:06:26'),
(110, '201.4.245.4', '2017-04-09', '16:41:11'),
(111, '138.121.213.88', '2017-04-09', '17:24:15'),
(112, '187.73.61.105', '2017-04-09', '17:58:44'),
(113, '170.233.196.104', '2017-04-09', '18:15:40'),
(114, '177.129.167.21', '2017-04-09', '19:03:44'),
(115, '177.74.130.75', '2017-04-09', '19:53:54'),
(116, '202.14.12.94', '2017-04-09', '22:36:52'),
(117, '89.145.95.74', '2017-04-09', '23:51:22'),
(118, '187.183.172.95', '2017-04-10', '00:05:58'),
(119, '52.91.222.105', '2017-04-10', '01:33:22'),
(120, '5.249.62.165', '2017-04-10', '01:51:59'),
(121, '177.138.172.194', '2017-04-10', '01:55:43'),
(122, '186.203.211.231', '2017-04-10', '01:59:08'),
(123, '170.244.195.30', '2017-04-10', '02:04:15'),
(124, '191.248.209.13', '2017-04-10', '02:32:30'),
(125, '167.250.27.6', '2017-04-10', '02:33:45'),
(126, '177.202.12.37', '2017-04-10', '02:49:55'),
(127, '83.132.123.247', '2017-04-10', '11:10:49'),
(128, '177.190.208.18', '2017-04-10', '12:03:01'),
(129, '187.182.146.213', '2017-04-10', '12:10:24'),
(130, '186.192.15.66', '2017-04-10', '13:41:16'),
(131, '177.223.13.22', '2017-04-10', '14:48:39'),
(132, '186.250.28.85', '2017-04-10', '15:07:32'),
(133, '202.14.12.94', '2017-04-10', '16:14:50'),
(134, '177.188.82.106', '2017-04-10', '16:54:47'),
(135, '184.173.200.19', '2017-04-10', '17:16:32'),
(136, '177.36.10.170', '2017-04-10', '19:18:51'),
(137, '189.4.157.245', '2017-04-11', '05:29:23'),
(138, '141.8.143.208', '2017-04-11', '10:01:48'),
(139, '5.255.250.55', '2017-04-11', '10:40:32'),
(140, '77.88.47.70', '2017-04-11', '15:14:53'),
(141, '187.183.172.95', '2017-04-11', '18:51:22'),
(142, '170.0.63.254', '2017-04-11', '19:42:34'),
(143, '131.255.157.82', '2017-04-11', '21:57:12'),
(144, '187.183.170.190', '2017-04-12', '10:38:34'),
(145, '191.251.224.244', '2017-04-12', '15:13:10'),
(146, '187.10.37.131', '2017-04-12', '19:18:50'),
(147, '179.198.146.120', '2017-04-12', '22:58:13'),
(148, '202.14.12.94', '2017-04-13', '02:35:03'),
(149, '179.34.232.6', '2017-04-13', '04:32:45'),
(150, '187.183.170.193', '2017-04-13', '13:06:59'),
(151, '52.4.48.181', '2017-04-13', '13:07:09'),
(152, '187.45.46.138', '2017-04-14', '04:03:12'),
(153, '179.215.139.191', '2017-04-14', '04:17:44'),
(154, '201.26.1.52', '2017-04-14', '04:39:10'),
(155, '189.106.123.208', '2017-04-14', '05:18:34'),
(156, '189.25.128.29', '2017-04-14', '10:08:19'),
(157, '187.41.191.44', '2017-04-14', '11:50:28'),
(158, '176.195.117.204', '2017-04-14', '12:47:47'),
(159, '187.183.170.193', '2017-04-14', '14:39:12'),
(160, '141.8.143.192', '2017-04-14', '16:21:20'),
(161, '202.14.12.94', '2017-04-14', '20:17:19'),
(162, '179.176.198.100', '2017-04-14', '20:18:59'),
(163, '177.16.57.62', '2017-04-14', '21:19:27'),
(164, '177.101.44.77', '2017-04-14', '23:52:24'),
(165, '187.183.169.194', '2017-04-15', '10:38:12'),
(166, '186.192.15.66', '2017-04-15', '17:58:06'),
(167, '186.192.15.66', '2017-04-16', '00:44:12'),
(168, '179.215.139.191', '2017-04-16', '02:42:07'),
(169, '141.8.143.208', '2017-04-16', '12:58:51'),
(170, '177.0.91.154', '2017-04-16', '13:39:16'),
(171, '187.183.169.194', '2017-04-16', '17:46:28'),
(172, '187.183.169.194', '2017-04-18', '01:19:26'),
(173, '54.173.35.129', '2017-04-18', '19:30:47'),
(174, '186.219.115.128', '2017-04-18', '21:32:08'),
(175, '177.124.119.53', '2017-04-18', '22:00:40'),
(176, '177.101.44.162', '2017-04-19', '00:32:46'),
(177, '189.74.99.189', '2017-04-19', '00:34:58'),
(178, '187.183.169.194', '2017-04-19', '14:17:57'),
(179, '109.63.202.240', '2017-04-20', '09:44:27'),
(180, '179.198.146.120', '2017-04-20', '15:57:32'),
(181, '189.71.46.135', '2017-04-20', '19:21:45'),
(182, '187.183.170.219', '2017-04-20', '20:36:47'),
(183, '179.198.146.120', '2017-04-21', '00:45:04'),
(184, '177.86.32.43', '2017-04-21', '21:17:47'),
(185, '187.123.19.153', '2017-04-21', '23:14:13'),
(186, '191.222.246.243', '2017-04-22', '17:51:56'),
(187, '78.132.83.37', '2017-04-23', '00:46:40'),
(188, '187.183.169.178', '2017-04-25', '16:13:25'),
(189, '191.254.33.195', '2017-04-27', '02:42:02'),
(190, '187.183.169.178', '2017-04-27', '17:04:17'),
(191, '179.183.46.241', '2017-04-28', '00:08:24'),
(192, '177.42.209.235', '2017-04-28', '01:21:23'),
(193, '187.20.6.155', '2017-04-28', '07:55:27'),
(194, '187.34.54.20', '2017-04-28', '13:43:16'),
(195, '187.183.169.178', '2017-04-28', '17:19:38'),
(196, '177.101.44.77', '2017-04-28', '19:06:47'),
(197, '177.68.233.22', '2017-04-28', '22:37:06'),
(198, '177.1.126.149', '2017-04-29', '04:30:01'),
(199, '187.183.169.178', '2017-04-29', '12:24:39'),
(200, '186.250.57.44', '2017-04-29', '22:34:57'),
(201, '177.86.34.106', '2017-04-30', '13:10:46'),
(202, '187.182.146.213', '2017-04-30', '13:52:26'),
(203, '138.0.224.117', '2017-04-30', '14:03:20'),
(204, '179.233.167.94', '2017-04-30', '14:16:46'),
(205, '104.154.65.154', '2017-04-30', '14:24:30'),
(206, '187.52.81.48', '2017-04-30', '14:27:06'),
(207, '177.129.167.21', '2017-04-30', '14:31:16'),
(208, '189.105.52.184', '2017-04-30', '15:49:40'),
(209, '179.215.139.191', '2017-04-30', '16:41:03'),
(210, '217.129.161.67', '2017-04-30', '17:46:21'),
(211, '177.101.44.77', '2017-04-30', '20:07:09'),
(212, '94.62.249.249', '2017-05-01', '13:14:35'),
(213, '189.25.80.201', '2017-05-01', '14:25:53'),
(214, '186.210.169.33', '2017-05-01', '14:56:57'),
(215, '167.249.109.132', '2017-05-01', '15:24:40'),
(216, '187.183.173.28', '2017-05-01', '16:09:44'),
(217, '177.86.34.106', '2017-05-01', '16:12:29'),
(218, '95.92.11.98', '2017-05-01', '16:13:55'),
(219, '191.251.81.154', '2017-05-01', '16:15:46');

-- --------------------------------------------------------

--
-- Estrutura da tabela `noticias`
--

CREATE TABLE `noticias` (
  `id` int(11) NOT NULL,
  `autor` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `titulo` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `resumen` varchar(126) COLLATE utf8_unicode_ci NOT NULL,
  `categoria` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `fecha` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `imagen` varchar(4000) COLLATE utf8_unicode_ci NOT NULL,
  `noticia` varchar(4000) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `noticias`
--

INSERT INTO `noticias` (`id`, `autor`, `titulo`, `resumen`, `categoria`, `fecha`, `imagen`, `noticia`) VALUES
(1, 'ruanhop@', 'Ganhe emblema Guerreira indígena | HabboNight', 'Último emblema na aventura de El Dourado!', 'Eventos', '2017-04-02', 'http://i.imgur.com/SVcOzQS.png', '<p><img alt=\"http://i.imgur.com/SVcOzQS.png\" class=\"transparent fr-dii fr-draggable\" src=\"http://i.imgur.com/SVcOzQS.png\"></p><p><br></p><p><strong>&Uacute;ltimo emblema na aventura de El Dourado!</strong><br><br><a name=\"more\"></a><strong>*Emblema dispon&iacute;vel at&eacute; o dia 03/04/2017 ( Segunda-feira ).</strong><br><br><strong>*Cr&eacute;ditos as imagens a HabboNight.<br><br><br></strong><strong>1&deg; Passo:&nbsp;</strong>Acesse o quarto abaixo:<br><br><br><strong>Quarto: <a href=\"https://www.habbo.com.br/hotel?room=139518683\" target=\"_blank\">[HN] Eldorado, a cidade Lend&aacute;ria</a></strong><br><br><strong>Propriet&aacute;rio: NightPromotor</strong></p><p><br><strong>2&deg; Passo:&nbsp;</strong>Fale &quot;<strong>tele4</strong>&quot; e, em seguida, entre no tele &quot;Teleporte Imperial&quot; como mostrado na imagem abaixo.<br><br><strong>*O quarto n&atilde;o tem fila invis&iacute;vel, ent&agrave;o, pesquise por NightPromotor para conferir se o quarto se encontra lotado antes de entrar no tele.</strong></p><p><br><strong>3&deg; Passo:&nbsp;</strong>Aguarde a sua vez na fila de rollers.<br><br><br><img alt=\"http://i.imgur.com/fhN79w2.png\" class=\"transparent fr-dii fr-draggable\" src=\"http://imgur.com/RnvggHq.png\"><br><br><br><strong>4&deg; Passo:&nbsp;</strong>Quando chegar a sua vez, o objetivo &eacute;, empurrar a &quot;Caixa Puzzle&quot; at&eacute; o &quot;Piso de seta&quot;, sabendo que&#39; ao passar pelo 1&deg; roller o &quot;Poste Caveira&quot; ir&aacute; come&ccedil;ar a te perseguir.<br><br><strong>*O tempo &eacute; de 30 segundos al&eacute;m do Poste Caveira te expulsar caso encoste nele.</strong><br><br><strong>*Para empurrar a &quot;Caixa Puzzle&quot; clique duas vezes nela ou clique na mesma, e no mesmo segundo, aperte Shift no teclado.</strong><br><br><br><img alt=\"http://i.imgur.com/36FkWvp.png\" class=\"transparent fr-dii fr-draggable\" src=\"http://imgur.com/ii8ENLr.png\"><br><br><br><strong>5&deg; Passo:&nbsp;</strong>Ao conseguir automaticamente voc&ecirc; ser&aacute; teleportado ao outro lado do quarto, local onde, voc&ecirc; deve entrar no tele &quot;Teleporte Portas do Habbo Shopping&quot; para ser redirecionado a sala &nbsp;de premia&ccedil;&atilde;o como mostrado na imagem abaixo.<br><br><br><br><img alt=\"http://i.imgur.com/HJPPTgx.png\" class=\"transparent fr-dii fr-draggable\" src=\"http://imgur.com/sSDwjUF.png\"><br><br><strong>6&deg; Passo:&nbsp;</strong>Acesse o tele &quot;Teleporte do S&oacute;t&atilde;o&quot; para receber seu emblema.<br><br><br><img src=\"http://i.imgur.com/YUIKw3M.png\" class=\"fr-dii fr-draggable\"><br><br><br><strong>7&deg; Passo:&nbsp;</strong>Automaticamente voc&ecirc; receber&aacute; o emblema abaixo:<br><br><br><br><img alt=\"https://habboo-a.akamaihd.net/c_images/album1584/PT270.gif\" class=\"transparent fr-dii fr-draggable\" src=\"https://habboo-a.akamaihd.net/c_images/album1584/PT270.gif\"><br><br><strong>Nome:&nbsp;</strong>Guerreira ind&iacute;gena<br><br><strong>Descri&ccedil;&atilde;o:&nbsp;</strong>Ela pode recuar, mudar de estrat&eacute;gia e voltar &agrave; batalha, mas desistir nunca!<br><br><strong>C&oacute;digo: PT270</strong></p>');

-- --------------------------------------------------------

--
-- Estrutura da tabela `placas`
--

CREATE TABLE `placas` (
  `id` int(11) NOT NULL,
  `code` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `imagen` varchar(4000) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `placas`
--

INSERT INTO `placas` (`id`, `code`, `imagen`) VALUES
(13, 'UK758', 'http://habboo-a.akamaihd.net/c_images/album1584/UK758.gif'),
(2, 'PT106', 'http://habboo-a.akamaihd.net/c_images/album1584/PT106.gif'),
(3, 'UK731', 'http://habboo-a.akamaihd.net/c_images/album1584/UK731.gif'),
(4, 'NL233', 'http://habboo-a.akamaihd.net/c_images/album1584/NL233.gif'),
(6, 'ITB60', 'http://habboo-a.akamaihd.net/c_images/album1584/ITB60.gif'),
(7, 'IT948', 'http://habboo-a.akamaihd.net/c_images/album1584/IT948.gif'),
(8, 'FR721', 'http://habboo-a.akamaihd.net/c_images/album1584/FR721.gif'),
(9, 'FI127', 'http://habboo-a.akamaihd.net/c_images/album1584/FI127.gif'),
(10, 'UK726', 'http://habboo-a.akamaihd.net/c_images/album1584/UK726.gif'),
(12, 'UK751', 'http://habboo-a.akamaihd.net/c_images/album1584/UK751.gif'),
(14, 'UK752', 'http://habboo-a.akamaihd.net/c_images/album1584/UK752.gif'),
(15, 'FR401', 'http://habboo-a.akamaihd.net/c_images/album1584/FR401.gif'),
(16, 'IT738', 'http://habboo-a.akamaihd.net/c_images/album1584/IT738.gif'),
(17, 'X1614', 'http://habboo-a.akamaihd.net/c_images/album1584/X1614.gif'),
(18, 'ITA48', 'http://habboo-a.akamaihd.net/c_images/album1584/ITA48.gif'),
(19, 'PT270', 'https://habboo-a.akamaihd.net/c_images/album1584/PT270.gif'),
(20, 'DE67A', 'https://habboo-a.akamaihd.net/c_images/album1584/DE67A.gif'),
(21, 'ITC25', 'https://habboo-a.akamaihd.net/c_images/album1584/ITC25.gif'),
(22, 'ES32C', 'https://habboo-a.akamaihd.net/c_images/album1584/ES32C.gif'),
(23, 'FR998', 'https://habboo-a.akamaihd.net/c_images/album1584/FR998.gif'),
(24, 'UK308', 'https://habboo-a.akamaihd.net/c_images/album1584/UK308.gif'),
(25, 'http://images.habbo.com/c_images/album1584/PT271.gif', 'http://images.habbo.com/c_images/album1584/PT271.gif');

-- --------------------------------------------------------

--
-- Estrutura da tabela `rangos`
--

CREATE TABLE `rangos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `mision` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `rangos`
--

INSERT INTO `rangos` (`id`, `nombre`, `mision`, `color`) VALUES
(1, 'user', 'ninguna', ''),
(2, 'VIP', 'Usuário Exclusivo', 'orange'),
(3, 'Moderador', 'Modera todo comportamento dentro do site', 'rosa'),
(4, 'Game Master', 'Criador de jogos e eventos', 'red'),
(5, 'Reporter', 'Criador de notícias', 'orange'),
(6, 'Administrador', 'Administrador do Site', 'oscuro'),
(7, 'Fundador', 'Criador & Fundador do site', 'blue');

-- --------------------------------------------------------

--
-- Estrutura da tabela `reportes`
--

CREATE TABLE `reportes` (
  `id` int(9) UNSIGNED NOT NULL,
  `user_enviado` varchar(180) DEFAULT NULL,
  `user_reportado` varchar(180) DEFAULT NULL,
  `mensaje` varchar(180) DEFAULT NULL,
  `tipo` varchar(180) DEFAULT NULL,
  `estado` varchar(180) DEFAULT NULL,
  `fecha_i` varchar(180) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `secciones_furnis`
--

CREATE TABLE `secciones_furnis` (
  `id` int(9) UNSIGNED NOT NULL,
  `nombre` varchar(180) DEFAULT NULL,
  `tipo_n` varchar(180) DEFAULT NULL,
  `url_seccion` varchar(180) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `secciones_furnis`
--

INSERT INTO `secciones_furnis` (`id`, `nombre`, `tipo_n`, `url_seccion`) VALUES
(1, 'Rares unicos', '1', 'rares-unicos'),
(2, 'rares_2', '2', 'rares-2'),
(3, 'rares_3', '3', 'rares-3'),
(4, 'rares_4', '4', 'rares-4'),
(5, 'Hola', '5', 'Hola-esta-es-una-url-realmente-estupida');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tienda`
--

CREATE TABLE `tienda` (
  `id` int(9) UNSIGNED NOT NULL,
  `code_placa` varchar(180) DEFAULT NULL,
  `precio` varchar(180) DEFAULT NULL,
  `unidades` varchar(180) DEFAULT NULL,
  `icono` varchar(180) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tienda`
--

INSERT INTO `tienda` (`id`, `code_placa`, `precio`, `unidades`, `icono`) VALUES
(1, 'UK758', '100', '24', 'creditos'),
(2, 'PT106', '250', '18', 'creditos'),
(3, 'IT738', '30', '9', 'diamantes'),
(4, 'UK751', '150', '27', 'creditos'),
(5, 'UK752', '40', '16', 'diamantes'),
(6, 'FI127', '20', '38', 'diamantes'),
(7, 'FR401', '20', '36', 'diamantes'),
(8, 'UK726', '40', '48', 'creditos'),
(9, 'ITA48', '70', '93', 'creditos');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `ID` int(9) UNSIGNED NOT NULL,
  `username` varchar(12) DEFAULT NULL,
  `password` varchar(180) DEFAULT NULL,
  `email` varchar(180) DEFAULT NULL,
  `fecha` varchar(12) NOT NULL,
  `rank` varchar(2) NOT NULL DEFAULT '1',
  `pin` varchar(4) NOT NULL,
  `id_extreme` varchar(180) DEFAULT NULL,
  `avatar` varchar(4000) NOT NULL DEFAULT 'images/avatars/anonimo.jpg',
  `portada` varchar(4000) NOT NULL DEFAULT 'http://i.imgur.com/EPmYseB.png',
  `creditos` varchar(4000) NOT NULL DEFAULT '500',
  `diamantes` varchar(4000) NOT NULL DEFAULT '100',
  `ip` varchar(500) NOT NULL,
  `nombre` varchar(120) NOT NULL DEFAULT 'No especificado',
  `apellido` varchar(120) NOT NULL DEFAULT 'No especificado',
  `pais` varchar(120) NOT NULL DEFAULT 'No especificado',
  `ban` varchar(20) NOT NULL DEFAULT '0',
  `ban_i` varchar(20) NOT NULL DEFAULT '0',
  `ban_f` varchar(20) NOT NULL DEFAULT '0',
  `mostraremail` varchar(50) NOT NULL DEFAULT 'No',
  `mostrarnombreapellido` varchar(50) NOT NULL DEFAULT 'No',
  `mostrarpais` varchar(50) NOT NULL DEFAULT 'No',
  `seguridad_ip` varchar(10) NOT NULL DEFAULT 'No'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`ID`, `username`, `password`, `email`, `fecha`, `rank`, `pin`, `id_extreme`, `avatar`, `portada`, `creditos`, `diamantes`, `ip`, `nombre`, `apellido`, `pais`, `ban`, `ban_i`, `ban_f`, `mostraremail`, `mostrarnombreapellido`, `mostrarpais`, `seguridad_ip`) VALUES
(1, 'ruanhop@', 'dfcede24b4748943339a6dcc5d50f4c9', 'kyosanbr@gmail.com', '02/04/17', '7', '', NULL, 'http://i.imgur.com/Vh7j1UE.jpg', 'http://i.imgur.com/EPmYseB.png', '180', '10', '187.183.173.28', 'Ruan Alcantara', 'ruanhop@', 'Brasil', '0', '0', '0', 'Não', 'Não', 'Não', 'Não'),
(2, 'Luanzin', 'e8cf796cab1366da2847d5c6061b18d3', 'designteambr@gmail.com', '02/04/17', '1', '', NULL, '/images/avatars/L.png', 'http://i.imgur.com/EPmYseB.png', '140', '20', '179.110.112.115', 'No especificado', 'No especificado', 'No especificado', '0', '0', '0', 'No', 'No', 'No', 'No'),
(3, 'Teach', '85419fd18d9da315fda5447e6fe877b8', 'teach@gmail.com', '04/04/17', '1', '', NULL, '/images/avatars/T.png', 'http://i.imgur.com/EPmYseB.png', '500', '100', '168.194.20.6', 'No especificado', 'No especificado', 'No especificado', '0', '0', '0', 'No', 'No', 'No', 'No'),
(4, 'Egidio', '0efe094fd0800ab6047b1a2983869f8f', 'dicarmo@live.com', '06/04/17', '1', '', NULL, '/images/avatars/E.png', 'http://i.imgur.com/EPmYseB.png', '500', '100', '177.44.31.124', 'No especificado', 'No especificado', 'No especificado', '0', '0', '0', 'No', 'No', 'No', 'No'),
(5, 'Offer', '8cc6cf4d039e8144e826b7c4a83fcdd3', '111@ci.cu', '07/04/17', '1', '', NULL, '/images/avatars/O.png', 'http://i.imgur.com/EPmYseB.png', '390', '80', '187.127.184.114', 'No especificado', 'No especificado', 'No especificado', '0', '0', '0', 'No', 'No', 'No', 'No'),
(6, 'Vipper', '6d3ac657da90bca9c612d0537a3d9d32', 'guilhermesantana3210@gmail.com', '09/04/17', '1', '', NULL, '/images/avatars/V.png', 'http://i.imgur.com/EPmYseB.png', '500', '100', '201.4.245.4', 'No especificado', 'No especificado', 'No especificado', '0', '0', '0', 'No', 'No', 'No', 'No'),
(7, 'wilvp', '3be99d5eb00d0d3a0bb6071de78157a2', 'wildavp@hotmail.com', '10/04/17', '1', '', NULL, '/images/avatars/W.png', 'http://i.imgur.com/EPmYseB.png', '430', '100', '177.138.172.194', 'No especificado', 'No especificado', 'No especificado', '0', '0', '0', 'No', 'No', 'No', 'No');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios_amigos`
--

CREATE TABLE `usuarios_amigos` (
  `id` int(9) UNSIGNED NOT NULL,
  `user` varchar(180) DEFAULT NULL,
  `user_amigo` varchar(180) DEFAULT NULL,
  `estado_solicitud` varchar(180) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuarios_amigos`
--

INSERT INTO `usuarios_amigos` (`id`, `user`, `user_amigo`, `estado_solicitud`) VALUES
(1, 'ruanhop@', 'Luanzin', 'Pendiente');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios_mensajes_privados`
--

CREATE TABLE `usuarios_mensajes_privados` (
  `id` int(9) UNSIGNED NOT NULL,
  `user_enviado` varchar(180) DEFAULT NULL,
  `user_recibido` varchar(180) DEFAULT NULL,
  `asunto` varchar(180) DEFAULT NULL,
  `mensaje` varchar(180) DEFAULT NULL,
  `fecha` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios_placas`
--

CREATE TABLE `usuarios_placas` (
  `id` int(9) UNSIGNED NOT NULL,
  `username` varchar(180) DEFAULT NULL,
  `code_placa` varchar(180) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuarios_placas`
--

INSERT INTO `usuarios_placas` (`id`, `username`, `code_placa`) VALUES
(1, 'ruanhop@', 'ITA48'),
(2, 'ruanhop@', 'UK758'),
(3, 'Luanzin', 'ITA48'),
(4, 'Luanzin', 'UK726'),
(5, 'Luanzin', 'FR401'),
(6, 'Luanzin', 'FI127'),
(7, 'Luanzin', 'UK752'),
(8, 'Luanzin', 'UK751'),
(9, 'Luanzin', 'UK758'),
(10, 'Offer', 'UK726'),
(11, 'Offer', 'ITA48'),
(12, 'Offer', 'FR401'),
(13, 'wilvp', 'ITA48'),
(14, 'ruanhop@', 'FR401'),
(15, 'ruanhop@', 'UK752'),
(16, 'ruanhop@', 'UK751'),
(17, 'ruanhop@', 'IT738');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios_regalos`
--

CREATE TABLE `usuarios_regalos` (
  `id` int(9) UNSIGNED NOT NULL,
  `user_enviado` varchar(180) DEFAULT NULL,
  `user_recibido` varchar(180) DEFAULT NULL,
  `asunto_regalo` varchar(200) NOT NULL,
  `mensaje_regalo` varchar(200) NOT NULL,
  `fecha` varchar(200) NOT NULL,
  `code_placa` varchar(180) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `baneo`
--
ALTER TABLE `baneo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eventos`
--
ALTER TABLE `eventos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `furnis`
--
ALTER TABLE `furnis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logs_sospechosos`
--
ALTER TABLE `logs_sospechosos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logs_visitantes`
--
ALTER TABLE `logs_visitantes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `noticias`
--
ALTER TABLE `noticias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `placas`
--
ALTER TABLE `placas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rangos`
--
ALTER TABLE `rangos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reportes`
--
ALTER TABLE `reportes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `secciones_furnis`
--
ALTER TABLE `secciones_furnis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tienda`
--
ALTER TABLE `tienda`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `usuarios_amigos`
--
ALTER TABLE `usuarios_amigos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usuarios_mensajes_privados`
--
ALTER TABLE `usuarios_mensajes_privados`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usuarios_placas`
--
ALTER TABLE `usuarios_placas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usuarios_regalos`
--
ALTER TABLE `usuarios_regalos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `baneo`
--
ALTER TABLE `baneo`
  MODIFY `id` int(9) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `config`
--
ALTER TABLE `config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `eventos`
--
ALTER TABLE `eventos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `furnis`
--
ALTER TABLE `furnis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(9) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `logs_sospechosos`
--
ALTER TABLE `logs_sospechosos`
  MODIFY `id` int(9) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `logs_visitantes`
--
ALTER TABLE `logs_visitantes`
  MODIFY `id` int(9) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;

--
-- AUTO_INCREMENT for table `noticias`
--
ALTER TABLE `noticias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `placas`
--
ALTER TABLE `placas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `rangos`
--
ALTER TABLE `rangos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `reportes`
--
ALTER TABLE `reportes`
  MODIFY `id` int(9) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `secciones_furnis`
--
ALTER TABLE `secciones_furnis`
  MODIFY `id` int(9) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tienda`
--
ALTER TABLE `tienda`
  MODIFY `id` int(9) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `ID` int(9) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `usuarios_amigos`
--
ALTER TABLE `usuarios_amigos`
  MODIFY `id` int(9) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `usuarios_mensajes_privados`
--
ALTER TABLE `usuarios_mensajes_privados`
  MODIFY `id` int(9) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `usuarios_placas`
--
ALTER TABLE `usuarios_placas`
  MODIFY `id` int(9) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `usuarios_regalos`
--
ALTER TABLE `usuarios_regalos`
  MODIFY `id` int(9) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `novobc`
--
CREATE DATABASE IF NOT EXISTS `novobc` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `novobc`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `categnoticias`
--

CREATE TABLE `categnoticias` (
  `id` int(11) NOT NULL,
  `categoria` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `categnoticias`
--

INSERT INTO `categnoticias` (`id`, `categoria`) VALUES
(1, 'Atualizações'),
(2, 'NPanel'),
(3, 'Novidades'),
(4, 'Fofocas');

-- --------------------------------------------------------

--
-- Estrutura da tabela `niveis_acessos`
--

CREATE TABLE `niveis_acessos` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `niveis_acessos`
--

INSERT INTO `niveis_acessos` (`id`, `nome`, `created`, `modified`) VALUES
(1, 'Administrador', '2016-02-19 00:00:00', NULL),
(2, 'Colaborador', '2016-02-19 00:00:00', NULL),
(3, 'Cliente', '2016-02-19 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `noticias`
--

CREATE TABLE `noticias` (
  `id` int(11) NOT NULL,
  `autor` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `titulo` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `resumotitulo` varchar(126) COLLATE utf8_unicode_ci NOT NULL,
  `categoria` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `data` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `imagem` varchar(4000) COLLATE utf8_unicode_ci NOT NULL,
  `noticia` varchar(4000) COLLATE utf8_unicode_ci NOT NULL,
  `likes` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `deslikes` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(220) NOT NULL,
  `email` varchar(520) NOT NULL,
  `senha` varchar(50) NOT NULL,
  `situacoe_id` int(11) NOT NULL DEFAULT '0',
  `niveis_acesso_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  `nick` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `email`, `senha`, `situacoe_id`, `niveis_acesso_id`, `created`, `modified`, `nick`) VALUES
(1, 'Nícollas Silva', 'inicollashps@gmail.com', '202cb962ac59075b964b07152d234b70', 1, 1, '2019-03-08 20:08:44', NULL, 'Koovit'),
(2, 'iNicollas', 'lyod.hp@gmail.com', 'bcbe3365e6ac95ea2c0343a2395834dd', 1, 1, '2019-03-13 23:46:00', NULL, 'Acistir');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `niveis_acessos`
--
ALTER TABLE `niveis_acessos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `niveis_acessos`
--
ALTER TABLE `niveis_acessos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Extraindo dados da tabela `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'server', 'flyinghb', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"db_select[]\":[\"flyinghb\",\"habbomaniaid\",\"novobc\",\"phpmyadmin\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@SERVER@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"estructura da tabela @TABLE@\",\"latex_structure_continued_caption\":\"estructura da tabela @TABLE@ (continuação)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Conteúdo da tabela @TABLE@\",\"latex_data_continued_caption\":\"Conteúdo da tabela @TABLE@ (continuação)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"yaml_structure_or_data\":\"data\",\"\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}'),
(2, 'root', 'database', 'novobc', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"structure_or_data_forced\":\"0\",\"table_select[]\":[\"niveis_acessos\",\"usuarios\"],\"table_structure[]\":[\"niveis_acessos\",\"usuarios\"],\"table_data[]\":[\"niveis_acessos\",\"usuarios\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@DATABASE@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"estructura da tabela @TABLE@\",\"latex_structure_continued_caption\":\"estructura da tabela @TABLE@ (continuação)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Conteúdo da tabela @TABLE@\",\"latex_data_continued_caption\":\"Conteúdo da tabela @TABLE@ (continuação)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"structure_and_data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"structure_and_data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_procedure_function\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"xml_structure_or_data\":\"data\",\"xml_export_events\":\"something\",\"xml_export_functions\":\"something\",\"xml_export_procedures\":\"something\",\"xml_export_tables\":\"something\",\"xml_export_triggers\":\"something\",\"xml_export_views\":\"something\",\"xml_export_contents\":\"something\",\"yaml_structure_or_data\":\"data\",\"\":null,\"lock_tables\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_create_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}'),
(3, 'root', 'table', 'novobc', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"allrows\":\"1\",\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@TABLE@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"estructura da tabela @TABLE@\",\"latex_structure_continued_caption\":\"estructura da tabela @TABLE@ (continuação)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Conteúdo da tabela @TABLE@\",\"latex_data_continued_caption\":\"Conteúdo da tabela @TABLE@ (continuação)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"xml_structure_or_data\":\"data\",\"xml_export_events\":\"something\",\"xml_export_functions\":\"something\",\"xml_export_procedures\":\"something\",\"xml_export_tables\":\"something\",\"xml_export_triggers\":\"something\",\"xml_export_views\":\"something\",\"xml_export_contents\":\"something\",\"yaml_structure_or_data\":\"data\",\"\":null,\"lock_tables\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}'),
(4, 'root', 'server', 'novobc', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"db_select[]\":[\"flyinghb\",\"habbomaniaid\",\"novobc\",\"phpmyadmin\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@SERVER@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"estructura da tabela @TABLE@\",\"latex_structure_continued_caption\":\"estructura da tabela @TABLE@ (continuação)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Conteúdo da tabela @TABLE@\",\"latex_data_continued_caption\":\"Conteúdo da tabela @TABLE@ (continuação)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"yaml_structure_or_data\":\"data\",\"\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Extraindo dados da tabela `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"novobc\",\"table\":\"noticias\"},{\"db\":\"novobc\",\"table\":\"categnoticias\"},{\"db\":\"novobc\",\"table\":\"niveis_acessos\"},{\"db\":\"novobc\",\"table\":\"usuarios\"},{\"db\":\"flyinghb\",\"table\":\"usuarios\"},{\"db\":\"flyinghb\",\"table\":\"denuncias\"},{\"db\":\"flyinghb\",\"table\":\"slides\"},{\"db\":\"flyinghb\",\"table\":\"niveis_acessos\"},{\"db\":\"maniahb2\",\"table\":\"config\"},{\"db\":\"habbomania\",\"table\":\"connexion\"}]');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Extraindo dados da tabela `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2019-03-14 23:48:44', '{\"collation_connection\":\"utf8mb4_unicode_ci\",\"lang\":\"pt\",\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
