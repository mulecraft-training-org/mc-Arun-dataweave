%dw 2.0
output application/json
---
{
    "availableBooks":payload.books
     filter ((books) -> books.copies>0 )
     distinctBy ((books) -> books.title ++  books.author)
     map ((books) -> books - "copies"),
    "uniqueBooks":payload.books
     distinctBy ((books) -> books.title ++ books.author)
     map ((books) -> books - "copies"),
    "sortedTitles":payload.books
    orderBy ((books) ->books.title)
    distinctBy ((books)->books.title)
     map(books)->books.title,
    "totalCopies":sum(payload.books.copies),
    "currentTimeStamp":now()
}
