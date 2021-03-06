use ExamenAnalisisDW
if OBJECT_ID ('FactEstacionamiento', 'U') IS NOT NULL
	drop table FactEstacionamiento;

use ExamenAnalisis
/****** Script for SelectTopNRows command from SSMS  ******/
SELECT  [IDParqueo]
      ,[IDVehiculo]
      ,[FechaHoraIngreso]
      ,[FechaHoraSalida]
      ,[TarifaBase]
      ,[Ganancia]
      ,[Mantenimiento]
      ,[ImpVentas]
      ,[TotalACobrar]
	  , '' AS IntervaloTiempoEntrada
	  , '' AS IntervaloTiempoSalida
 	  , '' AS NombreFeriadoEntrada
 	  , '' AS NombreFeriadoSalida
	  , 0 AS CantidadMinutosUsoParqueo
	  , 0 AS IngresoEnDiaDeRestriccion
	  , 0 AS SalidaEnDiaDeRestriccion
	  , 0 AS IDEstratoCantidadMinutosUsoParqueo
	  , 0 AS IDEstratoHoraIngresoParqueo
	  , 0 AS IDEstratoHoraSalidaParqueo
	  , 0 AS IDEstratoGanancia
INTO ExamenAnalisisDW.dbo.FactEstacionamiento
  FROM [ExamenAnalisis].[dbo].[Estacionamiento]
  where 1 = 0

