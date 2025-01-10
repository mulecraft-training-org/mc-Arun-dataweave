%dw 2.0
output application/json

/* Requirements:
 * Split cart items string using Splitby
 * Convert to array of items
 *
 * Expected Output:
 * {
 *   "itemList": [
 *     "apple",
 *     "banana",
 *     "cherry"
 *   ]
 * }
 */
---
{
    "itemList": payload.cartItems splitBy(",")
     
}
