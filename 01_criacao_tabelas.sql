-- ============================================
--   CRIAÇÃO DAS TABELAS DO BANCO VidaSaude
-- ============================================

-- ========================
-- TABELA: Especialidade
-- ========================
CREATE TABLE Especialidade (
    IdEspecialidade INTEGER PRIMARY KEY,
    NomeEspecialidade TEXT NOT NULL
);

-- ========================
-- TABELA: Paciente
-- ========================
CREATE TABLE Paciente (
    IdPaciente INTEGER PRIMARY KEY,
    Nome TEXT NOT NULL,
    Idade INTEGER
);

-- ========================
-- TABELA: Medico
-- ========================
CREATE TABLE Medico (
    IdMedico INTEGER PRIMARY KEY,
    Nome TEXT NOT NULL,
    IdEspecialidade INTEGER,
    FOREIGN KEY (IdEspecialidade) REFERENCES Especialidade(IdEspecialidade)
);

-- ========================
-- TABELA: Consulta
-- ========================
CREATE TABLE Consulta (
    IdConsulta INTEGER PRIMARY KEY,
    DataConsulta TEXT NOT NULL,
    HorarioConsulta TEXT NOT NULL,
    Observacoes TEXT,
    ValorConsulta REAL,
    IdPaciente INTEGER NOT NULL,
    IdMedico INTEGER NOT NULL,
    FOREIGN KEY (IdPaciente) REFERENCES Paciente(IdPaciente),
    FOREIGN KEY (IdMedico) REFERENCES Medico(IdMedico)
);
