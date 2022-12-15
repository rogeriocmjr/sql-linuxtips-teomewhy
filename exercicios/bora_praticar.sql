-- Databricks notebook source
-- DBTITLE 1,Exercício 01
-- 01 Selecione todos os clientes paulistanos

SELECT *
FROM silver_olist.cliente
WHERE descCidade = 'sao paulo'

-- COMMAND ----------

-- DBTITLE 1,Exercício 02
-- 02 Selecione todos os clientes paulistas

SELECT *
FROM silver_olist.cliente
WHERE descUF = 'SP'

-- COMMAND ----------

-- DBTITLE 1,Exercício 03
-- 03 Selecione todos os vendedores cariocas e paulistas

SELECT *
FROM silver_olist.vendedor

WHERE descUF = 'SP' OR descCidade = 'rio de janeiro'
-- WHERE descCidade IN ('sao paulo', 'rio de janeiro')

-- COMMAND ----------

-- DBTITLE 1,Exercício 04
-- 04 Selecione os produtos de perfumaria e bebês com altura maior que 5cm

SELECT *

FROM silver_olist.produto

WHERE descCategoria IN ('perfumaria', 'bebes')
AND vlAlturaCm > 5

-- COMMAND ----------

-- 05 Lista de pedidos que foram entregues com 2 dias de antecedência


