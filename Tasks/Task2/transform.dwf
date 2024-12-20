%dw 2.0
output application/json
---

{
  "highValueOrders":payload.orders
  distinctBy ((orders) -> orders.customer )
  filter ((orders) -> orders.amount>125)
  orderBy ((orders) ->-orders.amount),
  "uniqueCustomers":payload.orders
  distinctBy ((orders) -> orders.customer )
  map ((orders) -> orders.customer),
  "totalAmount":sum(payload.orders.amount),
  "trimmedCustomerNames":payload.orders
  distinctBy ((orders) -> orders.customer)
  map ((orders) -> trim(orders.customer))
}
