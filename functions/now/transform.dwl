%dw 2.0
output application/json

---
payload map {
    fullName: $.name,
    birthYear:(now().year)-$.age
}
