import mysql.connector
import os
from dotenv import load_dotenv

load_dotenv()

DB_HOST = os.getenv('DB_HOST')
DB_USER = os.getenv('DB_USER')
DB_PASSWORD = os.getenv('DB_PASSWORD')
DB_NAME = os.getenv('DB_NAME')

conn = mysql.connector.connect(
    host=DB_HOST,
    user=DB_USER,
    password=DB_PASSWORD
)

if conn.is_connected():
    print("Connected to MySQL Server successfully!")

cursor = conn.cursor()
cursor.execute(f"CREATE DATABASE IF NOT EXISTS {DB_NAME}")
print(f"Database '{DB_NAME}' created successfully!")

cursor.close()
conn.close()

conn = mysql.connector.connect(
    host=DB_HOST,
    user=DB_USER,
    password=DB_PASSWORD,
    database=DB_NAME
)

cursor = conn.cursor()

cursor.execute("""
    CREATE TABLE IF NOT EXISTS products (
        id INT AUTO_INCREMENT PRIMARY KEY,
        name VARCHAR(100),
        category VARCHAR(50),
        price DECIMAL(10,2),
        stock INT
    )
""")
print("Table 'products' created successfully!")

def insert_product(name, category, price, stock):
    sql = "INSERT INTO products (name, category, price, stock) VALUES (%s, %s, %s, %s)"
    values = (name, category, price, stock)
    cursor.execute(sql, values)
    conn.commit()
    print(f"Product '{name}' added successfully!")

insert_product("Laptop", "Electronics", 60000, 10)
insert_product("Smartphone", "Electronics", 30000, 20)
insert_product("Headphones", "Accessories", 2000, 50)
insert_product("T-shirt", "Clothing", 500, 100)

def read_products():
    cursor.execute("SELECT * FROM products")
    results = cursor.fetchall()
    print("\nProduct Records:")
    for row in results:
        print(row)

read_products()

def update_stock(product_id, new_stock):
    sql = "UPDATE products SET stock = %s WHERE id = %s"
    values = (new_stock, product_id)
    cursor.execute(sql, values)
    conn.commit()
    print(f"Product ID {product_id} stock updated to {new_stock} successfully!")

update_stock(1, 15)

def delete_product(product_id):
    sql = "DELETE FROM products WHERE id = %s"
    values = (product_id,)
    cursor.execute(sql, values)
    conn.commit()
    print(f"Product ID {product_id} deleted successfully!")

delete_product(3)

read_products()

cursor.close()
conn.close()
