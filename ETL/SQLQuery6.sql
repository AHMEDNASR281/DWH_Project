INSERT INTO [gravity_books_DWH].dbo.Dim_Order (
 
    status_date
)
SELECT 

    OD.status_date
FROM 
    [gravity_books].dbo.cust_order AS o

INNER JOIN 
    [gravity_books].dbo.order_history AS oh ON o.order_id = oh.order_id
INNER JOIN 
    [gravity_books].dbo.order_status AS OD ON oh.status_id = OD.status_id;
