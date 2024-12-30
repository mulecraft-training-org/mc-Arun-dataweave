%dw 2.0
output application/json
---
{
 "integer Indexof" :payload.integers indexOf 8 ,
 "string indexOf" : payload.string
   map ((payload) -> payload indexOf "b" )

}
