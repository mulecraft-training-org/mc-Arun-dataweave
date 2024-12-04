%dw 2.0
output application/json

---
payload
   reduce ((item,acc={}) ->acc ++  {(sizeOf(acc)):item})
   pluck ((value, key) ->value.name )
