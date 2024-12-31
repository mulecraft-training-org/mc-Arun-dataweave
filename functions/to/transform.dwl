%dw 2.0
output application/json
---
{
    "output1": payload[4 to 10], 
    "output2": payload[6 to -1],
    "output1": payload [-1 to 0]
    
}
