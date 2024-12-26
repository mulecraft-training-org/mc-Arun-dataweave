%dw 2.0
output application/json

---
{
    "average":
      avg(payload.numbers)
    
}
