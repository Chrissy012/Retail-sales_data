# Databricks notebook source
# /// script
# [tool.databricks.environment]
# environment_version = "5"
# ///
# MAGIC %sql
# MAGIC USE `bright-learn`.data
# MAGIC

# COMMAND ----------

# MAGIC %sql
# MAGIC --Running entire table
# MAGIC SELECT*
# MAGIC FROM retail_sales_dataset
