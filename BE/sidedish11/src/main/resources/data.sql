--------------------------------------
---- CATEGORY : MAIN, SOUP, SIDE -----

INSERT INTO category(title, name, description) VALUES ('main', '든든한 반찬', '담기만 하면 완성되는 메인반찬');
INSERT INTO category(title, name, description) VALUES ('soup', '국, 찌개', '김이 모락모락 국, 찌개');
INSERT INTO category(title, name, description) VALUES ('side', '밑반찬', '언제 먹어도 든든한 반찬');

---------------------------------
---- CATEGORY : MAIN <ITEM> -----

INSERT INTO item(hash, image, title, description, normal_price, sale_price, point, delivery_info, delivery_fee, stock, category, category_key)
VALUES ('HBDEF', 'http://public.codesquad.kr/jk/storeapp/data/2d3f99a9a35601f4e98837bc4d39b2c8.jpg',
'[미노리키친] 규동 250g', '일본인의 소울푸드! 한국인도 좋아하는 소고기덮밥', 7000, 6500, 70,
'서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가) [월 · 화 · 수 · 목 · 금 · 토] 수령 가능한 상품입니다.', '2,500원 (40,000원 이상 구매 시 무료)', 50, 1, 0);

INSERT INTO item(hash, image, title, description, normal_price, sale_price, point, delivery_info, delivery_fee, stock, category, category_key)
VALUES ('HDF73', 'http://public.codesquad.kr/jk/storeapp/data/7674311a02ba7c88675f3186ddaeef9e.jpg',
'[빅마마의밥친구] 아삭 고소한 연근고기조림 250g', '편식하는 아이도 좋아하는 건강한 연근조림', 5500, null, 55,
'서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가) [화 · 수 · 목 · 금 · 토] 수령 가능한 상품입니다.', '2,500원 (40,000원 이상 구매 시 무료)', 330, 1, 1);

INSERT INTO item(hash, image, title, description, normal_price, sale_price, point, delivery_info, delivery_fee, stock, category, category_key)
VALUES ('HF778', 'http://public.codesquad.kr/jk/storeapp/data/cad8eee316cf7151e07638aa57b32a9d.jpg',
'[소중한식사] 골뱅이무침 195g', '매콤새콤달콤, 반찬으로도 안주로도 좋은', 7000, 6300, 70,
'서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가) [화 · 수 · 목 · 금] 수령 가능한 상품입니다.', '2,500원 (40,000원 이상 구매 시 무료)', 50, 1, 2);

INSERT INTO item(hash, image, title, description, normal_price, sale_price, point, delivery_info, delivery_fee, stock, category, category_key)
VALUES ('HFB53', 'http://public.codesquad.kr/jk/storeapp/data/b6beada6b89af950289003d929936d9c.jpg',
'[옹가솜씨] 꽁치간장조림 240g', '생강 향이 산뜻한', 5800, null, 58,
'서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가) [월 · 화 · 수 · 목 · 금 · 토] 수령 가능한 상품입니다.', '2,500원 (40,000원 이상 구매 시 무료)', 100, 1, 3);

INSERT INTO item(hash, image, title, description, normal_price, sale_price, point, delivery_info, delivery_fee, stock, category, category_key)
VALUES ('H077F', 'http://public.codesquad.kr/jk/storeapp/data/0221110ead70dfd455e40703bbdd6252.jpg',
'[마더앤찬] 코다리구이 320g', '큼지막하고 살집 많은 동태 한 마리로 만든 코다리구이입니다.', 7500, 6750, 75,
'서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가) [화 · 수 · 목 · 금 · 토] 수령 가능한 상품입니다.', '2,500원 (40,000원 이상 구매 시 무료)', 100, 1, 4);

INSERT INTO item(hash, image, title, description, normal_price, sale_price, point, delivery_info, delivery_fee, stock, category, category_key)
VALUES ('H4665', 'http://public.codesquad.kr/jk/storeapp/data/385f4106ac26f6e4fe7c640714f405a5.jpg',
'[남도애꽃] 반건조 문어조림 120g', '씹을수록 감칠맛나는 문어살의 쫄깃함', 4600, null, 46,
'서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가) [화 · 수 · 목 · 금 · 토] 수령 가능한 상품입니다.', '2,500원 (40,000원 이상 구매 시 무료)', 900, 1, 5);

INSERT INTO item(hash, image, title, description, normal_price, sale_price, point, delivery_info, delivery_fee, stock, category, category_key)
VALUES ('H1AA9', 'http://public.codesquad.kr/jk/storeapp/data/2455226945d52f5aefd51f35d663bb16.jpg',
'[마샐미디쉬] 매콤마늘쫑 해산물볶음 180g', '탱글탱글한 새우와 오징어를 마늘쫑과 함께 매콤하게 볶아냈어요.', 6900, 6210, 69,
'서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가) [월 · 화 · 수 · 목 · 금 · 토] 수령 가능한 상품입니다.', '2,500원 (40,000원 이상 구매 시 무료)', 100, 1, 6);

INSERT INTO item(hash, image, title, description, normal_price, sale_price, point, delivery_info, delivery_fee, stock, category, category_key)
VALUES ('HEDFB', 'http://public.codesquad.kr/jk/storeapp/data/bc3b777115e8377a48c7bd762fe5fdc9.jpg',
'[빅마마의밥친구] 비빔오징어 150g', '달콤한 신야초발효액이 포인트!.', 5000, null, 50,
'서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가) [월 · 화 · 수 · 목 · 금 · 토] 수령 가능한 상품입니다.', '2,500원 (40,000원 이상 구매 시 무료)', 500, 1, 7);

---------------------------------
---- CATEGORY : SOUP <ITEM> -----

INSERT INTO item(hash, image, title, description, normal_price, sale_price, point, delivery_info, delivery_fee, stock, category, category_key)
VALUES ('H72C3', 'http://public.codesquad.kr/jk/storeapp/data/d1fccf125f0a78113d0e06cb888f2e74.jpg',
'[수하동] 특곰탕 850g', '100% 한우양지로 끓여낸 70년전통의 서울식곰탕', 15000, 14200, 150,
'서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가) [월 · 화 · 수 · 목 · 금] 수령 가능한 상품입니다.', '2,500원 (40,000원 이상 구매 시 무료)', 200, 2, 0);

INSERT INTO item(hash, image, title, description, normal_price, sale_price, point, delivery_info, delivery_fee, stock, category, category_key)
VALUES ('HA6EE', 'http://public.codesquad.kr/jk/storeapp/data/c069bc32cb37727c59e1f0c2839311a0.jpg',
'[빅마마의밥친구] 된장찌개 900g', '항아리에서 숙성시킨 집된장으로만 맛을내 짜지 않은 된장찌개', 10000, null, 100,
'서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가) [월 · 화 · 수 · 목 · 금] 수령 가능한 상품입니다.', '2,500원 (40,000원 이상 구매 시 무료)', 200, 2, 1);

