%dw 2.0
output application/json

/* Requirements:
 * Calculate the average yield using the ceil function
 * Compute the square root of each area using sqrt
 *
 * Expected Output:
 * {
 *   "averageYield": 25,
 *   "sqrtArea": [
 *     1,
 *     1.414,
 *     1.732,
 *     2
 *   ]
 * }
 */
---
{
    "averageYield":avg(payload.cropData.yields),
   
     "sqrtArea": payload.cropData.area 
      map ((item) -> sqrt(item))
}
