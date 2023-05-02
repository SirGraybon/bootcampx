SELECT day, sum(duration),  count(*) as number_of_assignments
FROM assignments
group BY day
order by day