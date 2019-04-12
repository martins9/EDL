type Autores = [String]
type Musica  = (String, Int, Int)

bandas :: [Autores]
bandas = [ ["Gilberto Gil"],
           ["Victor","Leo"],
           ["Gonzagao"],
           ["Claudinho","Bochecha"] ]

musicas :: [Musica]
musicas = [ ("Aquele Abraco", 1, 100),
            ("Esperando na Janela", 1, 150),
            ("Borboletas", 2, 120),
            ("Asa Branca", 3, 120),
            ("Assum Preto", 3, 140),
            ("Vem Morena", 3, 200),
            ("Nosso Sonho", 4, 150),
            ("Quero te Encontrar", 4, 100) ]

-- Somente o nome das músicas:
--func (v1, v2, v3) = v1
--main = print (map func musicas)


-- Somente músicas com >= 2min:
--func (v1, v2, v3) = v3 >= 120
--main = print (filter func musicas)


--Maior duração:
--func (v1, v2, v3) = v3
--x = map func musicas

--func2 atual maior = if atual > maior then
--                       atual
--                    else
--                       maior
                                                           
--main = print (foldr func2 0 x)


-- Nomes com >= 2min:
--func (v1, v2, v3) = v3 >= 120
--x = filter func musicas

--func2 (v1, v2, v3) = v1

--main = print (map func2 x)
