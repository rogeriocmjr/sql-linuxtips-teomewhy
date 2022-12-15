-- Databricks notebook source
SELECT
    descUF,
    COUNT(*)

FROM silver_olist.cliente

GROUP BY descUF
