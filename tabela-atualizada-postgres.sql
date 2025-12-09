integer
real
serial
numeric

varchar(n)
char(n)
text

boolean

date
time
timestamp

CREATE TABLE aluno (
	id SERIAL, 
	nome VARCHAR(n),
	cpf CHAR(11),
	observacao TEXT,
	idade INTEGER,
	dinheiro NUMERIC(10,2),
	altura REAL,
	ativo BOOLEAN,
	data_nascimento DATE,
	hora_aula TIME,
	matricula_em TIMESTAMP
);

SELECT * FROM aluno;

INSERT INTO aluno (
		nome,
		cpf,
		observacao,
		idade, 
		dinheiro,
		altura,
		ativo,
		data_nascimento,
		hora_aula,
		matricula_em

)
VALUES (
	'Luiz',
	'12345678901',
	'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
	12,
	100.50,
	TRUE,
	'2012-11-22',
	'17:30:00',
	'2025-11-09 19:40:08'
);


SELECT *
	FROM aluno
WHERE id = 1;

UPDATE aluno 
	SET  nome = 'Ana',
	cpf = '10954783210',
	observacao = 'Teste',
	idade = 15, 
	dinheiro = 15.23,
	altura = 1.65,
	ativo = FALSE,
	data_nascimento = '2015-05-12',
	hora_aula = '13:00:00',
	matricula_em = '2025-01-02 15:00:00'


SELECT *
	FROM aluno 
WHERE nome = 'Ana';

DELETE 
	FROM aluno 
WHERE nome = 'Ana';

DELETE
	FROM aluno
WHERE nome = 'Luiz Claudio';

INSERT INTO aluno (nome) VALUES ('Luiz Claudio');


SELECT nome AS "Nome do Aluno",
	   idade,
	   matricula_em AS "quando se matriculou"
	FROM aluno;


INSERT INTO aluno (nome) VALUES ('Luiz Claudio');
INSERT INTO aluno (nome) VALUES ('Luiz Henrique');
INSERT INTO aluno (nome) VALUES ('Cristiano Ronaldo');
INSERT INTO aluno (nome) VALUES ('Diego');





SELECT * 
	FROM aluno
WHERE nome LIKE '%o%o%'
;



SELECT *
	FROM aluno
WHERE idade <> 51



SELECT *
	FROM aluno
WHERE idade < 100



SELECT *
	FROM aluno
WHERE idade BETWEEN 10 AND 60

SELECT *
	FROM aluno 
	WHERE ativo IS NULL;



--------------------------------------------------------------------------------------



DROP TABLE curso;
CREATE TABLE curso (
	id INTEGER PRIMARY KEY, 
	nome VARCHAR(255) NOT NULL
);


INSERT INTO curso (id, nome) VALUES (NULL, NULL);
INSERT INTO curso (id, nome) VALUES (1, 'HTML');
INSERT INTO curso (id, nome) VALUES (2, 'JavaScript');

SELECT * FROM curso;
SELECT * FROM aluno;

DROP TABLE aluno;


CREATE TABLE aluno (
	id SERIAL PRIMARY KEY,
	nome VARCHAR(255) NOT NULL
);

INSERT INTO aluno (nome) VALUES ('Diogo');
INSERT INTO aluno (nome) VALUES ('Vinícius');

SELECT * FROM aluno;
SELECT * FROM curso;

DROP TABLE aluno_curso;
CREATE TABLE aluno_curso (
	aluno_id INTEGER,
	curso_id INTEGER, 
	PRIMARY KEY (aluno_id, curso_id), 
	
	FOREIGN KEY (aluno_id)
	REFERENCES aluno (id),

	FOREIGN KEY (curso_id)
	REFERENCES curso (id)
);

INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (1, 1);
INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (2, 1);

INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (3, 1);
	

SELECT * FROM aluno WHERE id = 1;
SELECT * FROM curso WHERE id = 1;

SELECT * FROM aluno WHERE id = 2;
SELECT * FROM curso WHERE id = 1;

SELECT * FROM aluno WHERE id = 3;
SELECT * FROM curso WHERE id = 1;


	





	





	


