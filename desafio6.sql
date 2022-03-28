-- Desafio 6
SELECT round(min(plans.plan_price), 2) AS faturamento_minimo,
	round(max(plans.plan_price), 2) AS faturamento_maximo,
    round(avg(plans.plan_price), 2) AS faturamento_medio,
    round(sum(plans.plan_price), 2) AS faturamento_total
FROM plans
JOIN users ON users.plan_id = plans.plan_id;