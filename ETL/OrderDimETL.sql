INSERT INTO [gravity_books_DWH].dbo.Dim_Order (
    OrderID_SK, -- Surrogate key, typically auto-generated
    OrderID_BK,
    ShippingMethodID_BK,
    MethodName,
    Cost,
    HistoryID_BK,
    StatusID_BK,
    StatusValue,
    StartDate
)
SELECT 
    NULL, -- Assuming the DWH auto-generates the surrogate key
    o.order_id,
    o.shipping_method_id,
    sm.method_name,
    sm.cost,
    HistoryID_BK,
    StatusID_BK,
    StatusValue,
    StartDate
FROM 
[gravity_books].dbo.cust_order AS o
JOIN [gravity_books].dbo.shipping_method AS sm ON o.shipping_method_id = sm.method_id
JOIN [gravity_books].dbo.order_history os on sm.method_id = os.