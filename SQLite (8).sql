-- Создаем таблицу "players" для хранения информации об игроках
CREATE TABLE players (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(50) NOT NULL,
  best_score INT
);

-- Создаем таблицу "games" для хранения информации о каждой игре
CREATE TABLE games (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(50) NOT NULL,
  score INT,
  id_player INT,
  FOREIGN KEY (id_player) REFERENCES players(id)
);

-- Вставляем данные об игроках в таблицу "players"
INSERT INTO players (name, best_score) VALUES 
("Миша", 200),
("Ваня", 154),
("Дима", 178),
("Коля", 210);

-- Вставляем данные об играх в таблицу "games"
INSERT INTO games (name, score, id_player) VALUES 
("Миша", 110, 1),
("Миша", 200, 1),
("Дима", 178, 3),
("Коля", 10, 4),
("Коля", 30, 4);