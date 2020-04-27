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
'서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가) [월 · 화 · 수 · 목 · 금 · 토] 수령 가능한 상품입니다.', '2,500원 (40,000원 이상 구매 시 무료)', 5, 1, 0);

INSERT INTO item(hash, image, title, description, normal_price, sale_price, point, delivery_info, delivery_fee, stock, category, category_key)
VALUES ('HDF73', 'http://public.codesquad.kr/jk/storeapp/data/7674311a02ba7c88675f3186ddaeef9e.jpg',
'[빅마마의밥친구] 아삭 고소한 연근고기조림 250g', '편식하는 아이도 좋아하는 건강한 연근조림', 5500, null, 55,
'서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가) [화 · 수 · 목 · 금 · 토] 수령 가능한 상품입니다.', '2,500원 (40,000원 이상 구매 시 무료)', 30, 1, 1);

INSERT INTO item(hash, image, title, description, normal_price, sale_price, point, delivery_info, delivery_fee, stock, category, category_key)
VALUES ('HF778', 'http://public.codesquad.kr/jk/storeapp/data/cad8eee316cf7151e07638aa57b32a9d.jpg',
'[소중한식사] 골뱅이무침 195g', '매콤새콤달콤, 반찬으로도 안주로도 좋은', 7000, 6300, 70,
'서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가) [화 · 수 · 목 · 금] 수령 가능한 상품입니다.', '2,500원 (40,000원 이상 구매 시 무료)', 20, 1, 2);

INSERT INTO item(hash, image, title, description, normal_price, sale_price, point, delivery_info, delivery_fee, stock, category, category_key)
VALUES ('HFB53', 'http://public.codesquad.kr/jk/storeapp/data/b6beada6b89af950289003d929936d9c.jpg',
'[옹가솜씨] 꽁치간장조림 240g', '생강 향이 산뜻한', 5800, null, 58,
'서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가) [월 · 화 · 수 · 목 · 금 · 토] 수령 가능한 상품입니다.', '2,500원 (40,000원 이상 구매 시 무료)', 100, 1, 3);

INSERT INTO item(hash, image, title, description, normal_price, sale_price, point, delivery_info, delivery_fee, stock, category, category_key)
VALUES ('H077F', 'http://public.codesquad.kr/jk/storeapp/data/0221110ead70dfd455e40703bbdd6252.jpg',
'[마더앤찬] 코다리구이 320g', '큼지막하고 살집 많은 동태 한 마리로 만든 코다리구이입니다.', 7500, 6750, 75,
'서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가) [화 · 수 · 목 · 금 · 토] 수령 가능한 상품입니다.', '2,500원 (40,000원 이상 구매 시 무료)', 30, 1, 4);

INSERT INTO item(hash, image, title, description, normal_price, sale_price, point, delivery_info, delivery_fee, stock, category, category_key)
VALUES ('H4665', 'http://public.codesquad.kr/jk/storeapp/data/385f4106ac26f6e4fe7c640714f405a5.jpg',
'[남도애꽃] 반건조 문어조림 120g', '씹을수록 감칠맛나는 문어살의 쫄깃함', 4600, null, 46,
'서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가) [화 · 수 · 목 · 금 · 토] 수령 가능한 상품입니다.', '2,500원 (40,000원 이상 구매 시 무료)', 300, 1, 5);

INSERT INTO item(hash, image, title, description, normal_price, sale_price, point, delivery_info, delivery_fee, stock, category, category_key)
VALUES ('H1AA9', 'http://public.codesquad.kr/jk/storeapp/data/2455226945d52f5aefd51f35d663bb16.jpg',
'[마샐미디쉬] 매콤마늘쫑 해산물볶음 180g', '탱글탱글한 새우와 오징어를 마늘쫑과 함께 매콤하게 볶아냈어요.', 6900, 6210, 69,
'서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가) [월 · 화 · 수 · 목 · 금 · 토] 수령 가능한 상품입니다.', '2,500원 (40,000원 이상 구매 시 무료)', 20, 1, 6);

