-- ============================================
--   INSERTS PARA POVOAMENTO DAS TABELAS
-- ============================================

-- ========================
-- TABELA: Especialidade
-- ========================
INSERT INTO Especialidade (IdEspecialidade, NomeEspecialidade) VALUES
(1, 'Ortopedia'),
(2, 'Cardiologia'),
(3, 'Pediatria'),
(4, 'Dermatologia'),
(5, 'Neurologia');

-- ========================
-- TABELA: Paciente
-- ========================
INSERT INTO Paciente (IdPaciente, Nome, Idade) VALUES
(1, 'Ana Paula', 25),
(2, 'Carlos Silva', 40),
(3, 'Mariana Costa', 32);

-- ========================
-- TABELA: Médico
-- ========================
INSERT INTO Medico (IdMedico, Nome, IdEspecialidade) VALUES
(1, 'Dr. João Almeida', 1),
(2, 'Dra. Beatriz Rocha', 2),
(3, 'Dr. Roberto Nunes', 5);

-- ========================
-- TABELA: Consulta
-- ========================
INSERT INTO Consulta (IdConsulta, DataConsulta, HorarioConsulta, Observacoes, ValorConsulta, IdPaciente, IdMedico) VALUES
(1, '2025-02-10', '10:30', 'Retorno de avaliação', 180.00, 1, 1),
(2, '2025-02-11', '14:00', 'Primeira consulta', 220.00, 2, 2),
(3, '2025-02-12', '09:00', 'Consulta de rotina', 200.00, 3, 3);
