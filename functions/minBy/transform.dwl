%dw 2.0
output application/json
---
payload minBy ((item) ->item.c )