INSERT INTO item(hash, image, title, description, normal_price, sale_price, point, delivery_info, delivery_fee, stock, category, category_key)
VALUES ('HEDFB', 'http://public.codesquad.kr/jk/storeapp/data/bc3b777115e8377a48c7bd762fe5fdc9.jpg',
'[빅마마의밥친구] 비빔오징어 150g', '달콤한 신야초발효액이 포인트!.', 5000, null, 50,
'서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가) [월 · 화 · 수 · 목 · 금 · 토] 수령 가능한 상품입니다.', '2,500원 (40,000원 이상 구매 시 무료)', 80, 1, 7);

---------------------------------
---- CATEGORY : SOUP <ITEM> -----

INSERT INTO item(hash, image, title, description, normal_price, sale_price, point, delivery_info, delivery_fee, stock, category, category_key)
VALUES ('H72C3', 'http://public.codesquad.kr/jk/storeapp/data/d1fccf125f0a78113d0e06cb888f2e74.jpg',
'[수하동] 특곰탕 850g', '100% 한우양지로 끓여낸 70년전통의 서울식곰탕', 15000, 14200, 150,
'서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가) [월 · 화 · 수 · 목 · 금] 수령 가능한 상품입니다.', '2,500원 (40,000원 이상 구매 시 무료)', 10, 2, 0);

INSERT INTO item(hash, image, title, description, normal_price, sale_price, point, delivery_info, delivery_fee, stock, category, category_key)
VALUES ('HA6EE', 'http://public.codesquad.kr/jk/storeapp/data/c069bc32cb37727c59e1f0c2839311a0.jpg',
'[빅마마의밥친구] 된장찌개 900g', '항아리에서 숙성시킨 집된장으로만 맛을내 짜지 않은 된장찌개', 10000, null, 100,
'서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가) [월 · 화 · 수 · 목 · 금] 수령 가능한 상품입니다.', '2,500원 (40,000원 이상 구매 시 무료)', 5, 2, 1);

INSERT INTO item(hash, image, title, description, normal_price, sale_price, point, delivery_info, delivery_fee, stock, category, category_key)
VALUES ('H8CD0', 'http://public.codesquad.kr/jk/storeapp/data/f31fc3f5828c27ff60e4cf89a862d31c.jpg',
'[탐나는밥상] 동태탕 1000g', '칼칼한 국물이 속 풀기에 딱 좋은 동태탕', 14000, null, 140,
'서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가) [월 · 화 · 수 · 목 · 금] 수령 가능한 상품입니다.', '2,500원 (40,000원 이상 구매 시 무료)', 10, 2, 2);

INSERT INTO item(hash, image, title, description, normal_price, sale_price, point, delivery_info, delivery_fee, stock, category, category_key)
VALUES ('HE2E9', 'http://public.codesquad.kr/jk/storeapp/data/6edbb16da52708e8533b85fbf743f882.jpg',
'[국물닷컴] 치즈부대찌개 600g', '안주용 부대찌개와는 달라 밥말아먹기 딱 좋은', 5500, 4300, 55,
'서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가) [월 · 화 · 수 · 목 · 금 · 토] 수령 가능한 상품입니다.', '2,500원 (40,000원 이상 구매 시 무료)', 20, 2, 3);

INSERT INTO item(hash, image, title, description, normal_price, sale_price, point, delivery_info, delivery_fee, stock, category, category_key)
VALUES ('HAA47', 'http://public.codesquad.kr/jk/storeapp/data/892f3e7f043bfa7dbbcd58f88eecac36.jpg',
'[집밥의완성] 스키야키 1.5kg (2~3인분)', '진한 풍미의 일본식 전골, 스키야키', 19800, 10000, 198,
'서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가) [월 · 화 · 수 · 목 · 금 · 토] 수령 가능한 상품입니다.', '2,500원 (40,000원 이상 구매 시 무료)', 20, 2, 4);

