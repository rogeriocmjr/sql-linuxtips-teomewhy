-- Databricks notebook source
SELECT
    descUF,
    COUNT(*)

FROM silver_olist.cliente

GROUP BY descUF


SELECT
    descUF,
    COUNT(DISTINCT idClienteUnico)

FROM silver_olist.cliente

GROUP BY descUF
