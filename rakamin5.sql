```sql
SELECT *
    FROM customer_table
    WHERE purchase_amount < 100 OR 
        (DATE(order_date) < '2022-08-22' AND INT(customer_id) > 2001);

```