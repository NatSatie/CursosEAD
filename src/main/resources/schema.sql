ALTER TABLE IF EXISTS CURSO_ALUNO DROP CONSTRAINT IF EXISTS FK_ALUNO_CURSO_ALUNO;
ALTER TABLE IF EXISTS CURSO_ALUNO DROP CONSTRAINT IF EXISTS FK_ALUNO_CURSO_CURSO;


DROP TABLE IF EXISTS ALUNO;
CREATE TABLE ALUNO (
   ID INT AUTO_INCREMENT  PRIMARY KEY,
   NOME VARCHAR(50) NOT NULL,
   MATRICULA VARCHAR(50) NULL
);

DROP TABLE IF EXISTS CURSO;
CREATE TABLE CURSO (
   ID INT AUTO_INCREMENT  PRIMARY KEY,
   NOME VARCHAR(50) NOT NULL
);

DROP TABLE IF EXISTS CURSO_ALUNO;
CREATE TABLE CURSO_ALUNO (
   ID INT AUTO_INCREMENT  PRIMARY KEY,
   ALUNO_ID INT NOT NULL,
   CURSO_ID INT NOT NULL,

   CONSTRAINT FK_CURSO_ALUNO_ALUNO FOREIGN KEY (ALUNO_ID) REFERENCES ALUNO(ID),
   CONSTRAINT FK_CURSO_ALUNO_CURSO FOREIGN KEY (CURSO_ID) REFERENCES CURSO(ID)
);