INSERT INTO item(hash, image, title, description, normal_price, sale_price, point, delivery_info, delivery_fee, stock, category, category_key)
VALUES ('H8CD0', 'http://public.codesquad.kr/jk/storeapp/data/f31fc3f5828c27ff60e4cf89a862d31c.jpg',
'[탐나는밥상] 동태탕 1000g', '칼칼한 국물이 속 풀기에 딱 좋은 동태탕', 14000, null, 140,
'서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가) [월 · 화 · 수 · 목 · 금] 수령 가능한 상품입니다.', '2,500원 (40,000원 이상 구매 시 무료)', 200, 2, 2);

INSERT INTO item(hash, image, title, description, normal_price, sale_price, point, delivery_info, delivery_fee, stock, category, category_key)
VALUES ('HE2E9', 'http://public.codesquad.kr/jk/storeapp/data/6edbb16da52708e8533b85fbf743f882.jpg',
'[국물닷컴] 치즈부대찌개 600g', '안주용 부대찌개와는 달라 밥말아먹기 딱 좋은', 5500, 4300, 55,
'서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가) [월 · 화 · 수 · 목 · 금 · 토] 수령 가능한 상품입니다.', '2,500원 (40,000원 이상 구매 시 무료)', 200, 2, 3);

INSERT INTO item(hash, image, title, description, normal_price, sale_price, point, delivery_info, delivery_fee, stock, category, category_key)
VALUES ('HAA47', 'http://public.codesquad.kr/jk/storeapp/data/892f3e7f043bfa7dbbcd58f88eecac36.jpg',
'[집밥의완성] 스키야키 1.5kg (2~3인분)', '진한 풍미의 일본식 전골, 스키야키', 19800, 10000, 198,
'서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가) [월 · 화 · 수 · 목 · 금 · 토] 수령 가능한 상품입니다.', '2,500원 (40,000원 이상 구매 시 무료)', 200, 2, 4);

INSERT INTO item(hash, image, title, description, normal_price, sale_price, point, delivery_info, delivery_fee, stock, category, category_key)
VALUES ('H3254', 'http://public.codesquad.kr/jk/storeapp/data/ae571e13d18fd4f0f40d685d2c8fe8f1.jpg',
'[새로미부산어묵] 프리미엄 어묵탕세트', '밀가루 0% 프리미엄 어묵에 어묵스프까지 드려요!', 18000, 14400, 180,
'서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가) [월 · 화 · 수 · 목 · 금 · 토] 수령 가능한 상품입니다.', '2,500원 (40,000원 이상 구매 시 무료)', 200, 2, 5);

INSERT INTO item(hash, image, title, description, normal_price, sale_price, point, delivery_info, delivery_fee, stock, category, category_key)
VALUES ('H26C7', 'http://public.codesquad.kr/jk/storeapp/data/8fd330b5f5dbccbcbf4f5731e5e9e29b.jpg',
'[모이세] 육개장 1팩(600g)', '제주3대해장국 맛집의 인기메뉴', 5900, 4400, 59,
'서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가) [월 · 화 · 수 · 목 · 금 · 토] 수령 가능한 상품입니다.', '2,500원 (40,000원 이상 구매 시 무료)', 200, 2, 6);

INSERT INTO item(hash, image, title, description, normal_price, sale_price, point, delivery_info, delivery_fee, stock, category, category_key)
VALUES ('HFFF9', 'http://public.codesquad.kr/jk/storeapp/data/2416b58044d49f0d3a24256f8e76163b.jpg',
'[마더앤찬] 명란감자국  630ml', '간간한 저염명란과 고소한 감자가 조화로운 국이에요', 7000, 6300, 70,
'서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가) [월 · 화 · 수 · 목 · 금 · 토] 수령 가능한 상품입니다.', '2,500원 (40,000원 이상 구매 시 무료)', 200, 2, 7);

---------------------------------
---- CATEGORY : SIDE <ITEM> -----

INSERT INTO item(hash, image, title, description, normal_price, sale_price, point, delivery_info, delivery_fee, stock, category, category_key)
VALUES ('HBBCC', 'http://public.codesquad.kr/jk/storeapp/data/fdb0d5fcfb86e332505785225a6d9ade.jpg',
'[마샐미디쉬] 유자소스 연근무침 250g', '향긋한 유자향과 아삭한 연근', 6500, null, 65,
'서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가) [월 · 화 · 수 · 목 · 금] 수령 가능한 상품입니다.', '2,500원 (40,000원 이상 구매 시 무료)', 9000, 3, 0);

INSERT INTO item(hash, image, title, description, normal_price, sale_price, point, delivery_info, delivery_fee, stock, category, category_key)
VALUES ('H1939', 'http://public.codesquad.kr/jk/storeapp/data/e5646e5fc09a01a9243979b229e0572b.jpg',
'[동네부엌] 쇠고기야채장조림 200g', '부드러운 고기부터 밥비벼먹기 딱좋은 국물까지', 7400, null, 74,
'서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가) [월 · 화 · 수 · 목 · 금] 수령 가능한 상품입니다.', '2,500원 (40,000원 이상 구매 시 무료)', 300, 3, 1);

INSERT INTO item(hash, image, title, description, normal_price, sale_price, point, delivery_info, delivery_fee, stock, category, category_key)
VALUES ('H8EA5', 'http://public.codesquad.kr/jk/storeapp/data/4cfd1954861ebd18b5b53e558a8e902e.jpg',
'[소중한식사] 도라지초무침 150g', '새콤달콤 입맛 돋우는', 4000, null, 40,
'서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가) [월 · 화 · 수 · 목 · 금] 수령 가능한 상품입니다.', '2,500원 (40,000원 이상 구매 시 무료)', 300, 3, 2);

INSERT INTO item(hash, image, title, description, normal_price, sale_price, point, delivery_info, delivery_fee, stock, category, category_key)
VALUES ('H602F', 'http://public.codesquad.kr/jk/storeapp/data/422befe07f7e2860b9a83a8d7049ec2e.jpg',
'[미노리키친] 일본식 우엉조림(킨피라고보) 80g', '한국식 우엉조림과는 다른 진한 감칠맛', 3300, null, 33,
'서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가) [월 · 화 · 수 · 목 · 금] 수령 가능한 상품입니다.', '2,500원 (40,000원 이상 구매 시 무료)', 3000, 3, 3);

