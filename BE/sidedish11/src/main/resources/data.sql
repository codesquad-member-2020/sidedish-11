INSERT INTO category(name) VALUES ('main');
INSERT INTO category(name) VALUES ('soup');
INSERT INTO category(name) VALUES ('side');

INSERT INTO item(hash, image, title, description, normal_price, sale_price, point, delivery_info, delivery_fee, category)
VALUES ('SD001', 'http://image.url', '페퍼로니피자 300g', '혼자 먹으면 꿀맛', '9,000원', null, '300원', '서울 경기 새벽배송 수령 가능한 상품', '2,500원', 1);

INSERT INTO item(hash, image, title, description, normal_price, sale_price, point, delivery_info, delivery_fee, category)
VALUES ('SD002', 'http://image.url', '크림스프 100g', '그냥 먹으면 꿀맛', '4,000원', null, '200원', '서울 경기 새벽배송 수령 가능한 상품', '2,000원', 2);

INSERT INTO item(hash, image, title, description, normal_price, sale_price, point, delivery_info, delivery_fee, category)
VALUES ('SD003', 'http://image.url', '치아버터 빵 100g', '커피랑 먹으면 꿀맛', '3,000원', null, '500원', '서울 경기 새벽배송 수령 가능한 상품', '2,500원', 3);

INSERT INTO item(hash, image, title, description, normal_price, sale_price, point, delivery_info, delivery_fee, category)
VALUES ('SD001', 'http://image.url', '고추바사삭 300g', '배달시켜 먹으면 꿀맛', '12,000원', null, '150원', '서울 경기 새벽배송 수령 가능한 상품', '3,000원', 1);

INSERT INTO badge(name, item) VALUES ('이벤트특가', 1);
INSERT INTO badge(name, item) VALUES ('론칭특가', 1);
INSERT INTO badge(name, item) VALUES ('론칭특가', 2);
INSERT INTO badge(name, item) VALUES ('이벤트특가', 3);

INSERT INTO delivery_type(name, item) VALUES ('새벽배송', 1);
INSERT INTO delivery_type(name, item) VALUES ('전국택배', 1);
INSERT INTO delivery_type(name, item) VALUES ('새벽배송', 2);
INSERT INTO delivery_type(name, item) VALUES ('전국택배', 3);

