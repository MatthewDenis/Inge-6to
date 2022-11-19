/*==============================================================*/
/* DBMS name:      Sybase SQL Anywhere 11                       */
/* Created on:     11/19/2022 4:35:59 PM                        */
/*==============================================================*/


if exists(select 1 from sys.sysforeignkey where role='FK_ADMINIST_REFERENCE_PERSONAS') then
    alter table ADMINISTRATIVOS
       delete foreign key FK_ADMINIST_REFERENCE_PERSONAS
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_ALUMNOS_REFERENCE_PERSONAS') then
    alter table ALUMNOS
       delete foreign key FK_ALUMNOS_REFERENCE_PERSONAS
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_ALUMNOS__REFERENCE_EVENTOS') then
    alter table ALUMNOS_EVENTOS
       delete foreign key FK_ALUMNOS__REFERENCE_EVENTOS
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_ALUMNOS__REFERENCE_ALUMNOS') then
    alter table ALUMNOS_EVENTOS
       delete foreign key FK_ALUMNOS__REFERENCE_ALUMNOS
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_ALUMNO_C_REFERENCE_CLASES') then
    alter table ALUMNO_CLASES
       delete foreign key FK_ALUMNO_C_REFERENCE_CLASES
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_ALUMNO_C_REFERENCE_ALUMNOS') then
    alter table ALUMNO_CLASES
       delete foreign key FK_ALUMNO_C_REFERENCE_ALUMNOS
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_ASISTENC_REFERENCE_ALUMNOS') then
    alter table ASISTENCIA_ALUMNO_CLASE
       delete foreign key FK_ASISTENC_REFERENCE_ALUMNOS
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_ASISTENC_REFERENCE_CLASE_FE') then
    alter table ASISTENCIA_ALUMNO_CLASE
       delete foreign key FK_ASISTENC_REFERENCE_CLASE_FE
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_AULAS_REFERENCE_ADMINIST') then
    alter table AULAS
       delete foreign key FK_AULAS_REFERENCE_ADMINIST
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_AULAS_CL_REFERENCE_CLASES') then
    alter table AULAS_CLASES
       delete foreign key FK_AULAS_CL_REFERENCE_CLASES
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_AULAS_CL_REFERENCE_AULAS') then
    alter table AULAS_CLASES
       delete foreign key FK_AULAS_CL_REFERENCE_AULAS
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_CLASE_FE_REFERENCE_CLASES') then
    alter table CLASE_FECHAS
       delete foreign key FK_CLASE_FE_REFERENCE_CLASES
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_DEUDOR_REFERENCE_PERSONAS') then
    alter table DEUDOR
       delete foreign key FK_DEUDOR_REFERENCE_PERSONAS
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_DIAS_DET_REFERENCE_PROFESOR') then
    alter table DIAS_DETALLES
       delete foreign key FK_DIAS_DET_REFERENCE_PROFESOR
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_EMPLEADO_REFERENCE_PERSONAS') then
    alter table EMPLEADOS
       delete foreign key FK_EMPLEADO_REFERENCE_PERSONAS
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_EVENTOS_REFERENCE_ADMINIST') then
    alter table EVENTOS
       delete foreign key FK_EVENTOS_REFERENCE_ADMINIST
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_FECHAS_E_REFERENCE_EVENTOS') then
    alter table FECHAS_EVENTOS
       delete foreign key FK_FECHAS_E_REFERENCE_EVENTOS
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_PAGOS_CA_REFERENCE_PAGOS_DE') then
    alter table PAGOS_CABECERA
       delete foreign key FK_PAGOS_CA_REFERENCE_PAGOS_DE
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_PAGOS_CA_REFERENCE_DEUDOR') then
    alter table PAGOS_CABECERA
       delete foreign key FK_PAGOS_CA_REFERENCE_DEUDOR
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_PAGOS_DE_REFERENCE_CLASES') then
    alter table PAGOS_DETALLES
       delete foreign key FK_PAGOS_DE_REFERENCE_CLASES
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_PAGOS_DE_REFERENCE_EVENTOS') then
    alter table PAGOS_DETALLES
       delete foreign key FK_PAGOS_DE_REFERENCE_EVENTOS
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_PROFESOR_REFERENCE_PERSONAS') then
    alter table PROFESORES
       delete foreign key FK_PROFESOR_REFERENCE_PERSONAS
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_PROFESOR_REFERENCE_PROFESOR') then
    alter table PROFESORES_CLASES
       delete foreign key FK_PROFESOR_REFERENCE_PROFESOR
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_PROFESOR_REFERENCE_CLASES') then
    alter table PROFESORES_CLASES
       delete foreign key FK_PROFESOR_REFERENCE_CLASES
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_PROFESOR_REFERENCE_AULAS') then
    alter table PROFESORES_EVENTOS
       delete foreign key FK_PROFESOR_REFERENCE_AULAS
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_PROFESOR_REFERENCE_PROFESOR') then
    alter table PROFESORES_EVENTOS
       delete foreign key FK_PROFESOR_REFERENCE_PROFESOR
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_PROFESOR_REFERENCE_EVENTOS') then
    alter table PROFESORES_EVENTOS
       delete foreign key FK_PROFESOR_REFERENCE_EVENTOS
