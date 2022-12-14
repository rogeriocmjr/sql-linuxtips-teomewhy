-- Databricks notebook source
SELECT *
FROM silver_olist.pedido

WHERE descSituacao = 'shipped'

LIMIT 100

-- COMMAND ----------

SELECT *
FROM silver_olist.pedido

WHERE descSituacao = 'shipped'
AND YEAR(dtPedido) = '2018'

LIMIT 100

-- COMMAND ----------

SELECT *
FROM silver_olist.pedido

WHERE (descSituacao = 'shipped' OR descSituacao = 'canceled') AND YEAR(dtPedido) = '2018'

LIMIT 1000

-- COMMAND ----------

SELECT *,
       datediff(dtEstimativaEntrega, dtAprovado) AS diffDataAprovadoPrevisao
       
FROM silver_olist.pedido

WHERE descSituacao IN ('shipped', 'canceled')
AND YEAR(dtPedido) = '2018'
AND datediff(dtEstimativaEntrega, dtAprovado) > 30
--AND diferenca > 30

LIMIT 1000
