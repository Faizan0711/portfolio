-- Retail Sales Portfolio Dataset (SQLite)

DROP TABLE IF EXISTS sales;

CREATE TABLE sales (
  order_id TEXT NOT NULL,
  order_date TEXT NOT NULL,   -- YYYY-MM-DD
  ship_date TEXT NOT NULL,    -- YYYY-MM-DD
  customer_id TEXT NOT NULL,
  segment TEXT NOT NULL,      -- Consumer / Corporate / Home Office
  region TEXT NOT NULL,       -- Canadian province/region label (synthetic)
  city TEXT,
  channel TEXT NOT NULL,      -- Online / In-Store / Wholesale
  payment_method TEXT NOT NULL,
  product_id INTEGER NOT NULL,
  category TEXT NOT NULL,
  subcategory TEXT NOT NULL,
  product_name TEXT NOT NULL,
  quantity INTEGER NOT NULL,
  unit_price REAL NOT NULL,
  discount_pct REAL,          -- may contain NULLs (intentional data-quality task)
  sales REAL NOT NULL,
  cost REAL NOT NULL,
  profit REAL NOT NULL
);

CREATE INDEX IF NOT EXISTS idx_sales_order_date ON sales(order_date);
CREATE INDEX IF NOT EXISTS idx_sales_region ON sales(region);
CREATE INDEX IF NOT EXISTS idx_sales_category ON sales(category);
CREATE INDEX IF NOT EXISTS idx_sales_customer ON sales(customer_id);
