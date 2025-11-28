-- ============================================
--      CONSULTAS (SELECTS) DO PROJETO
-- ============================================

-- 1. Listar todos os pacientes
SELECT * FROM Paciente;

-- 2. Listar médicos com suas especialidades
SELECT 
    Medico.Nome AS NomeMedico,
    Especialidade.NomeEspecialidade AS Especialidade
FROM Medico
JOIN Especialidade 
    ON Medico.IdEspecialidade = Especialidade.IdEspecialidade;

-- 3. Consultas com nome do paciente
SELECT 
    Consulta.IdConsulta,
    Paciente.Nome AS NomePaciente,
    Consulta.DataConsulta,
    Consulta.ValorConsulta
FROM Consulta
JOIN Paciente 
    ON Consulta.IdPaciente = Paciente.IdPaciente;

-- 4. Consultas acima de R$200, ordenadas pelo valor
SELECT 
    IdConsulta,
    ValorConsulta
FROM Consulta
WHERE ValorConsulta > 200
ORDER BY ValorConsulta DESC;

-- 5. Mostrar as 2 primeiras consultas
SELECT * 
FROM Consulta
LIMIT 2;