INSERT INTO item(hash, image, title, description, normal_price, sale_price, point, delivery_info, delivery_fee, stock, category, category_key)
VALUES ('H9F0B', 'http://public.codesquad.kr/jk/storeapp/data/d0b5d2be962947d9534e2140d1b34b2d.jpg',
'[빅마마의밥친구] 갈치포무침 150g', '쉽게 접할수 없는 꼬순내가득 갈치포 무침', 7000, null, 70,
'서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가) [월 · 화 · 수 · 목 · 금] 수령 가능한 상품입니다.', '2,500원 (40,000원 이상 구매 시 무료)', 300, 3, 4);

INSERT INTO item(hash, image, title, description, normal_price, sale_price, point, delivery_info, delivery_fee, stock, category, category_key)
VALUES ('H0FC6', 'http://public.codesquad.kr/jk/storeapp/data/f6817349118d4c671da8dca9065649a9.jpg',
'[마더앤찬] 명란치즈계란말이 230g', '아이반찬으로 최고 계란말이', 4300, 3870, 43,
'서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가) [월 · 화 · 수 · 목 · 금] 수령 가능한 상품입니다.', '2,500원 (40,000원 이상 구매 시 무료)', 300, 3, 5);

INSERT INTO item(hash, image, title, description, normal_price, sale_price, point, delivery_info, delivery_fee, stock, category, category_key)
VALUES ('HCCFE', 'http://public.codesquad.kr/jk/storeapp/data/757878b14ee5a8d5af905c154fc38f01.jpg',
'[옹가솜씨] 달걀곤약조림 330g', '칼로리 부담 쭉쭉 내린', 5800, null, 58,
'서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가) [월 · 화 · 수 · 목 · 금] 수령 가능한 상품입니다.', '2,500원 (40,000원 이상 구매 시 무료)', 300, 3, 6);

INSERT INTO item(hash, image, title, description, normal_price, sale_price, point, delivery_info, delivery_fee, stock, category, category_key)
VALUES ('HB9C1', 'http://public.codesquad.kr/jk/storeapp/data/043cf496f07899e7515f761e29d1ffa9.jpg',
'[너의반찬] 미소된장 고추무침 200g', '고소한 양념 때문에 손이 자꾸 가요', 4500, null, 45,
'서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가) [월 · 화 · 수 · 목 · 금] 수령 가능한 상품입니다.', '2,500원 (40,000원 이상 구매 시 무료)', 300, 3, 7);

---------------------------------
------------ BADGE --------------

INSERT INTO badge(name, item, item_key) VALUES ('이벤트특가', 1, 0);
INSERT INTO badge(name, item, item_key) VALUES ('이벤트특가', 3, 0);
INSERT INTO badge(name, item, item_key) VALUES ('론칭특가', 5, 0);
INSERT INTO badge(name, item, item_key) VALUES ('론칭특가', 7, 0);
INSERT INTO badge(name, item, item_key) VALUES ('이벤트특가', 9, 0);
INSERT INTO badge(name, item, item_key) VALUES ('이벤트특가', 12, 0);
INSERT INTO badge(name, item, item_key) VALUES ('이벤트특가', 13, 0);
INSERT INTO badge(name, item, item_key) VALUES ('이벤트특가', 14, 0);
INSERT INTO badge(name, item, item_key) VALUES ('론칭특가', 14, 1);
INSERT INTO badge(name, item, item_key) VALUES ('론칭특가', 15, 0);
INSERT INTO badge(name, item, item_key) VALUES ('론칭특가', 16, 0);
INSERT INTO badge(name, item, item_key) VALUES ('이벤트특가', 22, 0);

---------------------------------
------------ COLOR --------------

INSERT INTO color(name, item, item_key) VALUES ('#2AC1BC', 1, 0);
INSERT INTO color(name, item, item_key) VALUES ('#2AC1BC', 3, 0);
INSERT INTO color(name, item, item_key) VALUES ('#F34223', 5, 0);
INSERT INTO color(name, item, item_key) VALUES ('#F34223', 7, 0);
INSERT INTO color(name, item, item_key) VALUES ('#2AC1BC', 9, 0);
INSERT INTO color(name, item, item_key) VALUES ('#2AC1BC', 12, 0);
INSERT INTO color(name, item, item_key) VALUES ('#2AC1BC', 13, 0);
INSERT INTO color(name, item, item_key) VALUES ('#2AC1BC', 14, 0);
INSERT INTO color(name, item, item_key) VALUES ('#F34223', 14, 1);
INSERT INTO color(name, item, item_key) VALUES ('#F34223', 15, 0);
INSERT INTO color(name, item, item_key) VALUES ('#F34223', 16, 0);
INSERT INTO color(name, item, item_key) VALUES ('#2AC1BC', 22, 0);

---------------------------------
-------- DELIVERY TYPE ----------

