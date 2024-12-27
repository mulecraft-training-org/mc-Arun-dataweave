%dw 2.0
output application/json
---
payload map ((item) ->item contains("banana" ) )
