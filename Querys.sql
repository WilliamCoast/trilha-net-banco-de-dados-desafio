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
SELECT 
	 id, 
	 PrimeiroNome, 
	 UltimoNome,
	 Genero 
FROM 
	Atores 
WHERE 
	Genero = 'M';

-- QUERY 9
SELECT 
	id, 
	PrimeiroNome, 
	UltimoNome,
	Genero 
FROM 
	Atores 
WHERE  
	Genero = 'F'
ORDER BY 
	PrimeiroNome

-- QUERY 10
SELECT 
    Filmes.Nome,
    Generos.Genero
FROM 
    Filmes
INNER JOIN 
    FilmesGenero
ON 
    Filmes.Id = FilmesGenero.IdFilme
INNER JOIN 
    Generos
ON 
    FilmesGenero.IdGenero = Generos.Id; 

-- QUERY 11
SELECT 
	Filmes.Nome, 
	Generos.Genero
FROM 
	Filmes 
INNER JOIN 
	FilmesGenero
ON
	Filmes.Id = FilmesGenero.idFilme
INNER JOIN 
	Generos 
ON
	Generos.Id = FilmesGenero.IdGenero
WHERE 
	Generos.Genero = 'Mistério'

-- QUERY 12
SELECT 
	Filmes.Nome, 
	Atores.PrimeiroNome, 
	Atores.UltimoNome, 
	ElencoFilme.Papel 
FROM 
	Filmes 
INNER JOIN
	ElencoFilme
ON
	Filmes.Id = ElencoFilme.IdFilme 
INNER JOIN
	Atores
ON
	Atores.Id = ElencoFilme.IdAtor 

