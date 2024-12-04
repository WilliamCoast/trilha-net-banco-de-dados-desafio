-- QUERY 1
SELECT 
	Nome, 
	Ano 
FROM 
	Filmes

-- QUERY 2 
SELECT 
	Nome, 
	Ano,
	Duracao
FROM 
	Filmes
ORDER BY 
	Ano

-- QUERY 3  
SELECT 
	Nome,
	Ano, 
	Duracao 
FROM 
	Filmes 
WHERE 
	Nome LIKE 'De Volta para o Futuro';

-- QUERY 4
SELECT 
	Nome,
	Ano, 
	Duracao
FROM 
	Filmes
WHERE
	Ano = 1997 

-- QUERY 5 
SELECT  
	Nome, 
	Ano, 
	Duracao
FROM 
Filmes 
WHERE 
ano > 2000

-- QUERY 6
SELECT 
    Nome, 
    Ano,
    Duracao 
FROM
    Filmes 
WHERE 
    Duracao > 100 AND Duracao < 150
ORDER BY 
    Duracao; 
	
-- QUERY 7
SELECT 
    Ano, 
    COUNT(*) AS QuantidadeFilmes
FROM 
    Filmes
GROUP BY 
    Ano
ORDER BY 
    SUM(Duracao) DESC;

-- QUERY 8