INSERT INTO item(hash, image, title, description, normal_price, sale_price, point, delivery_info, delivery_fee, stock, category, category_key)
VALUES ('H3254', 'http://public.codesquad.kr/jk/storeapp/data/ae571e13d18fd4f0f40d685d2c8fe8f1.jpg',
'[새로미부산어묵] 프리미엄 어묵탕세트', '밀가루 0% 프리미엄 어묵에 어묵스프까지 드려요!', 18000, 14400, 180,
'서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가) [월 · 화 · 수 · 목 · 금 · 토] 수령 가능한 상품입니다.', '2,500원 (40,000원 이상 구매 시 무료)', 20, 2, 5);

INSERT INTO item(hash, image, title, description, normal_price, sale_price, point, delivery_info, delivery_fee, stock, category, category_key)
VALUES ('H26C7', 'http://public.codesquad.kr/jk/storeapp/data/8fd330b5f5dbccbcbf4f5731e5e9e29b.jpg',
'[모이세] 육개장 1팩(600g)', '제주3대해장국 맛집의 인기메뉴', 5900, 4400, 59,
'서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가) [월 · 화 · 수 · 목 · 금 · 토] 수령 가능한 상품입니다.', '2,500원 (40,000원 이상 구매 시 무료)', 20, 2, 6);

INSERT INTO item(hash, image, title, description, normal_price, sale_price, point, delivery_info, delivery_fee, stock, category, category_key)
VALUES ('HFFF9', 'http://public.codesquad.kr/jk/storeapp/data/2416b58044d49f0d3a24256f8e76163b.jpg',
'[마더앤찬] 명란감자국  630ml', '간간한 저염명란과 고소한 감자가 조화로운 국이에요', 7000, 6300, 70,
'서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가) [월 · 화 · 수 · 목 · 금 · 토] 수령 가능한 상품입니다.', '2,500원 (40,000원 이상 구매 시 무료)', 20, 2, 7);

---------------------------------
---- CATEGORY : SIDE <ITEM> -----

INSERT INTO item(hash, image, title, description, normal_price, sale_price, point, delivery_info, delivery_fee, stock, category, category_key)
VALUES ('HBBCC', 'http://public.codesquad.kr/jk/storeapp/data/fdb0d5fcfb86e332505785225a6d9ade.jpg',
'[마샐미디쉬] 유자소스 연근무침 250g', '향긋한 유자향과 아삭한 연근', 6500, null, 65,
'서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가) [월 · 화 · 수 · 목 · 금] 수령 가능한 상품입니다.', '2,500원 (40,000원 이상 구매 시 무료)', 10, 3, 0);

INSERT INTO item(hash, image, title, description, normal_price, sale_price, point, delivery_info, delivery_fee, stock, category, category_key)
VALUES ('H1939', 'http://public.codesquad.kr/jk/storeapp/data/e5646e5fc09a01a9243979b229e0572b.jpg',
'[동네부엌] 쇠고기야채장조림 200g', '부드러운 고기부터 밥비벼먹기 딱좋은 국물까지', 7400, null, 74,
'서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가) [월 · 화 · 수 · 목 · 금] 수령 가능한 상품입니다.', '2,500원 (40,000원 이상 구매 시 무료)', 10, 3, 1);

INSERT INTO item(hash, image, title, description, normal_price, sale_price, point, delivery_info, delivery_fee, stock, category, category_key)
VALUES ('H8EA5', 'http://public.codesquad.kr/jk/storeapp/data/4cfd1954861ebd18b5b53e558a8e902e.jpg',
'[소중한식사] 도라지초무침 150g', '새콤달콤 입맛 돋우는', 4000, null, 40,
'서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가) [월 · 화 · 수 · 목 · 금] 수령 가능한 상품입니다.', '2,500원 (40,000원 이상 구매 시 무료)', 10, 3, 2);

