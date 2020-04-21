INSERT INTO category(name) VALUES ('main');
INSERT INTO category(name) VALUES ('soup');
INSERT INTO category(name) VALUES ('side');

INSERT INTO item(detail_hash, image, alt, title, description, n_price, s_price, category, category_key)
VALUES ('SD001', 'http://image.url', '페퍼로니피자 300g', '페퍼로니피자 300g', '혼자 먹으면 꿀맛', '9,000원', null, 1, 'main');

INSERT INTO item(detail_hash, image, alt, title, description, n_price, s_price, category, category_key)
VALUES ('SD002', 'http://image.url', '크림스프 100g', '크림스프 100g', '그냥 먹으면 꿀맛', '4,000원', null, 2, 'soup');

INSERT INTO item(detail_hash, image, alt, title, description, n_price, s_price, category, category_key)
VALUES ('SD003', 'http://image.url', '치아버터 빵 100g', '치아버터 빵 100g', '커피랑 먹으면 꿀맛', '3,000원', null, 3, 'side');

INSERT INTO item(detail_hash, image, alt, title, description, n_price, s_price, category, category_key)
VALUES ('SD001', 'http://image.url', '고추바사삭 300g', '고추바사삭 300g', '배달시켜 먹으면 꿀맛', '12,000원', null, 1, 'main2');