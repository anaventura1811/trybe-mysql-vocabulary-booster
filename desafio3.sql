-- 3. Exiba os cargos com a diferença entre seus salários máximo e mínimo
SELECT
  job_title
AS
  'Cargo',
  (max_salary - min_salary)
AS
  'Diferença entre salários máximo e mínimo'
FROM
  hr.jobs
ORDER BY
  (max_salary - min_salary) ASC, job_title ASC;
