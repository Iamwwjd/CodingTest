# Write your MySQL query statement bel
with FirstYearSales as ( select s.product_id, min(s.year) as first_year
    from Sales s
    group by s.product_id
)

select s.product_id, fys.first_year, s.quantity, s.price
from Sales s join FirstYearSales fys on s.product_id = fys.product_id and s.year = fys.first_year;
