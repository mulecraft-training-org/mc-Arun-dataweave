%dw 2.0
output application/json
---
payload map(item) ->{
    "Empname":item.name,
    "BossName":(payload filter ((value) ->value.ID==item.bossID ))[0].name
}