INSERT INTO delivery_type(name, item, item_key) VALUES ('새벽배송', 1, 0);
INSERT INTO delivery_type(name, item, item_key) VALUES ('전국택배', 1, 1);
INSERT INTO delivery_type(name, item, item_key) VALUES ('새벽배송', 2, 0);
INSERT INTO delivery_type(name, item, item_key) VALUES ('전국택배', 2, 1);
INSERT INTO delivery_type(name, item, item_key) VALUES ('새벽배송', 3, 0);
INSERT INTO delivery_type(name, item, item_key) VALUES ('전국택배', 3, 1);
INSERT INTO delivery_type(name, item, item_key) VALUES ('새벽배송', 4, 0);
INSERT INTO delivery_type(name, item, item_key) VALUES ('전국택배', 4, 1);
INSERT INTO delivery_type(name, item, item_key) VALUES ('새벽배송', 5, 0);
INSERT INTO delivery_type(name, item, item_key) VALUES ('전국택배', 5, 1);
INSERT INTO delivery_type(name, item, item_key) VALUES ('새벽배송', 6, 0);
INSERT INTO delivery_type(name, item, item_key) VALUES ('전국택배', 6, 1);
INSERT INTO delivery_type(name, item, item_key) VALUES ('새벽배송', 7, 0);
INSERT INTO delivery_type(name, item, item_key) VALUES ('전국택배', 7, 1);
INSERT INTO delivery_type(name, item, item_key) VALUES ('새벽배송', 8, 0);
INSERT INTO delivery_type(name, item, item_key) VALUES ('전국택배', 8, 1);
INSERT INTO delivery_type(name, item, item_key) VALUES ('새벽배송', 9, 0);
INSERT INTO delivery_type(name, item, item_key) VALUES ('전국택배', 9, 1);
INSERT INTO delivery_type(name, item, item_key) VALUES ('새벽배송', 10, 0);
INSERT INTO delivery_type(name, item, item_key) VALUES ('전국택배', 10, 1);
INSERT INTO delivery_type(name, item, item_key) VALUES ('새벽배송', 11, 0);
INSERT INTO delivery_type(name, item, item_key) VALUES ('전국택배', 11, 1);
INSERT INTO delivery_type(name, item, item_key) VALUES ('새벽배송', 12, 0);
INSERT INTO delivery_type(name, item, item_key) VALUES ('전국택배', 12, 1);
INSERT INTO delivery_type(name, item, item_key) VALUES ('새벽배송', 13, 0);
INSERT INTO delivery_type(name, item, item_key) VALUES ('전국택배', 13, 1);
INSERT INTO delivery_type(name, item, item_key) VALUES ('새벽배송', 14, 0);
INSERT INTO delivery_type(name, item, item_key) VALUES ('전국택배', 14, 1);
INSERT INTO delivery_type(name, item, item_key) VALUES ('새벽배송', 15, 0);
INSERT INTO delivery_type(name, item, item_key) VALUES ('전국택배', 15, 1);
INSERT INTO delivery_type(name, item, item_key) VALUES ('새벽배송', 16, 0);
INSERT INTO delivery_type(name, item, item_key) VALUES ('전국택배', 16, 1);
INSERT INTO delivery_type(name, item, item_key) VALUES ('새벽배송', 17, 0);
INSERT INTO delivery_type(name, item, item_key) VALUES ('전국택배', 17, 1);
INSERT INTO delivery_type(name, item, item_key) VALUES ('새벽배송', 18, 0);
INSERT INTO delivery_type(name, item, item_key) VALUES ('전국택배', 18, 1);
INSERT INTO delivery_type(name, item, item_key) VALUES ('새벽배송', 19, 0);
INSERT INTO delivery_type(name, item, item_key) VALUES ('전국택배', 19, 1);
INSERT INTO delivery_type(name, item, item_key) VALUES ('새벽배송', 20, 0);
INSERT INTO delivery_type(name, item, item_key) VALUES ('전국택배', 20, 1);
INSERT INTO delivery_type(name, item, item_key) VALUES ('새벽배송', 21, 0);
INSERT INTO delivery_type(name, item, item_key) VALUES ('전국택배', 21, 1);
INSERT INTO delivery_type(name, item, item_key) VALUES ('새벽배송', 22, 0);
INSERT INTO delivery_type(name, item, item_key) VALUES ('전국택배', 22, 1);
INSERT INTO delivery_type(name, item, item_key) VALUES ('새벽배송', 23, 0);
INSERT INTO delivery_type(name, item, item_key) VALUES ('전국택배', 23, 1);
INSERT INTO delivery_type(name, item, item_key) VALUES ('새벽배송', 24, 0);
INSERT INTO delivery_type(name, item, item_key) VALUES ('전국택배', 24, 1);

---------------------------------
---- THUMB IMAGE : MAIN ---------

