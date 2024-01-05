INSERT INTO [gravity_books_DWH].dbo.Dim_Order (
    OrderID_BK,
    ShippingMethodID_BK,
    MethodName,
    Cost,
    HistoryID_BK,
    StatusID_BK,
    StatusValue
)
SELECT 
    o.order_id,
    o.shipping_method_id,
    sm.method_name,
    sm.cost,
    oh.history_id,
    OD.status_id,
    OD.status_value
FROM 
    [gravity_books].dbo.cust_order AS o
INNER JOIN 
    [gravity_books].dbo.shipping_method AS sm ON o.shipping_method_id = sm.method_id
INNER JOIN 
    [gravity_books].dbo.order_history AS oh ON o.order_id = oh.order_id
INNER JOIN 
    [gravity_books].dbo.order_status AS OD ON oh.status_id = OD.status_id;

