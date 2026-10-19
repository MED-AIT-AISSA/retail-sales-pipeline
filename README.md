# Retail Sales Analytics Pipeline

A data engineering project built with **PostgreSQL, Docker, dbt, and SQL** to transform retail sales data into reliable, analytics-ready datasets.

## Project Overview

This project implements a small analytical data pipeline that loads CSV datasets into PostgreSQL, transforms them using dbt, and produces customer-level sales metrics.

## Architecture

CSV seeds → PostgreSQL → dbt staging models → analytics marts → data quality tests

## Technology Stack

- **PostgreSQL** — relational database
- **Docker** — local database environment
- **dbt Core** — SQL transformations, model dependencies, and testing
- **SQL** — joins, aggregations, and revenue calculations
- **Git and GitHub** — version control

## Data Sources

The project uses three CSV datasets:

- `customers.csv` — customer information
- `products.csv` — product catalog and prices
- `sales.csv` — order records, quantities, and dates

## Data Models

### `stg_customers`

A staging view that prepares customer data for downstream transformations.

### `fct_sales`

An order-level fact table combining sales records with product prices and calculating revenue per order.

### `dim_customers`

A customer-level analytics table containing:

- Total orders
- Total revenue
- Average order value

## Data Quality

dbt tests validate key properties of the data, including:

- Unique identifiers
- Non-null required fields
- Relationships between sales and products

## Running the Project

1. Start the PostgreSQL database.
2. Configure the dbt profile to connect to PostgreSQL.
3. Load the CSV seeds with `dbt seed`.
4. Build the models with `dbt run`.
5. Run data quality tests with `dbt test`.

## Project Goal

The goal is to practice core data engineering workflows: relational databases, SQL transformations, reproducible pipelines, data quality, and version control.
