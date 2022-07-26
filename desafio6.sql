-- Active: 1656725077704@@localhost@3306@SpotifyClone
SELECT
    FORMAT(MIN(price), 2) AS 'faturamento_minimo',
    FORMAT(MAX(price), 2) AS 'faturamento_maximo',
    FORMAT(AVG(price), 2) AS 'faturamento_medio',
    FORMAT(SUM(price), 2) AS 'faturamento_total'
FROM
    `plans` AS p
    INNER JOIN `users` AS u ON u.plan_id = p.plan_id;