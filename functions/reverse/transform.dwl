%dw 2.0
output application/json
---
payload.Reverse splitBy  " " orderBy ((item, index) -> -index ) joinBy  " "