end if;

if exists(
   select 1 from sys.systable 
   where table_name='ADMINISTRATIVOS'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table ADMINISTRATIVOS
end if;

if exists(
   select 1 from sys.systable 
   where table_name='ALUMNOS'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table ALUMNOS
end if;

if exists(
   select 1 from sys.systable 
   where table_name='ALUMNOS_EVENTOS'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table ALUMNOS_EVENTOS
end if;

if exists(
   select 1 from sys.systable 
   where table_name='ALUMNO_CLASES'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table ALUMNO_CLASES
end if;

if exists(
   select 1 from sys.systable 
   where table_name='ASISTENCIA_ALUMNO_CLASE'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table ASISTENCIA_ALUMNO_CLASE
end if;

if exists(
   select 1 from sys.systable 
   where table_name='AULAS'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table AULAS
end if;

if exists(
   select 1 from sys.systable 
   where table_name='AULAS_CLASES'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table AULAS_CLASES
end if;

if exists(
   select 1 from sys.systable 
   where table_name='CERTIFICADO'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table CERTIFICADO
end if;

if exists(
   select 1 from sys.systable 
   where table_name='CLASES'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table CLASES
end if;

if exists(
   select 1 from sys.systable 
   where table_name='CLASE_FECHAS'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table CLASE_FECHAS
end if;

if exists(
   select 1 from sys.systable 
   where table_name='DEUDOR'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table DEUDOR
end if;

if exists(
   select 1 from sys.systable 
   where table_name='DIAS_DETALLES'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table DIAS_DETALLES
end if;

if exists(
   select 1 from sys.systable 
   where table_name='EMPLEADOS'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table EMPLEADOS
end if;

if exists(
   select 1 from sys.systable 
   where table_name='EVENTOS'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table EVENTOS
end if;

if exists(
   select 1 from sys.systable 
   where table_name='EXAMENES'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table EXAMENES
end if;

if exists(
   select 1 from sys.systable 
   where table_name='FACTURAS'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table FACTURAS
end if;

if exists(
   select 1 from sys.systable 
   where table_name='FECHAS_EVENTOS'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table FECHAS_EVENTOS
end if;

if exists(
   select 1 from sys.systable 
   where table_name='PAGOS_CABECERA'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table PAGOS_CABECERA
end if;

if exists(
   select 1 from sys.systable 
   where table_name='PAGOS_DETALLES'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table PAGOS_DETALLES
end if;

if exists(
   select 1 from sys.systable 
   where table_name='PERSONAS'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table PERSONAS
end if;

if exists(
   select 1 from sys.systable 
   where table_name='PROFESORES'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table PROFESORES
end if;

if exists(
   select 1 from sys.systable 
   where table_name='PROFESORES_CLASES'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table PROFESORES_CLASES
end if;

if exists(
   select 1 from sys.systable 
   where table_name='PROFESORES_EVENTOS'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table PROFESORES_EVENTOS
end if;

if exists(
   select 1 from sys.systable 
   where table_name='PUNTUACIONES'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table PUNTUACIONES
end if;

revoke connect from MATEO;

/*==============================================================*/
/* User: MATEO                                                  */
/*==============================================================*/
grant connect to MATEO identified by "";

/*==============================================================*/
/* Table: ADMINISTRATIVOS                                       */
/*==============================================================*/
create table ADMINISTRATIVOS 
(
   ID                   integer                        not null,
   ID_PERSONA           integer                        not null,
   FECHA_CREACION       datetime                       not null,
   FECHA_MODIFICACION   datetime                       null,
   FECHA_ELIMINACION    datetime                       null,
   constraint PK_ADMINISTRATIVOS primary key clustered (ID)
);

/*==============================================================*/
/* Table: ALUMNOS                                               */
/*==============================================================*/
create table ALUMNOS 
(
   ID                   integer                        not null,
   ID_PERSONA           integer                        not null,
   MATRICULA            varchar                        not null,
   FECHA_CREACION       datetime                       not null,
   FECHA_MODIFICACION   datetime                       null,
   FECHA_ELIMINACION    datetime                       null,
   constraint PK_ALUMNOS primary key clustered (ID)
);

/*==============================================================*/
/* Table: ALUMNOS_EVENTOS                                       */
/*==============================================================*/
create table ALUMNOS_EVENTOS 
(
   ID_EVENTO            integer                        not null,
   ID_ALUMNO            integer                        not null,
   FECHA_CREACION       datetime                       not null,
   FECHA_MODIFICACION   datetime                       null,
   FECHA_ELIMINACION    datetime                       null,
   constraint PK_ALUMNOS_EVENTOS primary key clustered (ID_EVENTO, ID_ALUMNO)
);

/*==============================================================*/
/* Table: ALUMNO_CLASES                                         */
/*==============================================================*/
create table ALUMNO_CLASES 
(
   ID                   integer                        not null,
   FECHA_ELIMINACION    datetime                       null,
   ID_CLASE             integer                        null,
   FECHA_CREACION       datetime                       null,
   FECHA_MODIFICACION   datetime                       null,
   ID_ALUMNO            integer                        null,
   constraint PK_ALUMNO_CLASES primary key clustered (ID)
);

/*==============================================================*/
/* Table: ASISTENCIA_ALUMNO_CLASE                               */
/*==============================================================*/
create table ASISTENCIA_ALUMNO_CLASE 
(
   ID_ALUMNO            integer                        not null,
   ID_CLASE_FECHA       integer                        not null,
   ATENDIO              varchar                        null,
   FECHA_CREACION       datetime                       not null,
   FECHA_MODIFICACION   datetime                       null,
   FECHA_ELIMINACION    datetime                       null,
   constraint PK_ASISTENCIA_ALUMNO_CLASE primary key clustered (ID_ALUMNO, ID_CLASE_FECHA)
);

/*==============================================================*/
/* Table: AULAS                                                 */
/*==============================================================*/
create table AULAS 
(
   ID                   integer                        not null,
   CAPACIDAD            integer                        null,
   ID_ADMINISTRATIVO    integer                        null,
   NOMBRE               varchar                        null,
   FECHA_CREACION       datetime                       not null,
   FECHA_MODIFICACION   datetime                       null,
   FECHA_ELIMINACION    datetime                       null,
   constraint PK_AULAS primary key clustered (ID)
);

/*==============================================================*/
/* Table: AULAS_CLASES                                          */
/*==============================================================*/
create table AULAS_CLASES 
(
   ID_AULAS             integer                        not null,
   ID_CLASES            integer                        not null,
   FECHA_CREACION       datetime                       not null,
   FECHA_MODIFICACION   datetime                       null,
   FECHA_ELIMINACION    datetime                       null,
   constraint PK_AULAS_CLASES primary key clustered (ID_AULAS, ID_CLASES)
);

/*==============================================================*/
/* Table: CERTIFICADO                                           */
/*==============================================================*/
create table CERTIFICADO 
(
   ID                   integer                        not null,
   FECHA_CREACION       datetime                       not null,
   ID_ALUMNO            integer                        null,
   constraint PK_CERTIFICADO primary key clustered (ID)
);

/*==============================================================*/
/* Table: CLASES                                                */
/*==============================================================*/
create table CLASES 
(
   ID                   integer                        not null,
   NOMBRE               varchar                        not null,
   DURACION             integer                        not null,
   CURSO                integer                        not null,
   EDAD_MINIMA          integer                        not null,
   EDAD_MAXIMA          integer                        not null,
   COSTO_MENSUAL        numeric(15)                    not null,
   FECHA_CREACION       datetime                       not null,
   FECHA_MODIFICACION   datetime                       null,
   FECHA_ELIMINACION    datetime                       null,
   constraint PK_CLASES primary key clustered (ID)
);

/*==============================================================*/
/* Table: CLASE_FECHAS                                          */
/*==============================================================*/
create table CLASE_FECHAS 
(
   ID                   integer                        not null,
   ID_CLASE             integer                        not null,
   DIA                  integer                        not null,
   ESTUDIANTES_ATENDIDOS integer                        not null,
   FECHA                datetime                       not null,
   FECHA_CREACION       datetime                       not null,
   FECHA_MODIFICACION   datetime                       null,
   FECHA_ELIMINACION    datetime                       null,
   constraint PK_CLASE_FECHAS primary key clustered (ID)
);

/*==============================================================*/
/* Table: DEUDOR                                                */
/*==============================================================*/
create table DEUDOR 
(
   ID                   integer                        not null,
   ID_PERSONA           integer                        not null,
   RUC                  varchar                        not null,
   NUMERO_DE_CONTACTO   varchar                        not null,
   FECHA_CREACION       datetime                       not null,
   FECHA_MODIFICACION   datetime                       null,
   FECHA_ELIMINACION    datetime                       null,
   constraint PK_DEUDOR primary key clustered (ID)
);

/*==============================================================*/
/* Table: DIAS_DETALLES                                         */
/*==============================================================*/
create table DIAS_DETALLES 
(
   ID                   integer                        not null,
   ID_PROFESOR          integer                        not null,
   DIA                  date                           not null,
   ENTRADA              time                           not null,
   SALIDA               time                           not null,
   FECHA_MODIFICACION   datetime                       null,
   FECHA_CREACION       datetime                       not null,
   FECHA_ELIMINACION    datetime                       null,
   constraint PK_DIAS_DETALLES primary key clustered (ID)
);

/*==============================================================*/
/* Table: EMPLEADOS                                             */
/*==============================================================*/
create table EMPLEADOS 
(
   ID                   integer                        not null,
   ID_PERSONA           integer                        not null,
   SUELDO_BASE          numeric(15)                    not null,
   FECHA_CREACION       datetime                       not null,
   FECHA_MODIFICACION   datetime                       null,
   FECHA_ELIMINACION    datetime                       null,
   constraint PK_EMPLEADOS primary key clustered (ID)
);

/*==============================================================*/
/* Table: EVENTOS                                               */
/*==============================================================*/
create table EVENTOS 
(
   ID                   integer                        not null,
   ID_ADMINISTRATIVO    integer                        not null,
   NOMBRE               varchar                        not null,
   EDAD_MINIMO          integer                        not null,
   PREDIO               varchar                        not null,
   FECHA_CREACION       datetime                       not null,
   FECHA_MODIFICACION   datetime                       null,
   FECHA_ELIMINACION    datetime                       null,
   constraint PK_EVENTOS primary key clustered (ID)
);

/*==============================================================*/
/* Table: EXAMENES                                              */
/*==============================================================*/
create table EXAMENES 
(
   ID                   integer                        not null,
   NOMBRE               varchar                        null,
   FECHA_CREACION       datetime                       not null,
   PROFESOR             integer                        null,
   constraint PK_EXAMENES primary key clustered (ID)
);

/*==============================================================*/
/* Table: FACTURAS                                              */
/*==============================================================*/
create table FACTURAS 
(
   ID_DETALLE           integer                        not null,
   ID_DEUDOR            integer                        not null,
   FECHA_CREACION       datetime                       not null,
   IVA                  numeric(15)                    not null,
   MONTO                numeric(15)                    not null,
   constraint PK_FACTURAS primary key clustered (ID_DETALLE, ID_DEUDOR)
);

/*==============================================================*/
/* Table: FECHAS_EVENTOS                                        */
/*==============================================================*/
create table FECHAS_EVENTOS 
(
   ID                   integer                        not null,
   ID_EVENTO            integer                        null,
   DIA                  integer                        not null,
   HORA_INICIO          time                           null,
   HORA_FIN             time                           null,
   FECHA_CREACION       datetime                       not null,
   FECHA_MODIFICACION   datetime                       null,
   FECHA_ELIMINACION    datetime                       null,
   CANTIDAD_DE_ALUMNOS_MINIMO integer                        null,
   CANTIDAD_DE_ALUMNOS_MAXIMA integer                        null,
   ALUMNOS_ATENDIDOS    integer                        null,
   constraint PK_FECHAS_EVENTOS primary key clustered (ID)
);

/*==============================================================*/
/* Table: PAGOS_CABECERA                                        */
/*==============================================================*/
create table PAGOS_CABECERA 
(
   ID                   integer                        not null,
   ID_DETALLES          integer                        null,
   ID_DEUDOR            integer                        null,
   IVA                  numeric(15)                    not null,
   MONTO                numeric(15)                    not null,
   IVA_TIPO             integer                        null,
   FECHA_MODIFICACION   datetime                       null,
   FECHA_CREACION       datetime                       not null,
   FECHA_ELIMINACION    datetime                       null,
   constraint PK_PAGOS_CABECERA primary key clustered (ID)
);

/*==============================================================*/
/* Table: PAGOS_DETALLES                                        */
/*==============================================================*/
create table PAGOS_DETALLES 
(
   ID                   integer                        not null,
   ID_CLASE             integer                        null,
   ID_EVENTO            integer                        null,
   MES                  varchar                        null,
   MONTO                numeric(15)                    not null,
   DESCUENTO            numeric(15)                    not null,
   FECHA_ELIMINACION    datetime                       null,
   FECHA_CREACION       datetime                       not null,
   FECHA_MODIFICACION   datetime                       null,
   constraint PK_PAGOS_DETALLES primary key clustered (ID)
);

/*==============================================================*/
/* Table: PERSONAS                                              */
/*==============================================================*/
create table PERSONAS 
(
   ID                   integer                        not null,
   NOMBRE               varchar                        not null,
   APELLIDO             varchar                        not null,
   FECHA_NACIMIENTO     datetime                       not null,
   DIRECCION            varchar                        not null,
   NUMERO_DE_CONTACTO   varchar                        not null,
   DIRECCION_DE_CORREO  varchar                        not null,
   FECHA_CREACION       datetime                       not null,
   FECHA_MODIFICACION   datetime                       null,
   FECHA_ELIMINACION    datetime                       null,
   constraint PK_PERSONAS primary key clustered (ID)
);

/*==============================================================*/
/* Table: PROFESORES                                            */
/*==============================================================*/
create table PROFESORES 
(
   ID                   integer                        not null,
   ID_PERSONA           integer                        not null,
   SUELDO_POR_HORA      numeric(15)                    not null,
   FECHA_CREACION       datetime                       not null,
   FECHA_MODIFICACION   datetime                       null,
   FECHA_ELIMINACION    datetime                       null,
   constraint PK_PROFESORES primary key clustered (ID)
);

/*==============================================================*/
/* Table: PROFESORES_CLASES                                     */
/*==============================================================*/
create table PROFESORES_CLASES 
(
   ID_PROFESOR          integer                        not null,
   ID_CLASE             integer                        not null,
   FECHA_CREACION       datetime                       not null,
   FECHA_MODIFICACION   datetime                       null,
   FECHA_ELIMINACION    datetime                       null,
   constraint PK_PROFESORES_CLASES primary key clustered (ID_PROFESOR, ID_CLASE)
);

/*==============================================================*/
/* Table: PROFESORES_EVENTOS                                    */
/*==============================================================*/
create table PROFESORES_EVENTOS 
(
   ID                   integer                        not null,
   ID_PROFESOR          integer                        null,
   FECHA_CREACION       datetime                       not null,
   FECHA_MODIFICACION   datetime                       null,
   FECHA_ELIMINACION    datetime                       null,
   ID_AULA              integer                        null,
   ID_EVENTO            integer                        null,
   constraint PK_PROFESORES_EVENTOS primary key clustered (ID)
);

/*==============================================================*/
/* Table: PUNTUACIONES                                          */
/*==============================================================*/
create table PUNTUACIONES 
(
   ID_DOCENTE           integer                        null,
   FECHA_CREACION       datetime                       not null,
   FECHA_MODIFICACION   datetime                       null,
   FECHA_ELIMINACION    datetime                       null
);

alter table ADMINISTRATIVOS
   add constraint FK_ADMINIST_REFERENCE_PERSONAS foreign key (ID_PERSONA)
      references PERSONAS (ID)
      on update restrict
      on delete restrict;

alter table ALUMNOS
   add constraint FK_ALUMNOS_REFERENCE_PERSONAS foreign key (ID_PERSONA)
      references PERSONAS (ID)
      on update restrict
      on delete restrict;

alter table ALUMNOS_EVENTOS
   add constraint FK_ALUMNOS__REFERENCE_EVENTOS foreign key (ID_EVENTO)
      references EVENTOS (ID)
      on update restrict
      on delete restrict;

alter table ALUMNOS_EVENTOS
   add constraint FK_ALUMNOS__REFERENCE_ALUMNOS foreign key (ID_ALUMNO)
      references ALUMNOS (ID)
      on update restrict
      on delete restrict;

alter table ALUMNO_CLASES
   add constraint FK_ALUMNO_C_REFERENCE_CLASES foreign key (ID_CLASE)
      references CLASES (ID)
      on update restrict
      on delete restrict;

alter table ALUMNO_CLASES
   add constraint FK_ALUMNO_C_REFERENCE_ALUMNOS foreign key (ID_ALUMNO)
      references ALUMNOS (ID)
      on update restrict
      on delete restrict;

alter table ASISTENCIA_ALUMNO_CLASE
   add constraint FK_ASISTENC_REFERENCE_ALUMNOS foreign key (ID_ALUMNO)
      references ALUMNOS (ID)
      on update restrict
      on delete restrict;

alter table ASISTENCIA_ALUMNO_CLASE
   add constraint FK_ASISTENC_REFERENCE_CLASE_FE foreign key (ID_CLASE_FECHA)
      references CLASE_FECHAS (ID)
      on update restrict
      on delete restrict;

alter table AULAS
   add constraint FK_AULAS_REFERENCE_ADMINIST foreign key (ID)
      references ADMINISTRATIVOS (ID)
      on update restrict
      on delete restrict;

alter table AULAS_CLASES
   add constraint FK_AULAS_CL_REFERENCE_CLASES foreign key (ID_CLASES)
      references CLASES (ID)
      on update restrict
      on delete restrict;

alter table AULAS_CLASES
   add constraint FK_AULAS_CL_REFERENCE_AULAS foreign key (ID_AULAS)
      references AULAS (ID)
      on update restrict
      on delete restrict;

alter table CLASE_FECHAS
   add constraint FK_CLASE_FE_REFERENCE_CLASES foreign key (ID_CLASE)
      references CLASES (ID)
      on update restrict
      on delete restrict;

alter table DEUDOR
   add constraint FK_DEUDOR_REFERENCE_PERSONAS foreign key (ID_PERSONA)
      references PERSONAS (ID)
      on update restrict
      on delete restrict;

alter table DIAS_DETALLES
   add constraint FK_DIAS_DET_REFERENCE_PROFESOR foreign key (ID_PROFESOR)
      references PROFESORES (ID)
      on update restrict
      on delete restrict;

alter table EMPLEADOS
   add constraint FK_EMPLEADO_REFERENCE_PERSONAS foreign key (ID_PERSONA)
      references PERSONAS (ID)
      on update restrict
      on delete restrict;

alter table EVENTOS
   add constraint FK_EVENTOS_REFERENCE_ADMINIST foreign key (ID_ADMINISTRATIVO)
      references ADMINISTRATIVOS (ID)
      on update restrict
      on delete restrict;

alter table FECHAS_EVENTOS
   add constraint FK_FECHAS_E_REFERENCE_EVENTOS foreign key (ID_EVENTO)
      references EVENTOS (ID)
      on update restrict
      on delete restrict;

alter table PAGOS_CABECERA
   add constraint FK_PAGOS_CA_REFERENCE_PAGOS_DE foreign key (ID_DETALLES)
      references PAGOS_DETALLES (ID)
      on update restrict
      on delete restrict;

alter table PAGOS_CABECERA
   add constraint FK_PAGOS_CA_REFERENCE_DEUDOR foreign key (ID_DEUDOR)
      references DEUDOR (ID)
      on update restrict
      on delete restrict;

alter table PAGOS_DETALLES
   add constraint FK_PAGOS_DE_REFERENCE_CLASES foreign key (ID_CLASE)
      references CLASES (ID)
      on update restrict
      on delete restrict;

alter table PAGOS_DETALLES
   add constraint FK_PAGOS_DE_REFERENCE_EVENTOS foreign key (ID_EVENTO)
      references EVENTOS (ID)
      on update restrict
      on delete restrict;

alter table PROFESORES
   add constraint FK_PROFESOR_REFERENCE_PERSONAS foreign key (ID_PERSONA)
      references PERSONAS (ID)
      on update restrict
      on delete restrict;

alter table PROFESORES_CLASES
   add constraint FK_PROFESOR_REFERENCE_PROFESOR foreign key (ID_PROFESOR)
      references PROFESORES (ID)
      on update restrict
      on delete restrict;

alter table PROFESORES_CLASES
   add constraint FK_PROFESOR_REFERENCE_CLASES foreign key (ID_CLASE)
      references CLASES (ID)
      on update restrict
      on delete restrict;

alter table PROFESORES_EVENTOS
   add constraint FK_PROFESOR_REFERENCE_AULAS foreign key (ID_AULA)
      references AULAS (ID)
      on update restrict
      on delete restrict;

alter table PROFESORES_EVENTOS
   add constraint FK_PROFESOR_REFERENCE_PROFESOR foreign key (ID)
      references PROFESORES (ID)
      on update restrict
      on delete restrict;

alter table PROFESORES_EVENTOS
   add constraint FK_PROFESOR_REFERENCE_EVENTOS foreign key (ID_EVENTO)
      references EVENTOS (ID)
      on update restrict
      on delete restrict;

