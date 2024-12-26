%dw 2.0
output application/json

---
{
    "ceil":payload.numbers
     map ((numbers) -> ceil(numbers) )
}
