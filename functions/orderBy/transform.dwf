%dw 2.0
output application/json
---
payload 
orderBy ((item) -> item.age ++  item.name ++  item.salary )
filter ((item) -> item.salary >= 60000 and item.name == "Alice")
