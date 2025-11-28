-- ============================================
--      UPDATES E DELETES DO PROJETO
-- ============================================

-- ========================
--        UPDATES
-- ========================

-- 1. Atualizar o nome de um paciente
UPDATE Paciente
SET Nome = 'Ana Paula Carvalho'
WHERE IdPaciente = 1;

-- 2. Alterar o valor de uma consulta
UPDATE Consulta
SET ValorConsulta = 250.00
WHERE IdConsulta = 1;

-- 3. Atualizar a especialidade de um médico
UPDATE Medico
SET IdEspecialidade = 5   -- Neurologia
WHERE IdMedico = 3;


-- ========================
--        DELETES
-- ========================

-- 1. Remover um paciente específico
DELETE FROM Paciente
WHERE IdPaciente = 3;

-- 2. Remover uma consulta com valor abaixo de 200
DELETE FROM Consulta
WHERE ValorConsulta < 200;

-- 3. Remover uma especialidade que não é usada por nenhum médico
DELETE FROM Especialidade
WHERE IdEspecialidade = 4;  -- Dermatologia
