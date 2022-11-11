
create database empresaTransporte;
use empresatransporte;

create table camioneros(
    dni int unsigned primary key,
    letradni varchar(1),
    nombre varchar(20) not null, 
    telefono int not null, 
    dirrecion varchar(40), 
    salario float(10,2) unsigned,
    cuidad varchar(30)
);

create table camiones (
    matricula varchar(8) primary key, 
    modelo varchar(20) not null, 
    tipo varchar(10) not null, 
    potencia int unsigned
);

create table provincia(
    codProvincia int unsigned primary key, 
    nombre varchar(30) not null
);

create table paquetes (
    idPaquete int unsigned primary key, 
    descripcion varchar(30), 
    destinatario varchar(30) not null,
    codCamionero int unsigned, 
    foreign key(codCamionero) references camioneros(dni),
    codProvincia int unsigned, 
    foreign key(codProvincia) references provincia(codProvincia)
);

create table camioneroscamion(
    uniqueID int unsigned primary key, 
    fecha date, 
    codCamionero int unsigned, 
    foreign key(codCamionero) references camioneros(dni),
    codCamion varchar(8), 
    foreign key(codCamion) references camiones(matricula)
);
