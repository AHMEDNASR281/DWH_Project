
INSERT INTO [gravity_books_DWH].Dim_Book (
    BookID_BK,
    Title,
    Isbn13,
    LanguageID_BK,
    LanguageCode,
    LanguageName,
    NUMofPages,
    PublicationDate,
    PublisherID_BK,
    PublisherName,
    AuthorID_BK,
    AuthorName,
    StartDate,
    EndDate,
    IsCurrent
)
SELECT 
    b.book_id AS BookID_BK,
    b.title AS Title,
    b.isbn13 AS Isbn13,
    bl.language_id AS LanguageID_BK,
    bl.language_code AS LanguageCode,
    bl.language_name AS LanguageName,
    b.num_pages AS NUMofPages,
    b.publication_date AS PublicationDate,
    p.publisher_id AS PublisherID_BK,
    p.publisher_name AS PublisherName,
    ba.author_id AS AuthorID_BK,
    a.author_name AS AuthorName,
    GETDATE() AS StartDate,
    NULL AS EndDate,
    1 AS IsCurrent
FROM 
    gravity_books.dbo.book b
JOIN 
    gravity_books.dbo.book_language bl ON b.language_id = bl.language_id
JOIN 
    gravity_books.dbo.publisher p ON b.publisher_id = p.publisher_id
JOIN 
    book_author ba ON b.book_id = ba.book_id
JOIN 
    gravity_books.dbo.author a ON ba.author_id = a.author_id

SELECT * FROM Dim_Book