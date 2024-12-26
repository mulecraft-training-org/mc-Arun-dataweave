%dw 2.0
output application/json

---
{
    "absolute_values":payload.numbers 
     map ((numbers) -> abs(numbers))
}