INSERT INTO item(hash, image, title, description, normal_price, sale_price, point, delivery_info, delivery_fee, stock, category, category_key)
VALUES ('H602F', 'http://public.codesquad.kr/jk/storeapp/data/422befe07f7e2860b9a83a8d7049ec2e.jpg',
'[미노리키친] 일본식 우엉조림(킨피라고보) 80g', '한국식 우엉조림과는 다른 진한 감칠맛', 3300, null, 33,
'서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가) [월 · 화 · 수 · 목 · 금] 수령 가능한 상품입니다.', '2,500원 (40,000원 이상 구매 시 무료)', 10, 3, 3);

INSERT INTO item(hash, image, title, description, normal_price, sale_price, point, delivery_info, delivery_fee, stock, category, category_key)
VALUES ('H9F0B', 'http://public.codesquad.kr/jk/storeapp/data/d0b5d2be962947d9534e2140d1b34b2d.jpg',
'[빅마마의밥친구] 갈치포무침 150g', '쉽게 접할수 없는 꼬순내가득 갈치포 무침', 7000, null, 70,
'서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가) [월 · 화 · 수 · 목 · 금] 수령 가능한 상품입니다.', '2,500원 (40,000원 이상 구매 시 무료)', 10, 3, 4);

INSERT INTO item(hash, image, title, description, normal_price, sale_price, point, delivery_info, delivery_fee, stock, category, category_key)
VALUES ('H0FC6', 'http://public.codesquad.kr/jk/storeapp/data/f6817349118d4c671da8dca9065649a9.jpg',
'[마더앤찬] 명란치즈계란말이 230g', '아이반찬으로 최고 계란말이', 4300, 3870, 43,
'서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가) [월 · 화 · 수 · 목 · 금] 수령 가능한 상품입니다.', '2,500원 (40,000원 이상 구매 시 무료)', 10, 3, 5);

INSERT INTO item(hash, image, title, description, normal_price, sale_price, point, delivery_info, delivery_fee, stock, category, category_key)
VALUES ('HCCFE', 'http://public.codesquad.kr/jk/storeapp/data/757878b14ee5a8d5af905c154fc38f01.jpg',
'[옹가솜씨] 달걀곤약조림 330g', '칼로리 부담 쭉쭉 내린', 5800, null, 58,
'서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가) [월 · 화 · 수 · 목 · 금] 수령 가능한 상품입니다.', '2,500원 (40,000원 이상 구매 시 무료)', 10, 3, 6);

INSERT INTO item(hash, image, title, description, normal_price, sale_price, point, delivery_info, delivery_fee, stock, category, category_key)
VALUES ('HB9C1', 'http://public.codesquad.kr/jk/storeapp/data/043cf496f07899e7515f761e29d1ffa9.jpg',
'[너의반찬] 미소된장 고추무침 200g', '고소한 양념 때문에 손이 자꾸 가요', 4500, null, 45,
'서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가) [월 · 화 · 수 · 목 · 금] 수령 가능한 상품입니다.', '2,500원 (40,000원 이상 구매 시 무료)', 10, 3, 7);

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
--------- THUMB IMAGE & DETAIL SECTION-----------

INSERT INTO thumb_image(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4cce011a4a352c22cd399a60271b4921.jpg', 1, 0);
INSERT INTO thumb_image(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/6ef14155afc5b47e8c9efd762f7a6096.jpg', 1, 1);
INSERT INTO thumb_image(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/8744504ff3bc315f901dca1f26fe63a1.jpg', 1, 2);

INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/9c2c53b40a11b79c90549a058c2da4b7.jpg', 1, 0);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/70b0c77d3ef5cdd6269588685bbefe43.jpg', 1, 1);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/72f1049b047f65f42a267d5bbd1e6204.jpg', 1, 2);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/768afd17faa8bf3461b8160ba0aa26bf.jpg', 1, 3);
INSERT INTO detail_section(name, item, item_key) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/95816f09d3294641f2e0feacaa739991.jpg', 1, 4);

