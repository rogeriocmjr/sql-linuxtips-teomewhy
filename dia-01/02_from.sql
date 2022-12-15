-- Databricks notebook source
SELECT * FROM silver_olist.pedido

-- leia-se: selecione TUDO da tabela silver_olist.pedido

-- COMMAND ----------

SELECT idPedido,
       descSituacao
       
FROM silver_olist.pedido

LIMIT 10

-- leia-se: selecione a coluna idPedido da tabela silver_olist.pedido

-- COMMAND ----------

SELECT *,
       datediff(dtEstimativaEntrega, dtEntregue) AS qtdDiasPromessaEntrega
       
FROM silver_olist.pedido
LIMIT 10
