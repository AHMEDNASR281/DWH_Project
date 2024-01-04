-- Check if the column FK_DateSK does not exist in Fact_Sales, then add it
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS 
              WHERE TABLE_NAME = 'Fact_Sales' AND COLUMN_NAME = 'FK_DateSK')
BEGIN
    ALTER TABLE Fact_Sales
    ADD FK_DateSK INT;
END

-- Check if the column FK_TimeSK does not exist in Fact_Sales, then add it
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS 
              WHERE TABLE_NAME = 'Fact_Sales' AND COLUMN_NAME = 'FK_TimeSK')
BEGIN
    ALTER TABLE Fact_Sales
    ADD FK_TimeSK INT;
END

-- Check if the foreign key constraint FK_FactSales_DimDate does not exist, then add it
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS 
              WHERE CONSTRAINT_TYPE = 'FOREIGN KEY' AND TABLE_NAME = 'Fact_Sales' AND CONSTRAINT_NAME = 'FK_FactSales_DimDate')
BEGIN
    ALTER TABLE Fact_Sales
    ADD CONSTRAINT FK_FactSales_DimDate
        FOREIGN KEY (FK_DateSK) REFERENCES DimDate(DateSK);
END

-- Check if the foreign key constraint FK_FactSales_DimTime does not exist, then add it
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS 
              WHERE CONSTRAINT_TYPE = 'FOREIGN KEY' AND TABLE_NAME = 'Fact_Sales' AND CONSTRAINT_NAME = 'FK_FactSales_DimTime')
BEGIN
    ALTER TABLE Fact_Sales
    ADD CONSTRAINT FK_FactSales_DimTime
        FOREIGN KEY (FK_TimeSK) REFERENCES DimTime(TimeSK);
END
