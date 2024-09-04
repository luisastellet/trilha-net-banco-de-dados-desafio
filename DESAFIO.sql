-- Questão 1
SELECT Nome, Ano FROM Filmes

-- Questão 2
SELECT Nome, Ano, Duracao FROM Filmes
ORDER BY Ano

-- Questão 3
SELECT Nome, Ano, Duracao FROM Filmes WHERE Nome = 'De Volta para o Futuro'

-- Questão 4
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano = '1997'

-- Questão 5
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano > 2000

-- Questão 6
SELECT Nome, Ano, Duracao FROM Filmes WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao

-- Questão 7
SELECT Ano, COUNT(*) AS Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC;

-- Questão 8
SELECT * FROM Atores WHERE Genero = 'M'

-- Questão 9
SELECT * FROM Atores WHERE Genero = 'F'
ORDER BY PrimeiroNome

-- Questão 10
SELECT F.NOME AS NomeFilme, G.Genero AS Genero
FROM FILMES F
INNER JOIN FILMESGENERO FG ON F.ID = FG.IDFILME
INNER JOIN Generos G ON FG.IDGENERO = G.ID;

-- Questão 11
SELECT F.Nome AS Nome, G.Genero AS Genero
FROM Filmes F
INNER JOIN FilmesGenero FG ON F.ID = FG.IdFilme
INNER JOIN Generos G ON FG.IdGenero = G.Id
WHERE Genero = 'Mistério';

-- Questão 12
SELECT F.Nome AS Nome, A.PrimeiroNome AS PrimeiroNome, A.UltimoNome AS UltimoNome, EF.Papel AS Papel
FROM Filmes F
INNER JOIN ElencoFilme EF ON F.Id = EF.IdFilme
INNER JOIN Atores A ON EF.IdAtor = A.Id

