-- ==============================================
-- RETAIL SALES ANALYSIS – CLEAN & CORRECT QUERIES
-- ==============================================

-- 0. View all data
SELECT * FROM `sales analysisreatail`;

-- ==============================================
-- 1. CHECK MISSING VALUES (NULL Checks)
-- ==============================================

-- Missing transactions_id
SELECT * FROM `sales analysisreatail`
WHERE transactions_id IS NULL;

-- Missing sale_time
SELECT * FROM `sales analysisreatail`
WHERE sale_time IS NULL;

-- Missing sale_date
SELECT * FROM `sales analysisreatail`
WHERE sale_date IS NULL;

-- Missing any important field
SELECT *
FROM `sales analysisreatail`
WHERE
    transactions_id IS NULL OR
    sale_date IS NULL OR
    sale_time IS NULL OR
    category IS NULL OR
    quantity IS NULL OR
    cogs IS NULL OR
    total_sale IS NULL;

-- ==============================================
-- 2. DELETE ROWS WITH NULL VALUES
-- ==============================================

DELETE FROM `sales analysisreatail`
WHERE
    transactions_id IS NULL OR
    sale_date IS NULL OR
    sale_time IS NULL OR
    category IS NULL OR
    quantity IS NULL OR
    cogs IS NULL OR
    total_sale IS NULL;

-- ==============================================
-- 3. DATA EXPLORATION
-- ==============================================

-- Total sales count
SELECT COUNT(*) AS total_sales
FROM `sales analysisreatail`;

-- Number of unique customers
SELECT COUNT(DISTINCT customer_id) AS total_customers
FROM `sales analysisreatail`;

-- Unique categories
SELECT DISTINCT category
FROM `sales analysisreatail`;

-- ==============================================
-- 4. DATA ANALYSIS QUESTIONS
-- ==============================================

-- Q1: Retrieve all sales made on '2022-11-05'
SELECT *
FROM `sales analysisreatail`
WHERE sale_date = '2022-11-05';

-- Q2: Retrieve transactions where category = 'clothing'
--     AND quantity > 10 in November 2022
SELECT *
FROM `sales analysisreatail`
WHERE category = 'clothing'
  AND quantity > 10
  AND sale_date BETWEEN '2022-11-01' AND '2022-11-30';

-- ==============================================
-- END OF PROJECT
-- ==============================================
