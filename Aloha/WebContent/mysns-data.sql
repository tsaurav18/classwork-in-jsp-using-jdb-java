USE mysns;
INSERT INTO user VALUES("demon@gmail.com","123","demon", now());
INSERT INTO user VALUES("stefen@gmail.com","8766","stefen", now());
INSERT INTO user(id, password, name) VALUES("maria@gmail.com","4543","maria");

INSERT INTO feed(id, content) VALUES("demon@gmail.com","hello world");
INSERT INTO feed(id, content) VALUES("stefen@gmail.com","aloha world");