INSERT INTO thumb_image(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4cce011a4a352c22cd399a60271b4921.jpg', 1, 0);
INSERT INTO thumb_image(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/6ef14155afc5b47e8c9efd762f7a6096.jpg', 1, 1);
INSERT INTO thumb_image(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/8744504ff3bc315f901dca1f26fe63a1.jpg', 1, 2);
INSERT INTO thumb_image(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/e30bd6de9340fc05db3cd1d1329b2c56.jpg', 1, 3);

INSERT INTO thumb_image(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/0221110ead70dfd455e40703bbdd6252.jpg', 2, 0);
INSERT INTO thumb_image(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/2d408898494ac950d7d2cfd6c36d59c2.jpg', 2, 1);
INSERT INTO thumb_image(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/62c8bb77facfc9c3be81f9bf45b27f2a.jpg', 2, 2);
INSERT INTO thumb_image(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/f6d73afc0ebc1efa71eaea32e9d846f2.jpg', 2, 3);

INSERT INTO thumb_image(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/0f95f44ea8e2e7930321def493753a48.jpg', 3, 0);
INSERT INTO thumb_image(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/2d408898494ac950d7d2cfd6c36d59c2.jpg', 3, 1);
INSERT INTO thumb_image(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/62c8bb77facfc9c3be81f9bf45b27f2a.jpg', 3, 2);
INSERT INTO thumb_image(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/f6d73afc0ebc1efa71eaea32e9d846f2.jpg', 3, 3);

INSERT INTO thumb_image(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/385f4106ac26f6e4fe7c640714f405a5.jpg', 4, 0);
INSERT INTO thumb_image(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/2d408898494ac950d7d2cfd6c36d59c2.jpg', 4, 1);
INSERT INTO thumb_image(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/62c8bb77facfc9c3be81f9bf45b27f2a.jpg', 4, 2);
INSERT INTO thumb_image(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/f6d73afc0ebc1efa71eaea32e9d846f2.jpg', 4, 3);

INSERT INTO thumb_image(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/b6beada6b89af950289003d929936d9c.jpg', 5, 0);
INSERT INTO thumb_image(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/2d408898494ac950d7d2cfd6c36d59c2.jpg', 5, 1);
INSERT INTO thumb_image(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/62c8bb77facfc9c3be81f9bf45b27f2a.jpg', 5, 2);
INSERT INTO thumb_image(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/f6d73afc0ebc1efa71eaea32e9d846f2.jpg', 5, 3);

INSERT INTO thumb_image(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/2455226945d52f5aefd51f35d663bb16.jpg', 6, 0);
INSERT INTO thumb_image(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/2d408898494ac950d7d2cfd6c36d59c2.jpg', 6, 1);
INSERT INTO thumb_image(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/62c8bb77facfc9c3be81f9bf45b27f2a.jpg', 6, 2);
INSERT INTO thumb_image(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/f6d73afc0ebc1efa71eaea32e9d846f2.jpg', 6, 3);

INSERT INTO thumb_image(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/2455226945d52f5aefd51f35d663bb16.jpg', 7, 0);
INSERT INTO thumb_image(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/2d408898494ac950d7d2cfd6c36d59c2.jpg', 7, 1);
INSERT INTO thumb_image(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/62c8bb77facfc9c3be81f9bf45b27f2a.jpg', 7, 2);
INSERT INTO thumb_image(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/f6d73afc0ebc1efa71eaea32e9d846f2.jpg', 7, 3);

INSERT INTO thumb_image(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/cad8eee316cf7151e07638aa57b32a9d.jpg', 8, 0);
INSERT INTO thumb_image(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/2d408898494ac950d7d2cfd6c36d59c2.jpg', 8, 1);
INSERT INTO thumb_image(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/62c8bb77facfc9c3be81f9bf45b27f2a.jpg', 8, 2);
INSERT INTO thumb_image(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/f6d73afc0ebc1efa71eaea32e9d846f2.jpg', 8, 3);

---------------------------------
---- THUMB IMAGE : SOUP ---------

INSERT INTO thumb_image(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/4e96f386d5a5c4459bc0ac6ffd0c1fce.jpg', 9, 0);
INSERT INTO thumb_image(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/00327d0df92e29bad02e7387349bed53.jpg', 9, 1);
INSERT INTO thumb_image(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/781fea32c56eb102429902a2f62cbaf3.jpg', 9, 2);

INSERT INTO thumb_image(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/c069bc32cb37727c59e1f0c2839311a0.jpg', 10, 0);
INSERT INTO thumb_image(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H602F/edc6bae2e2663f05b4e8eb5a2b95d68f.jpg', 10, 1);
INSERT INTO thumb_image(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H602F/c935f5913dc66b11ebceeef85485c438.jpg', 10, 2);
INSERT INTO thumb_image(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H602F/7c1e24867611394f04b37d05593e21ba.jpg', 10, 3);

INSERT INTO thumb_image(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/d1fccf125f0a78113d0e06cb888f2e74.jpg', 11, 0);
INSERT INTO thumb_image(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/92f556b605c4a84813070d7214c4f336.jpg', 11, 1);
INSERT INTO thumb_image(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/538b8ab021c7814aa4af860d94f81287.jpg', 11, 2);
INSERT INTO thumb_image(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/adaef08ab0680b087096afa0f0070fad.jpg', 11, 3);

INSERT INTO thumb_image(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/4e96f386d5a5c4459bc0ac6ffd0c1fce.jpg', 12, 0);
INSERT INTO thumb_image(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/00327d0df92e29bad02e7387349bed53.jpg', 12, 1);
INSERT INTO thumb_image(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/781fea32c56eb102429902a2f62cbaf3.jpg', 12, 2);

INSERT INTO thumb_image(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/4e96f386d5a5c4459bc0ac6ffd0c1fce.jpg', 13, 0);
INSERT INTO thumb_image(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/00327d0df92e29bad02e7387349bed53.jpg', 13, 1);
INSERT INTO thumb_image(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/781fea32c56eb102429902a2f62cbaf3.jpg', 13, 2);

INSERT INTO thumb_image(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/2ad963a9f63d371826748c852a0025c3.jpg', 14, 0);
INSERT INTO thumb_image(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/f945d8ac1dccc3f931bcaf35de5de582.jpg', 14, 1);
INSERT INTO thumb_image(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/bacb0b8186371bfafbd92dbeec718e13.jpg', 14, 2);
INSERT INTO thumb_image(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/b96b02e9a956c6d5ad1e10eb14ba81e0.jpg', 14, 3);

INSERT INTO thumb_image(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/4e96f386d5a5c4459bc0ac6ffd0c1fce.jpg', 15, 0);
INSERT INTO thumb_image(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/00327d0df92e29bad02e7387349bed53.jpg', 15, 1);
INSERT INTO thumb_image(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/781fea32c56eb102429902a2f62cbaf3.jpg', 15, 2);

INSERT INTO thumb_image(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/2ad963a9f63d371826748c852a0025c3.jpg', 16, 0);
INSERT INTO thumb_image(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/f945d8ac1dccc3f931bcaf35de5de582.jpg', 16, 1);
INSERT INTO thumb_image(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/bacb0b8186371bfafbd92dbeec718e13.jpg', 16, 2);
INSERT INTO thumb_image(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/b96b02e9a956c6d5ad1e10eb14ba81e0.jpg', 16, 3);

---------------------------------
---- THUMB IMAGE : SIDE ---------

INSERT INTO thumb_image(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/2ad963a9f63d371826748c852a0025c3.jpg', 17, 0);
INSERT INTO thumb_image(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/f945d8ac1dccc3f931bcaf35de5de582.jpg', 17, 1);
INSERT INTO thumb_image(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/bacb0b8186371bfafbd92dbeec718e13.jpg', 17, 2);
INSERT INTO thumb_image(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/b96b02e9a956c6d5ad1e10eb14ba81e0.jpg', 17, 3);

INSERT INTO thumb_image(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/43c38eeffa556554c9b06301eb3e85b2.jpg', 18, 0);
INSERT INTO thumb_image(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/92f556b605c4a84813070d7214c4f336.jpg', 18, 1);
INSERT INTO thumb_image(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/538b8ab021c7814aa4af860d94f81287.jpg', 18, 2);
INSERT INTO thumb_image(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/adaef08ab0680b087096afa0f0070fad.jpg', 18, 3);

INSERT INTO thumb_image(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/43c38eeffa556554c9b06301eb3e85b2.jpg', 19, 0);
INSERT INTO thumb_image(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/92f556b605c4a84813070d7214c4f336.jpg', 19, 1);
INSERT INTO thumb_image(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/538b8ab021c7814aa4af860d94f81287.jpg', 19, 2);
INSERT INTO thumb_image(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/adaef08ab0680b087096afa0f0070fad.jpg', 19, 3);

INSERT INTO thumb_image(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/e5646e5fc09a01a9243979b229e0572b.jpg', 20, 0);
INSERT INTO thumb_image(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/f945d8ac1dccc3f931bcaf35de5de582.jpg', 20, 1);
INSERT INTO thumb_image(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/bacb0b8186371bfafbd92dbeec718e13.jpg', 20, 2);
INSERT INTO thumb_image(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/b96b02e9a956c6d5ad1e10eb14ba81e0.jpg', 20, 3);

INSERT INTO thumb_image(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H602F/c8c8045696b4692107ef28c8b445ca42.jpg', 21, 0);
INSERT INTO thumb_image(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H602F/edc6bae2e2663f05b4e8eb5a2b95d68f.jpg', 21, 1);
INSERT INTO thumb_image(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H602F/c935f5913dc66b11ebceeef85485c438.jpg', 21, 2);
INSERT INTO thumb_image(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H602F/7c1e24867611394f04b37d05593e21ba.jpg', 21, 3);

INSERT INTO thumb_image(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/d0b5d2be962947d9534e2140d1b34b2d.jpg', 22, 0);
INSERT INTO thumb_image(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H602F/edc6bae2e2663f05b4e8eb5a2b95d68f.jpg', 22, 1);
INSERT INTO thumb_image(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H602F/c935f5913dc66b11ebceeef85485c438.jpg', 22, 2);
INSERT INTO thumb_image(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H602F/7c1e24867611394f04b37d05593e21ba.jpg', 22, 3);

INSERT INTO thumb_image(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/757878b14ee5a8d5af905c154fc38f01.jpg', 23, 0);
INSERT INTO thumb_image(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/92f556b605c4a84813070d7214c4f336.jpg', 23, 1);
INSERT INTO thumb_image(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/538b8ab021c7814aa4af860d94f81287.jpg', 23, 2);
INSERT INTO thumb_image(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/adaef08ab0680b087096afa0f0070fad.jpg', 23, 3);

INSERT INTO thumb_image(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/4cfd1954861ebd18b5b53e558a8e902e.jpg', 24, 0);
INSERT INTO thumb_image(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H602F/edc6bae2e2663f05b4e8eb5a2b95d68f.jpg', 24, 1);
INSERT INTO thumb_image(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H602F/c935f5913dc66b11ebceeef85485c438.jpg', 24, 2);
INSERT INTO thumb_image(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H602F/7c1e24867611394f04b37d05593e21ba.jpg', 24, 3);

------------------------------------
----- DETAIL SECTION : MAIN --------

INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/9bd9158fb5ffbc46708b7928ee50708e.jpg', 1, 0);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/5f73c5c80b62ef63c8a8eecefe32fc29.jpg', 1, 1);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/9bd9158fb5ffbc46708b7928ee50708e.jpg', 1, 2);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/0253cdebc4972fefd6b94458024fe765.jpg', 1, 3);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/3299da0677b50c8c519adc0335271c49.jpg', 1, 4);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/0642265b65dcc2490ab164ff428cbfe2.jpg', 1, 5);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/695683493c1ae475a175475f50d3259f.jpg', 1, 6);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/c8f9bed4f5c07585b869e3d171904a93.jpg', 1, 7);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/d2e3274c95c832bc9bfbcebbd548f61b.jpg', 1, 8);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/d9e4fa00652483d74b46317d38159a2f.jpg', 1, 9);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/d7799b67683128642453f9e2b4c8ce84.jpg', 1, 10);

INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/9c2c53b40a11b79c90549a058c2da4b7.jpg', 2, 0);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/70b0c77d3ef5cdd6269588685bbefe43.jpg', 2, 1);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/72f1049b047f65f42a267d5bbd1e6204.jpg', 2, 2);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/768afd17faa8bf3461b8160ba0aa26bf.jpg', 2, 3);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/95816f09d3294641f2e0feacaa739991.jpg', 2, 4);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/2450219a4686d9d6d579fc04020929b4.jpg', 2, 5);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4971475295545ec336c9479fabb25364.jpg', 2, 6);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/a8c434715709fe855f3ea1554ec362b6.jpg', 2, 7);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/b2b3d0d2107ab91b16e0eb804cd84bc9.jpg', 2, 8);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/c0dd6887c9d9368604fc70d7fc3c4598.jpg', 2, 9);

INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/9bd9158fb5ffbc46708b7928ee50708e.jpg', 3, 0);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/5f73c5c80b62ef63c8a8eecefe32fc29.jpg', 3, 1);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/9bd9158fb5ffbc46708b7928ee50708e.jpg', 3, 2);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/0253cdebc4972fefd6b94458024fe765.jpg', 3, 3);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/3299da0677b50c8c519adc0335271c49.jpg', 3, 4);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/0642265b65dcc2490ab164ff428cbfe2.jpg', 3, 5);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/695683493c1ae475a175475f50d3259f.jpg', 3, 6);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/c8f9bed4f5c07585b869e3d171904a93.jpg', 3, 7);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/d2e3274c95c832bc9bfbcebbd548f61b.jpg', 3, 8);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/d9e4fa00652483d74b46317d38159a2f.jpg', 3, 9);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/d7799b67683128642453f9e2b4c8ce84.jpg', 3, 10);

INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/9bd9158fb5ffbc46708b7928ee50708e.jpg', 4, 0);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/5f73c5c80b62ef63c8a8eecefe32fc29.jpg', 4, 1);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/9bd9158fb5ffbc46708b7928ee50708e.jpg', 4, 2);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/0253cdebc4972fefd6b94458024fe765.jpg', 4, 3);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/3299da0677b50c8c519adc0335271c49.jpg', 4, 4);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/0642265b65dcc2490ab164ff428cbfe2.jpg', 4, 5);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/695683493c1ae475a175475f50d3259f.jpg', 4, 6);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/c8f9bed4f5c07585b869e3d171904a93.jpg', 4, 7);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/d2e3274c95c832bc9bfbcebbd548f61b.jpg', 4, 8);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/d9e4fa00652483d74b46317d38159a2f.jpg', 4, 9);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/d7799b67683128642453f9e2b4c8ce84.jpg', 4, 10);

INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/9bd9158fb5ffbc46708b7928ee50708e.jpg', 5, 0);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/5f73c5c80b62ef63c8a8eecefe32fc29.jpg', 5, 1);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/9bd9158fb5ffbc46708b7928ee50708e.jpg', 5, 2);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/0253cdebc4972fefd6b94458024fe765.jpg', 5, 3);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/3299da0677b50c8c519adc0335271c49.jpg', 5, 4);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/0642265b65dcc2490ab164ff428cbfe2.jpg', 5, 5);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/695683493c1ae475a175475f50d3259f.jpg', 5, 6);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/c8f9bed4f5c07585b869e3d171904a93.jpg', 5, 7);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/d2e3274c95c832bc9bfbcebbd548f61b.jpg', 5, 8);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/d9e4fa00652483d74b46317d38159a2f.jpg', 5, 9);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/d7799b67683128642453f9e2b4c8ce84.jpg', 5, 10);

INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/9bd9158fb5ffbc46708b7928ee50708e.jpg', 6, 0);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/5f73c5c80b62ef63c8a8eecefe32fc29.jpg', 6, 1);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/9bd9158fb5ffbc46708b7928ee50708e.jpg', 6, 2);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/0253cdebc4972fefd6b94458024fe765.jpg', 6, 3);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/3299da0677b50c8c519adc0335271c49.jpg', 6, 4);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/0642265b65dcc2490ab164ff428cbfe2.jpg', 6, 5);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/695683493c1ae475a175475f50d3259f.jpg', 6, 6);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/c8f9bed4f5c07585b869e3d171904a93.jpg', 6, 7);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/d2e3274c95c832bc9bfbcebbd548f61b.jpg', 6, 8);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/d9e4fa00652483d74b46317d38159a2f.jpg', 6, 9);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/d7799b67683128642453f9e2b4c8ce84.jpg', 6, 10);

INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/9bd9158fb5ffbc46708b7928ee50708e.jpg', 7, 0);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/5f73c5c80b62ef63c8a8eecefe32fc29.jpg', 7, 1);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/9bd9158fb5ffbc46708b7928ee50708e.jpg', 7, 2);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/0253cdebc4972fefd6b94458024fe765.jpg', 7, 3);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/3299da0677b50c8c519adc0335271c49.jpg', 7, 4);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/0642265b65dcc2490ab164ff428cbfe2.jpg', 7, 5);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/695683493c1ae475a175475f50d3259f.jpg', 7, 6);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/c8f9bed4f5c07585b869e3d171904a93.jpg', 7, 7);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/d2e3274c95c832bc9bfbcebbd548f61b.jpg', 7, 8);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/d9e4fa00652483d74b46317d38159a2f.jpg', 7, 9);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/d7799b67683128642453f9e2b4c8ce84.jpg', 7, 10);

INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/9bd9158fb5ffbc46708b7928ee50708e.jpg', 8, 0);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/5f73c5c80b62ef63c8a8eecefe32fc29.jpg', 8, 1);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/9bd9158fb5ffbc46708b7928ee50708e.jpg', 8, 2);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/0253cdebc4972fefd6b94458024fe765.jpg', 8, 3);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/3299da0677b50c8c519adc0335271c49.jpg', 8, 4);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/0642265b65dcc2490ab164ff428cbfe2.jpg', 8, 5);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/695683493c1ae475a175475f50d3259f.jpg', 8, 6);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/c8f9bed4f5c07585b869e3d171904a93.jpg', 8, 7);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/d2e3274c95c832bc9bfbcebbd548f61b.jpg', 8, 8);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/d9e4fa00652483d74b46317d38159a2f.jpg', 8, 9);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/d7799b67683128642453f9e2b4c8ce84.jpg', 8, 10);

------------------------------------
----- DETAIL SECTION : SOUP --------

INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H602F/670e7deefe1d84a4f4e058655fbd4d7c.jpg', 9, 0);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H602F/1898cda038e92454395b8ffca8cd4393.jpg', 9, 1);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H602F/49516d302dad870fbdd75cf98a01eae4.jpg', 9, 2);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H602F/c1bb6fe4f72fcea27ea989ae48c61c86.jpg', 9, 3);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H602F/49afed8d3ec417b39ce8de456fc6661c.jpg', 9, 4);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H602F/e62762e63f3e12dc2857a065badf1eea.jpg', 9, 5);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H602F/31103ab946bff52b709ec6891e768c05.jpg', 9, 6);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H602F/f84dc16f4f6d97661bd13d587a72d6b1.jpg', 9, 7);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H602F/fd3f49614f731a0610a5409c0deb3c60.jpg', 9, 8);

INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/341b8605fa224ec1808c4f169097d170.jpg', 10, 0);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/0228d4cb660a3cca06952917bd024dcb.jpg', 10, 1);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/e027227f61a93b6473e8c4bbd5c3de74.jpg', 10, 2);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/03ac0b09199421bb61727c667c2361f6.jpg', 10, 3);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/cbe4a3e12b7bdba5cf410e0e19dcf1ca.jpg', 10, 4);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/b58fa5791b67db106524b48442cb1c6a.jpg', 10, 5);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/82cfe0332f0e1c927a23b79f1d152430.jpg', 10, 6);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/390ca9ad5a574cbe7f3f6e26871f6690.jpg', 10, 7);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/e113889a6120357c8e6196802a9f155b.jpg', 10, 8);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/967e8e1ef357e9722b796e2bcb09ba3d.jpg', 10, 9);

INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/829c8a3fb87d98ef42ae449215d4c8b7.jpg', 11, 0);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/25900d6f62866f25c024105e10907f43.png', 11, 1);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/e52f3fbd48fbe9ff2ac99759cacd0042.png', 11, 2);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/edd7a54096d6df1b8bc8b318cea0191c.jpg', 11, 3);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/fb8e6e21faa8284021c1b1c7a1ae1281.jpg', 11, 4);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/36a0566d2fb69a4bcea946727181836d.jpg', 11, 5);

INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/829c8a3fb87d98ef42ae449215d4c8b7.jpg', 12, 0);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/25900d6f62866f25c024105e10907f43.png', 12, 1);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/e52f3fbd48fbe9ff2ac99759cacd0042.png', 12, 2);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/edd7a54096d6df1b8bc8b318cea0191c.jpg', 12, 3);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/fb8e6e21faa8284021c1b1c7a1ae1281.jpg', 12, 4);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/36a0566d2fb69a4bcea946727181836d.jpg', 12, 5);

INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/829c8a3fb87d98ef42ae449215d4c8b7.jpg', 13, 0);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/25900d6f62866f25c024105e10907f43.png', 13, 1);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/e52f3fbd48fbe9ff2ac99759cacd0042.png', 13, 2);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/edd7a54096d6df1b8bc8b318cea0191c.jpg', 13, 3);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/fb8e6e21faa8284021c1b1c7a1ae1281.jpg', 13, 4);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/36a0566d2fb69a4bcea946727181836d.jpg', 13, 5);

INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/829c8a3fb87d98ef42ae449215d4c8b7.jpg', 14, 0);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/25900d6f62866f25c024105e10907f43.png', 14, 1);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/e52f3fbd48fbe9ff2ac99759cacd0042.png', 14, 2);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/edd7a54096d6df1b8bc8b318cea0191c.jpg', 14, 3);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/fb8e6e21faa8284021c1b1c7a1ae1281.jpg', 14, 4);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/36a0566d2fb69a4bcea946727181836d.jpg', 14, 5);

INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/3d67aabd2751620367e1d1ac3e3d7ef2.jpg', 15, 0);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/855b42b4e80162e6930f06aa80bd1272.jpg', 15, 1);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/1966de56cf138639d5d50d4bf2db8e72.jpg', 15, 2);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/b3dd54082745d1188f3a6e582e7cd993.jpg', 15, 3);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/4a6fd1fd1116c14aa6aef5e6851ab6a9.jpg', 15, 4);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/7e12275d669102d0269278a7c91ab49d.jpg', 15, 5);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/ab34ea3755f59a21662266eb62b7bc4b.jpg', 15, 6);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/b0a70ff59a3b5360b6246b507693c4d4.jpg', 15, 7);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/dc772923b4a2e053f1baf68fa28a48ee.jpg', 15, 8);

INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/3d67aabd2751620367e1d1ac3e3d7ef2.jpg', 16, 0);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/855b42b4e80162e6930f06aa80bd1272.jpg', 16, 1);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/1966de56cf138639d5d50d4bf2db8e72.jpg', 16, 2);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/b3dd54082745d1188f3a6e582e7cd993.jpg', 16, 3);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/4a6fd1fd1116c14aa6aef5e6851ab6a9.jpg', 16, 4);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/7e12275d669102d0269278a7c91ab49d.jpg', 16, 5);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/ab34ea3755f59a21662266eb62b7bc4b.jpg', 16, 6);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/b0a70ff59a3b5360b6246b507693c4d4.jpg', 16, 7);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/dc772923b4a2e053f1baf68fa28a48ee.jpg', 16, 8);

------------------------------------
----- DETAIL SECTION : SIDE --------

INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/341b8605fa224ec1808c4f169097d170.jpg', 17, 0);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/0228d4cb660a3cca06952917bd024dcb.jpg', 17, 1);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/e027227f61a93b6473e8c4bbd5c3de74.jpg', 17, 2);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/03ac0b09199421bb61727c667c2361f6.jpg', 17, 3);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/cbe4a3e12b7bdba5cf410e0e19dcf1ca.jpg', 17, 4);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/b58fa5791b67db106524b48442cb1c6a.jpg', 17, 5);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/82cfe0332f0e1c927a23b79f1d152430.jpg', 17, 6);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/390ca9ad5a574cbe7f3f6e26871f6690.jpg', 17, 7);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/e113889a6120357c8e6196802a9f155b.jpg', 17, 8);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/967e8e1ef357e9722b796e2bcb09ba3d.jpg', 17, 9);

INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/3d67aabd2751620367e1d1ac3e3d7ef2.jpg', 18, 0);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/855b42b4e80162e6930f06aa80bd1272.jpg', 18, 1);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/1966de56cf138639d5d50d4bf2db8e72.jpg', 18, 2);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/b3dd54082745d1188f3a6e582e7cd993.jpg', 18, 3);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/4a6fd1fd1116c14aa6aef5e6851ab6a9.jpg', 18, 4);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/7e12275d669102d0269278a7c91ab49d.jpg', 18, 5);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/ab34ea3755f59a21662266eb62b7bc4b.jpg', 18, 6);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/b0a70ff59a3b5360b6246b507693c4d4.jpg', 18, 7);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/dc772923b4a2e053f1baf68fa28a48ee.jpg', 18, 8);

INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/341b8605fa224ec1808c4f169097d170.jpg', 19, 0);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/0228d4cb660a3cca06952917bd024dcb.jpg', 19, 1);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/e027227f61a93b6473e8c4bbd5c3de74.jpg', 19, 2);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/03ac0b09199421bb61727c667c2361f6.jpg', 19, 3);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/cbe4a3e12b7bdba5cf410e0e19dcf1ca.jpg', 19, 4);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/b58fa5791b67db106524b48442cb1c6a.jpg', 19, 5);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/82cfe0332f0e1c927a23b79f1d152430.jpg', 19, 6);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/390ca9ad5a574cbe7f3f6e26871f6690.jpg', 19, 7);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/e113889a6120357c8e6196802a9f155b.jpg', 19, 8);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/967e8e1ef357e9722b796e2bcb09ba3d.jpg', 19, 9);

INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H602F/670e7deefe1d84a4f4e058655fbd4d7c.jpg', 20, 0);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H602F/1898cda038e92454395b8ffca8cd4393.jpg', 20, 1);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H602F/49516d302dad870fbdd75cf98a01eae4.jpg', 20, 2);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H602F/c1bb6fe4f72fcea27ea989ae48c61c86.jpg', 20, 3);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H602F/49afed8d3ec417b39ce8de456fc6661c.jpg', 20, 4);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H602F/e62762e63f3e12dc2857a065badf1eea.jpg', 20, 5);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H602F/31103ab946bff52b709ec6891e768c05.jpg', 20, 6);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H602F/f84dc16f4f6d97661bd13d587a72d6b1.jpg', 20, 7);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H602F/fd3f49614f731a0610a5409c0deb3c60.jpg', 20, 8);

INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/3d67aabd2751620367e1d1ac3e3d7ef2.jpg', 21, 0);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/855b42b4e80162e6930f06aa80bd1272.jpg', 21, 1);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/1966de56cf138639d5d50d4bf2db8e72.jpg', 21, 2);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/b3dd54082745d1188f3a6e582e7cd993.jpg', 21, 3);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/4a6fd1fd1116c14aa6aef5e6851ab6a9.jpg', 21, 4);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/7e12275d669102d0269278a7c91ab49d.jpg', 21, 5);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/ab34ea3755f59a21662266eb62b7bc4b.jpg', 21, 6);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/b0a70ff59a3b5360b6246b507693c4d4.jpg', 21, 7);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/dc772923b4a2e053f1baf68fa28a48ee.jpg', 21, 8);

INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H602F/670e7deefe1d84a4f4e058655fbd4d7c.jpg', 22, 0);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H602F/1898cda038e92454395b8ffca8cd4393.jpg', 22, 1);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H602F/49516d302dad870fbdd75cf98a01eae4.jpg', 22, 2);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H602F/c1bb6fe4f72fcea27ea989ae48c61c86.jpg', 22, 3);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H602F/49afed8d3ec417b39ce8de456fc6661c.jpg', 22, 4);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H602F/e62762e63f3e12dc2857a065badf1eea.jpg', 22, 5);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H602F/31103ab946bff52b709ec6891e768c05.jpg', 22, 6);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H602F/f84dc16f4f6d97661bd13d587a72d6b1.jpg', 22, 7);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H602F/fd3f49614f731a0610a5409c0deb3c60.jpg', 22, 8);

INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/341b8605fa224ec1808c4f169097d170.jpg', 23, 0);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/0228d4cb660a3cca06952917bd024dcb.jpg', 23, 1);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/e027227f61a93b6473e8c4bbd5c3de74.jpg', 23, 2);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/03ac0b09199421bb61727c667c2361f6.jpg', 23, 3);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/cbe4a3e12b7bdba5cf410e0e19dcf1ca.jpg', 23, 4);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/b58fa5791b67db106524b48442cb1c6a.jpg', 23, 5);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/82cfe0332f0e1c927a23b79f1d152430.jpg', 23, 6);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/390ca9ad5a574cbe7f3f6e26871f6690.jpg', 23, 7);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/e113889a6120357c8e6196802a9f155b.jpg', 23, 8);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/967e8e1ef357e9722b796e2bcb09ba3d.jpg', 23, 9);

INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H602F/670e7deefe1d84a4f4e058655fbd4d7c.jpg', 24, 0);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H602F/1898cda038e92454395b8ffca8cd4393.jpg', 24, 1);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H602F/49516d302dad870fbdd75cf98a01eae4.jpg', 24, 2);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H602F/c1bb6fe4f72fcea27ea989ae48c61c86.jpg', 24, 3);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H602F/49afed8d3ec417b39ce8de456fc6661c.jpg', 24, 4);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H602F/e62762e63f3e12dc2857a065badf1eea.jpg', 24, 5);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H602F/31103ab946bff52b709ec6891e768c05.jpg', 24, 6);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H602F/f84dc16f4f6d97661bd13d587a72d6b1.jpg', 24, 7);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H602F/fd3f49614f731a0610a5409c0deb3c60.jpg', 24, 8);
