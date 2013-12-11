/*
Navicat MySQL Data Transfer

Source Server         : Laptop
Source Server Version : 50522
Source Host           : 192.168.1.70:3306
Source Database       : chapulhuacan

Target Server Type    : MYSQL
Target Server Version : 50522
File Encoding         : 65001

Date: 2013-12-10 22:20:05
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `cliente`
-- ----------------------------
DROP TABLE IF EXISTS `cliente`;
CREATE TABLE `cliente` (
  `idcliente` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) COLLATE latin1_spanish_ci DEFAULT NULL,
  `domicilio` varchar(45) COLLATE latin1_spanish_ci DEFAULT NULL,
  `telefono` varchar(45) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`idcliente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- ----------------------------
-- Records of cliente
-- ----------------------------

-- ----------------------------
-- Table structure for `cliente_garantia`
-- ----------------------------
DROP TABLE IF EXISTS `cliente_garantia`;
CREATE TABLE `cliente_garantia` (
  `idCliente_garantia` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_cliente` varchar(50) COLLATE latin1_spanish_ci DEFAULT NULL,
  `telefono_contacto` varchar(45) COLLATE latin1_spanish_ci DEFAULT NULL,
  `idequipo_garantia` int(11) DEFAULT NULL,
  PRIMARY KEY (`idCliente_garantia`),
  KEY `idequipo_garantia_idx` (`idequipo_garantia`),
  CONSTRAINT `idequipo_garantia` FOREIGN KEY (`idequipo_garantia`) REFERENCES `equipo_garantia` (`idequipo_garantia`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci COMMENT='Datos con clientes que metieron sus celulares a garantia';

-- ----------------------------
-- Records of cliente_garantia
-- ----------------------------
INSERT INTO `cliente_garantia` VALUES ('1', 'Juanito Perez', '483 37 8 200 08', '1');
INSERT INTO `cliente_garantia` VALUES ('2', 'Juanito Gonzales', '4567891', '2');
INSERT INTO `cliente_garantia` VALUES ('3', 'Christian Castillo', '7712143295', '3');
INSERT INTO `cliente_garantia` VALUES ('4', '', '', '4');
INSERT INTO `cliente_garantia` VALUES ('5', 'Christian Yamil Castillo', '4833782032', '5');
INSERT INTO `cliente_garantia` VALUES ('6', '', '', '9');
INSERT INTO `cliente_garantia` VALUES ('7', 'Pedro', '1890', '10');
INSERT INTO `cliente_garantia` VALUES ('8', 'Pedro', '1890', '11');
INSERT INTO `cliente_garantia` VALUES ('9', 'Pedro', '1890', '12');
INSERT INTO `cliente_garantia` VALUES ('10', 'Lety Covarrubias López', '4833782008', '13');

-- ----------------------------
-- Table structure for `cliente_reparacion`
-- ----------------------------
DROP TABLE IF EXISTS `cliente_reparacion`;
CREATE TABLE `cliente_reparacion` (
  `idCliente_reparacion` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_cliente` varchar(50) COLLATE latin1_spanish_ci DEFAULT NULL,
  `telefono_contacto` varchar(45) COLLATE latin1_spanish_ci DEFAULT NULL,
  `idequipo_reparacion` int(11) DEFAULT NULL,
  PRIMARY KEY (`idCliente_reparacion`),
  KEY `idequipo_reparacion_idx` (`idequipo_reparacion`),
  CONSTRAINT `idequipo_reparacion` FOREIGN KEY (`idequipo_reparacion`) REFERENCES `equipo_reparacion` (`idequipo_reparacion`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci COMMENT='clientes con equipos en reparacion';

-- ----------------------------
-- Records of cliente_reparacion
-- ----------------------------

-- ----------------------------
-- Table structure for `codigo_recarga`
-- ----------------------------
DROP TABLE IF EXISTS `codigo_recarga`;
CREATE TABLE `codigo_recarga` (
  `idcodigo_recarga` int(11) NOT NULL AUTO_INCREMENT,
  `codigo_recarga` varchar(45) COLLATE latin1_spanish_ci DEFAULT NULL,
  `celular` varchar(45) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`idcodigo_recarga`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- ----------------------------
-- Records of codigo_recarga
-- ----------------------------

-- ----------------------------
-- Table structure for `empleado`
-- ----------------------------
DROP TABLE IF EXISTS `empleado`;
CREATE TABLE `empleado` (
  `idempleado` int(11) NOT NULL AUTO_INCREMENT,
  `empleado` varchar(45) COLLATE latin1_spanish_ci DEFAULT NULL,
  `password` varchar(45) COLLATE latin1_spanish_ci DEFAULT NULL,
  `idsucursal` int(11) DEFAULT NULL,
  PRIMARY KEY (`idempleado`),
  KEY `FK_U_SUC_idx` (`idsucursal`),
  CONSTRAINT `FK_U_SUC` FOREIGN KEY (`idsucursal`) REFERENCES `sucursal` (`idsucursal`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- ----------------------------
-- Records of empleado
-- ----------------------------
INSERT INTO `empleado` VALUES ('1', 'usuario', 'usuario', '1');
INSERT INTO `empleado` VALUES ('10', null, null, null);
INSERT INTO `empleado` VALUES ('11', 'Christian', '7ff135854376850e9711bd75ce942e07', '2');
INSERT INTO `empleado` VALUES ('12', 'Paola', '72a86026abb289634ec64d7f3b544f0c', '1');

-- ----------------------------
-- Table structure for `empleado_movimiento`
-- ----------------------------
DROP TABLE IF EXISTS `empleado_movimiento`;
CREATE TABLE `empleado_movimiento` (
  `idempleado_movimiento` int(11) NOT NULL AUTO_INCREMENT,
  `movimiento` varchar(150) COLLATE latin1_spanish_ci DEFAULT NULL,
  `movimiento_detalles` varchar(200) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`idempleado_movimiento`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- ----------------------------
-- Records of empleado_movimiento
-- ----------------------------
INSERT INTO `empleado_movimiento` VALUES ('1', 'Intento de conexión a la BD.', 'Se realizó un intento fallido el día 01/12/2013.');
INSERT INTO `empleado_movimiento` VALUES ('2', 'Intento de login fallido.', 'El usuario 1 ingreso datos incorrectos.');
INSERT INTO `empleado_movimiento` VALUES ('3', 'Intento de login fallido.', 'El usuario usuario ingreso datos incorrectos.');
INSERT INTO `empleado_movimiento` VALUES ('4', 'Intento de conexión a la BD.', 'Se realizó un intento fallido el día 01/12/2013.');
INSERT INTO `empleado_movimiento` VALUES ('5', 'Intento de conexión a la BD.', 'Se realizó un intento fallido el día 01/12/2013.');
INSERT INTO `empleado_movimiento` VALUES ('6', 'Intento de conexión a la BD.', 'Se realizó un intento fallido el día 01/12/2013.');
INSERT INTO `empleado_movimiento` VALUES ('7', 'Intento de login fallido.', 'El usuario: 1, ingreso datos incorrectos.');
INSERT INTO `empleado_movimiento` VALUES ('8', 'Intento de login fallido.', 'El usuario: 1, ingreso datos incorrectos.');
INSERT INTO `empleado_movimiento` VALUES ('9', 'Intento de login fallido.', 'El usuario: 1, ingreso datos incorrectos.');
INSERT INTO `empleado_movimiento` VALUES ('10', 'Intento de login fallido.', 'El usuario: usuario, ingreso datos incorrectos.');
INSERT INTO `empleado_movimiento` VALUES ('11', 'Intento de login fallido.', 'El usuario: 1, ingreso datos incorrectos.');
INSERT INTO `empleado_movimiento` VALUES ('12', 'Intento de login fallido.', 'El usuario: 1, ingreso datos incorrectos.');
INSERT INTO `empleado_movimiento` VALUES ('13', 'Intento de login fallido.', 'El usuario: 1, ingreso datos incorrectos.');
INSERT INTO `empleado_movimiento` VALUES ('14', 'Intento de login fallido.', 'El usuario: 1, ingreso datos incorrectos.');
INSERT INTO `empleado_movimiento` VALUES ('15', 'Intento de login fallido.', 'El usuario: 1, ingreso datos incorrectos.');
INSERT INTO `empleado_movimiento` VALUES ('16', 'Intento de login fallido.', 'El usuario: 1, ingreso datos incorrectos.');
INSERT INTO `empleado_movimiento` VALUES ('17', 'Intento de login fallido.', 'El usuario: 1, ingreso datos incorrectos.');
INSERT INTO `empleado_movimiento` VALUES ('18', 'Intento de login fallido.', 'El usuario: 1, ingreso datos incorrectos.');
INSERT INTO `empleado_movimiento` VALUES ('19', 'Error al ingresar datos del cliente: Espacios vacios', 'El usuario usuario intento realizar una venta sin llenar algunos campos.');
INSERT INTO `empleado_movimiento` VALUES ('20', 'Error al ingresar datos del cliente: Espacios vacios', 'El usuario usuario ha realizado una venta: C700, Nokia.');
INSERT INTO `empleado_movimiento` VALUES ('21', 'Venta realizada', 'El usuario usuario ha realizado una venta: C700, Nokia. el dia 03/12/2013');
INSERT INTO `empleado_movimiento` VALUES ('22', 'Venta realizada', 'El usuario usuario ha realizado una venta: C700, Nokia. el dia 04/12/2013');
INSERT INTO `empleado_movimiento` VALUES ('23', 'Se agrego equipo a garantia.', 'El empleado usuario dio de alta un equipo en garantia, con imei: 88944994488555');
INSERT INTO `empleado_movimiento` VALUES ('24', 'Intento de conexión a la BD.', 'Se realizó un intento fallido el día 05/12/2013.');
INSERT INTO `empleado_movimiento` VALUES ('25', 'Intento de conexión a la BD.', 'Se realizó un intento fallido el día 05/12/2013.');
INSERT INTO `empleado_movimiento` VALUES ('26', 'Intento de conexión a la BD.', 'Se realizó un intento fallido el día 05/12/2013.');
INSERT INTO `empleado_movimiento` VALUES ('27', 'Intento de login fallido.', 'El usuario: juan, ingreso datos incorrectos.');
INSERT INTO `empleado_movimiento` VALUES ('28', 'Intento de login fallido.', 'El usuario: usuario, ingreso datos incorrectos.');
INSERT INTO `empleado_movimiento` VALUES ('29', 'Intento de login fallido.', 'El usuario: juan, ingreso datos incorrectos.');
INSERT INTO `empleado_movimiento` VALUES ('30', 'Intento de login fallido.', 'El usuario: Paola Divanny, ingreso datos incorrectos.');
INSERT INTO `empleado_movimiento` VALUES ('31', 'Intento de login fallido.', 'El usuario: Paola Divanny, ingreso datos incorrectos.');
INSERT INTO `empleado_movimiento` VALUES ('32', 'Intento de login fallido.', 'El usuario: Paola Divanny, ingreso datos incorrectos.');
INSERT INTO `empleado_movimiento` VALUES ('33', 'Intento de login fallido.', 'El usuario: Paola Divanny, ingreso datos incorrectos.');
INSERT INTO `empleado_movimiento` VALUES ('34', 'Intento de login fallido.', 'El usuario: Paola Divanny, ingreso datos incorrectos.');
INSERT INTO `empleado_movimiento` VALUES ('35', 'Intento de login fallido.', 'El usuario: Paola Divanny, ingreso datos incorrectos.');
INSERT INTO `empleado_movimiento` VALUES ('36', 'Intento de login fallido.', 'El usuario: usuario, ingreso datos incorrectos.');
INSERT INTO `empleado_movimiento` VALUES ('37', 'Intento de login fallido.', 'El usuario: Paola Divanny, ingreso datos incorrectos.');
INSERT INTO `empleado_movimiento` VALUES ('38', 'Intento de login fallido.', 'El usuario: Bety, ingreso datos incorrectos.');
INSERT INTO `empleado_movimiento` VALUES ('39', 'Intento de login fallido.', 'El usuario: usuario, ingreso datos incorrectos.');
INSERT INTO `empleado_movimiento` VALUES ('40', 'Intento de login fallido.', 'El usuario: usuario, ingreso datos incorrectos.');

-- ----------------------------
-- Table structure for `equipo_almacen`
-- ----------------------------
DROP TABLE IF EXISTS `equipo_almacen`;
CREATE TABLE `equipo_almacen` (
  `idequipo_almacen` int(11) NOT NULL AUTO_INCREMENT,
  `modelo_celular` varchar(45) COLLATE latin1_spanish_ci DEFAULT NULL,
  `imei_celular` int(20) DEFAULT NULL,
  `id_equipo` int(10) unsigned zerofill DEFAULT '0000000000',
  `iccid_celular` varchar(45) COLLATE latin1_spanish_ci DEFAULT NULL,
  `idsucursal` int(11) DEFAULT NULL,
  `precioCelular` decimal(10,0) NOT NULL,
  `marca_celular` varchar(45) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`idequipo_almacen`),
  KEY `idsucursal_idx` (`idsucursal`),
  CONSTRAINT `idsucursal` FOREIGN KEY (`idsucursal`) REFERENCES `sucursal` (`idsucursal`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- ----------------------------
-- Records of equipo_almacen
-- ----------------------------
INSERT INTO `equipo_almacen` VALUES ('2', 'C100', '190', null, '998834', '1', '1200', 'Nokia');
INSERT INTO `equipo_almacen` VALUES ('3', 'C700', '200', null, '992234', '1', '3400', 'Nokia');

-- ----------------------------
-- Table structure for `equipo_garantia`
-- ----------------------------
DROP TABLE IF EXISTS `equipo_garantia`;
CREATE TABLE `equipo_garantia` (
  `idequipo_garantia` int(11) NOT NULL AUTO_INCREMENT,
  `idequipo` int(10) unsigned zerofill DEFAULT '0000000000',
  `marca_equipo` varchar(45) COLLATE latin1_spanish_ci DEFAULT NULL,
  `imei_equipo` varchar(45) COLLATE latin1_spanish_ci DEFAULT NULL,
  `accesorios` varchar(150) COLLATE latin1_spanish_ci DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `iccid_equipo` int(20) DEFAULT NULL,
  `idempleado` int(11) DEFAULT NULL,
  `observaciones` varchar(100) COLLATE latin1_spanish_ci DEFAULT NULL,
  `modelo_equipo` varchar(30) COLLATE latin1_spanish_ci DEFAULT NULL,
  `idsucursal` int(11) DEFAULT NULL,
  PRIMARY KEY (`idequipo_garantia`),
  KEY `idempleado_idx` (`idempleado`),
  KEY `id_empleado_idx` (`idempleado`),
  KEY `id_sucursal_idx` (`idsucursal`),
  KEY `id__sucursal_idx` (`idsucursal`),
  CONSTRAINT `idempleado` FOREIGN KEY (`idempleado`) REFERENCES `empleado` (`idempleado`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `id__sucursal` FOREIGN KEY (`idsucursal`) REFERENCES `sucursal` (`idsucursal`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- ----------------------------
-- Records of equipo_garantia
-- ----------------------------
INSERT INTO `equipo_garantia` VALUES ('1', '0000000001', 'Samsung', '89899878', '\r\nNinguno', null, null, '1', null, null, '1');
INSERT INTO `equipo_garantia` VALUES ('2', '0000000002', 'LG', '895202055547777', '', '2013-12-06', null, '1', null, null, '1');
INSERT INTO `equipo_garantia` VALUES ('3', '0000000003', 'HP', '8952000254789521456789', '\r\n456456', '2013-12-06', null, '1', null, null, '1');
INSERT INTO `equipo_garantia` VALUES ('4', '0000000004', '', '', '', '2013-12-10', null, '10', null, null, '1');
INSERT INTO `equipo_garantia` VALUES ('5', '0000000005', 'Sony Ericcson', '093424209409454', 'Ninguno', '2013-12-10', null, '10', null, null, '1');
INSERT INTO `equipo_garantia` VALUES ('8', null, '', '', '', null, null, null, null, null, null);
INSERT INTO `equipo_garantia` VALUES ('9', '0000000007', '9899', '999', 'Ninguno', '2013-12-10', null, '11', null, null, '2');
INSERT INTO `equipo_garantia` VALUES ('10', '0000000008', '9899', '999', 'Ninguno', '2013-12-10', null, '11', null, null, '2');
INSERT INTO `equipo_garantia` VALUES ('11', '0000000009', '9899', '999', 'Ninguno', '2013-12-10', null, '11', null, null, '2');
INSERT INTO `equipo_garantia` VALUES ('12', '0000000010', 'LP', '89522020', 'Ninguno', '2013-12-10', null, '11', null, null, '2');
INSERT INTO `equipo_garantia` VALUES ('13', '0000000011', 'Apple', '2134234234', 'Cable USB', '2013-12-10', null, '12', null, null, '1');

-- ----------------------------
-- Table structure for `equipo_reparacion`
-- ----------------------------
DROP TABLE IF EXISTS `equipo_reparacion`;
CREATE TABLE `equipo_reparacion` (
  `idequipo_reparacion` int(11) NOT NULL AUTO_INCREMENT,
  `idequipo` int(11) unsigned DEFAULT '0',
  `marca_equipo` varchar(45) COLLATE latin1_spanish_ci DEFAULT NULL,
  `imei_equipo` varchar(45) COLLATE latin1_spanish_ci DEFAULT NULL,
  `modelo_equipo` varchar(45) COLLATE latin1_spanish_ci DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `observaciones` varchar(145) COLLATE latin1_spanish_ci DEFAULT NULL,
  `fecha_entrega` date DEFAULT NULL,
  `idsucursal` int(11) DEFAULT NULL,
  PRIMARY KEY (`idequipo_reparacion`),
  KEY `FK_SUC_REP_idx` (`idsucursal`),
  CONSTRAINT `FK_SUC_REP` FOREIGN KEY (`idsucursal`) REFERENCES `sucursal` (`idsucursal`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- ----------------------------
-- Records of equipo_reparacion
-- ----------------------------

-- ----------------------------
-- Table structure for `municipio`
-- ----------------------------
DROP TABLE IF EXISTS `municipio`;
CREATE TABLE `municipio` (
  `idmunicipio` int(11) NOT NULL AUTO_INCREMENT,
  `municipio` varchar(70) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`idmunicipio`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- ----------------------------
-- Records of municipio
-- ----------------------------
INSERT INTO `municipio` VALUES ('1', 'Chapulhuacan');
INSERT INTO `municipio` VALUES ('2', 'Tlanchinol');
INSERT INTO `municipio` VALUES ('3', 'Tepehuacan');
INSERT INTO `municipio` VALUES ('4', 'Pisaflores');

-- ----------------------------
-- Table structure for `recarga`
-- ----------------------------
DROP TABLE IF EXISTS `recarga`;
CREATE TABLE `recarga` (
  `idrecarga` int(11) NOT NULL AUTO_INCREMENT,
  `idcodigo_recarga` int(11) DEFAULT NULL,
  PRIMARY KEY (`idrecarga`),
  KEY `id_idx` (`idcodigo_recarga`),
  CONSTRAINT `idcodigo_recarga` FOREIGN KEY (`idcodigo_recarga`) REFERENCES `codigo_recarga` (`idcodigo_recarga`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- ----------------------------
-- Records of recarga
-- ----------------------------

-- ----------------------------
-- Table structure for `sucursal`
-- ----------------------------
DROP TABLE IF EXISTS `sucursal`;
CREATE TABLE `sucursal` (
  `idsucursal` int(11) NOT NULL AUTO_INCREMENT,
  `sucursal` varchar(45) COLLATE latin1_spanish_ci DEFAULT NULL,
  `idmunicipio` int(11) DEFAULT NULL,
  PRIMARY KEY (`idsucursal`),
  KEY `idmunicipio_idx` (`idmunicipio`),
  CONSTRAINT `idmunicipio` FOREIGN KEY (`idmunicipio`) REFERENCES `municipio` (`idmunicipio`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- ----------------------------
-- Records of sucursal
-- ----------------------------
INSERT INTO `sucursal` VALUES ('1', 'Chapulhuacan', '1');
INSERT INTO `sucursal` VALUES ('2', 'Tlanchinol', '2');
INSERT INTO `sucursal` VALUES ('3', 'Tepehuacan de Guerrero', '3');
INSERT INTO `sucursal` VALUES ('4', 'Pisaflores', '4');

-- ----------------------------
-- Table structure for `venta`
-- ----------------------------
DROP TABLE IF EXISTS `venta`;
CREATE TABLE `venta` (
  `idventa` int(11) NOT NULL AUTO_INCREMENT,
  `modelo_celular` varchar(45) COLLATE latin1_spanish_ci DEFAULT NULL,
  `idventa_detalle` int(11) DEFAULT NULL,
  PRIMARY KEY (`idventa`),
  KEY `idventa_detalle_idx` (`idventa_detalle`),
  CONSTRAINT `idventa_detalle` FOREIGN KEY (`idventa_detalle`) REFERENCES `venta_detalle` (`idventa_detalle`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- ----------------------------
-- Records of venta
-- ----------------------------

-- ----------------------------
-- Table structure for `venta_detalle`
-- ----------------------------
DROP TABLE IF EXISTS `venta_detalle`;
CREATE TABLE `venta_detalle` (
  `idventa_detalle` int(11) NOT NULL,
  `idempleado` int(11) DEFAULT NULL,
  `idequipo_almacen` int(11) DEFAULT NULL,
  `fecha_venta` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`idventa_detalle`),
  KEY `idempleado_index` (`idempleado`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci COMMENT='/*Falta agregar los idempleado y idequipo_almacen*/';

-- ----------------------------
-- Records of venta_detalle
-- ----------------------------
