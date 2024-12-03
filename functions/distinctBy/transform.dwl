%dw 2.0
output application/json
--- 
payload distinctBy(payload map ((item) -> item.category))
