--1

SELECT 
nome,
ano
FROM FILMES

--2

SELECT 
nome,
ano
FROM FILMES
order by
ano

--3

SELECT 
nome, ano, duracao
FROM filmes
WHERE nome = 'De Volta Para o Futuro';

--4

SELECT *
FROM filmes
WHERE ano = 1997;

--5

SELECT *
FROM Filmes
WHERE Ano > 2000;

--6

SELECT Nome, Duracao
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ;

--7

SELECT Ano, COUNT(*) AS QuantidadeFilmes, SUM(Duracao) AS DuracaoTotal
FROM Filmes
GROUP BY Ano
ORDER BY DuracaoTotal DESC;

--8

SELECT PrimeiroNome, UltimoNome
FROM Atores
WHERE Genero = 'Masculino';

--9

SELECT PrimeiroNome, UltimoNome
FROM Atores
WHERE Genero = 'Feminino'
ORDER BY PrimeiroNome ASC;

--10

SELECT f.Nome AS Filme, g.Genero
FROM Filmes f
JOIN FilmesGenero fg ON f.Id = fg.IdFilme
JOIN Generos g ON fg.IdGenero = g.Id;

--11

SELECT f.Nome AS Filme, g.Genero
FROM Filmes f
JOIN FilmesGenero fg ON f.Id = fg.IdFilme
JOIN Generos g ON fg.IdGenero = g.Id
WHERE g.Genero = 'Mistério';

--12

SELECT f.Nome AS Filme, a.PrimeiroNome, a.ÚltimoNome, ef.Papel
FROM ElencoFilme ef
JOIN Filmes f ON ef.IdFilme = f.Id
JOIN Atores a ON ef.IdAtor = a.Id;





