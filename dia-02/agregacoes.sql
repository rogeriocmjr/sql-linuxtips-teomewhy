-- Databricks notebook source
SELECT COUNT(*)
FROM silver_olist.cliente

-- COMMAND ----------

SELECT
    COUNT(*) AS nrLinhasNaoNumas, -- conta linhas não nulas
    COUNT(idCliente) AS nrIdClienteNaoNulo, -- conta id de clientes não nulos
    COUNT(DISTINCT idCliente) as nrIdClienteDistintos, -- conta id de clientes distintos
    
    COUNT(idClienteUnico) AS nrIdClienteUnico,
    COUNT(DISTINCT idClienteUnico) as nrIdClienteUnicoDistintos -- conta id de clientes únicos distintos

FROM silver_olist.cliente

-- COMMAND ----------

SELECT
    COUNT(*) AS qtLinhas,
    COUNT(DISTINCT idCliente) as qtClientes,
    COUNT(DISTINCT idClienteUnico) as qtClientesUnicos
    

FROM silver_olist.cliente
WHERE descCidade IN ('presidente prudente', 'curitiba')

-- COMMAND ----------

SELECT
    round(avg(vlPreco), 2) AS avgPreco, -- média dos preços
    
    int(percentile(vlPreco, 0.5)) AS medianPreco, -- preço mediano dos produtos
    
    max(vlPreco) AS maxPreco,
    min(vlPreco) AS minPreco,
    
    avg(vlFrete) AS avgFrete,
    max(vlFrete) as maxFrete,
    min(vlFrete) AS minFrete
    
FROM silver_olist.item_pedido

-- COMMAND ----------

SELECT COUNT(*)
FROM silver_olist.cliente
WHERE descUF = 'SP'
