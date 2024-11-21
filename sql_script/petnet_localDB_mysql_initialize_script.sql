
# INITIALIZE DATABASE;

DROP DATABASE IF EXISTS localpetnet;
CREATE DATABASE localpetnet;
USE localpetnet;



# INITIALIZE TABLES;

DROP TABLE IF EXISTS expense;
DROP TABLE IF EXISTS item;

DROP TABLE IF EXISTS favorite;
DROP TABLE IF EXISTS post;
DROP TABLE IF EXISTS point;
DROP TABLE IF EXISTS voucher;
DROP TABLE IF EXISTS purchase;
DROP TABLE IF EXISTS delivery_info;
DROP TABLE IF EXISTS budget;

DROP TABLE IF EXISTS quiz;
DROP TABLE IF EXISTS topic;
DROP TABLE IF EXISTS place;
DROP TABLE IF EXISTS product;

DROP TABLE IF EXISTS user;



# TABLES CREATE AND INSERT;


# USER

CREATE TABLE user (
                        user_id	INT	NOT NULL,
                        PASSWORD	VARCHAR(255)	NULL,
                        NICKNAME	VARCHAR(255)	NULL,
                        CELLPHONENUMBER	VARCHAR(255)	NULL,
                        CREATE_DATE	TIMESTAMP	NOT NULL,
                        UPDATE_DATE	TIMESTAMP	NULL,
                        LAST_CONNECTED_DATE	TIMESTAMP	NULL,
                        EMAIL	VARCHAR(255)	NULL,
                        GOOGLE	VARCHAR(255)	NULL,
                        KAKAO	VARCHAR(255)	NULL,
                        BIRTH	Date	NULL,
                        DELETE_DATE	TIMESTAMP	NULL,
                        STATUS	CHAR	NOT NULL,

                        PRIMARY KEY (user_id)
);
INSERT INTO user (
    user_id, PASSWORD, NICKNAME, CELLPHONENUMBER, CREATE_DATE, UPDATE_DATE, LAST_CONNECTED_DATE, EMAIL, GOOGLE, KAKAO, BIRTH, DELETE_DATE, STATUS
) VALUES
      (1, 'password123', 'john_doe', '010-1234-5678', CURRENT_TIMESTAMP, NULL, CURRENT_TIMESTAMP, 'john.doe@example.com', NULL, NULL, '1990-01-01', NULL, 'A'),
      (2, 'securePass2024', 'jane_smith', '010-9876-5432', CURRENT_TIMESTAMP, NULL, CURRENT_TIMESTAMP, 'jane.smith@example.com', NULL, NULL, '1985-05-20', NULL, 'A'),
      (3, 'password456', 'alice_brown', '010-5555-6666', CURRENT_TIMESTAMP, NULL, CURRENT_TIMESTAMP, 'alice.brown@example.com', NULL, NULL, '1992-07-15', NULL, 'B'),
      (4, 'pass7890', 'bob_lee', '010-4444-8888', CURRENT_TIMESTAMP, NULL, CURRENT_TIMESTAMP, 'bob.lee@example.com', NULL, NULL, '1988-10-10', NULL, 'A'),
      (5, 'mypassword', 'carol_white', '010-2222-3333', CURRENT_TIMESTAMP, NULL, CURRENT_TIMESTAMP, 'carol.white@example.com', NULL, NULL, '1995-03-25', NULL, 'A');

SELECT * FROM user;



# PRODUCT;

CREATE TABLE product (
                         product_id 			VARCHAR(10) 	NOT NULL,
                         product_name 		VARCHAR(100) 	NOT NULL,
                         price 				INT UNSIGNED 	NOT NULL,
                         product_stock		INT UNSIGNED 	NOT NULL,
                         discount 			INT 			NULL,
                         product_detail 		TEXT 			NULL,
                         product_add_date 	TIMESTAMP 	NOT NULL,
                         validity_date 		INT 			NULL,
                         product_category 	VARCHAR(20) 	NULL,
                         animal_category 		VARCHAR(20) 	NULL,
                         brand_category 		VARCHAR(20) 	NULL,
                         images 			JSON 		NULL,

                         PRIMARY KEY (product_id)
);

INSERT INTO product (
    product_id, product_name, price, product_stock, discount, product_detail,
    product_add_date, validity_date, product_category, animal_category,
    brand_category, images
)
VALUES
    ('p0001', '강아지 장난감', 15000, 50, 10, '개가 좋아해요',
     CURRENT_TIMESTAMP, NULL, 'Toy', 'Dog', NULL, JSON_OBJECT('url', '/images/dog_toy.jpg')),
    ('p0002', '고양이 츄르', 30000, 20, 0, '고양이가 좋아해요',
     CURRENT_TIMESTAMP, NULL, 'Snack', 'Cat', NULL, JSON_OBJECT('url', '/images/cat_post.jpg')),
    ('p0003', '강아지 사료', 8000, 100, 5, '개가 좋아해요',
     CURRENT_TIMESTAMP, NULL, 'Food', 'Dog', NULL, JSON_OBJECT('url', '/images/bird_seed.jpg'));

SELECT * FROM product;



# PLACE;

CREATE TABLE place (
                       place_id 				VARCHAR(200) 		NOT NULL,
                       fclty_nm 				VARCHAR(200) 		NOT NULL,
                       ctgry_three_nm 			VARCHAR(200) 		NOT NULL,
                       ctyprvn_signgu_nm 		VARCHAR(200) 		NOT NULL,
                       lc_la 					VARCHAR(20) 		NOT NULL,
                       lc_lo 					VARCHAR(20) 		NOT NULL,
                       rdnmadr_nm 			VARCHAR(200) 		NULL,
                       hmpg_url				VARCHAR(255) 		NULL,
                       tel_no 				VARCHAR(20) 		NULL,
                       rstde_guid_cn 			VARCHAR(255) 		NULL,
                       oper_time 				VARCHAR(255) 		NULL,
                       parkng_posbl_at 			CHAR(1) NOT 		NULL,
                       min_weight 			TINYINT UNSIGNED 	NOT NULL,
                       max_weight 			TINYINT UNSIGNED 	NOT NULL,
                       pet_lmtt_mtr_cn 			TEXT 				NULL,
                       pet_acp_adit_chrge_value 	VARCHAR(255) 		NOT NULL,
                       in_place_acp_posbl_at 		CHAR(1) 			NOT NULL,
                       out_place_acp_posbl_at 	CHAR(1) 			NOT NULL,
                       fclty_info_dc 			TEXT 				NOT NULL,

                       PRIMARY KEY (place_id)
);

INSERT INTO place (
    place_id, fclty_nm, ctgry_three_nm, ctyprvn_signgu_nm,
    lc_la, lc_lo, rdnmadr_nm, hmpg_url, tel_no,
    rstde_guid_cn, oper_time, parkng_posbl_at, min_weight,
    max_weight, pet_lmtt_mtr_cn, pet_acp_adit_chrge_value,
    in_place_acp_posbl_at, out_place_acp_posbl_at, fclty_info_dc
) VALUES
      ('place001', 'Happy Pet Park', 'Pet Park', 'Seoul Gangnam',
       '37.498095', '127.027610', '123 Gangnam-daero, Seoul', 'http://happypetpark.com', '010-1234-5678',
       'Closed on Mondays', '09:00-21:00', 'Y', 5, 30,
       'Small dogs allowed', '5000', 'Y', 'N', 'A large outdoor park for pets and owners'),
      ('place002', 'Pet Friendly Cafe', 'Cafe', 'Busan Haeundae',
       '35.158697', '129.160384', '45 Haeundae Beach Road, Busan', NULL, '051-9876-5432',
       NULL, '10:00-22:00', 'N', 0, 0,
       NULL, '0', 'Y', 'Y', 'A cozy cafe with a dedicated pet area');

SELECT * FROM place;



# TOPIC

CREATE TABLE topic (
    topic_id        CHAR(10)        NOT NULL,
    author_id       INT             NOT NULL,
    topic_type      CHAR(1)         NOT NULL,
    title           VARCHAR(50)     NOT NULL,
    content         LONGTEXT        NOT NULL,
    view_count      INT UNSIGNED    NOT NULL,
    like_count      INT UNSIGNED    NOT NULL,
    dislike_count   INT UNSIGNED    NOT NULL,
    add_date        TIMESTAMP       NOT NULL,
    update_date     TIMESTAMP       NULL,
    files           JSON            NULL,
    is_downloadable BOOLEAN         NULL,

    PRIMARY KEY (topic_id)
);

INSERT INTO topic (
    topic_id, author_id, topic_type, title, content,
    view_count, like_count, dislike_count, add_date, update_date,
    files, is_downloadable
) VALUES
      ('CW00000001', 1, 1, 'My First Post', 'This is the content of my first post.',
       123, 10, 2, NOW(), NULL,
       '{"images": ["image1.png", "image2.png"], "videos": ["video1.mp4"]}', TRUE),
      ('CW00000002', 2, 2, 'Question about MySQL', 'How do I optimize my MySQL queries?',
       456, 20, 1, NOW(), NOW(),
       NULL, FALSE),
      ('CW00000003', 3, 1, '한글로 작성한 제목', '한글로 작성한 본문',
       789, 5, 50, NOW(), NULL,
       '{"images": ["product1.jpg"]}', TRUE);

SELECT * FROM topic;



# QUIZ;

CREATE TABLE quiz (
                      quiz_id 		VARCHAR(8) 	NOT NULL,
                      quiz_content 	VARCHAR(100) 	NOT NULL,
                      quiz_option1 	VARCHAR(20) 	NOT NULL,
                      quiz_option2 	VARCHAR(20) 	NOT NULL,
                      quiz_option3 	VARCHAR(20) 	NOT NULL,
                      quiz_option4 	VARCHAR(20) 	NOT NULL,
                      answer 		INT(1) 		NOT NULL,

                      PRIMARY KEY (quiz_id)
);

INSERT INTO quiz (
    quiz_id, quiz_content, quiz_option1, quiz_option2, quiz_option3, quiz_option4, answer
) VALUES
      ('qz000001', '다음 중 대한민국의 수도는?', '서울', '도쿄', '북경', '워싱턴', 1),
      ('qz000002', '다음 중 가장 큰 행성은?', '지구', '화성', '목성', '금성', 3),
      ('qz000003', '다음 중 4x5의 결과는?', '15', '20', '25', '30', 2);

SELECT * FROM quiz;



# BUDGET;

CREATE TABLE budget (
                        budget_id 			VARCHAR(10) 	NOT NULL,
                        user_id 			INT 			NOT NULL,
                        expense_category 	VARCHAR(20) 	NOT NULL,
                        budget_amount 		INT 			NOT NULL,
                        is_notification 		BOOLEAN 		NOT NULL,

                        PRIMARY KEY (budget_id),
                        FOREIGN KEY (user_id) REFERENCES user(user_id)
);

INSERT INTO budget (
    BUDGET_ID, USER_ID, EXPENSE_CATEGORY, BUDGET_AMOUNT, IS_NOTIFICATION
) VALUES
      ('BG0001', 1, '식비', 500000, TRUE),
      ('BG0002', 1, '교통비', 200000, FALSE),
      ('BG0003', 2, '교육비', 1000000, TRUE);

SELECT * FROM budget;



# DELIVERY_INFO;

CREATE TABLE delivery_info (
                               delivery_info_id 			VARCHAR(20) 	NOT NULL,
                               user_id 				INT 			NOT NULL,
                               zip_code 				VARCHAR(10) 	NOT NULL,
                               delivery_address 			VARCHAR(100) 	NOT NULL,
                               buyer_name 			VARCHAR(50) 	NOT NULL,
                               delivery_phone_number 	VARCHAR(20) 	NOT NULL,

                               PRIMARY KEY (delivery_info_id),
                               FOREIGN KEY (user_id) REFERENCES user(user_id)
);

INSERT INTO delivery_info (
    delivery_info_id, user_id, zip_code, delivery_address, buyer_name, delivery_phone_number
)
VALUES
    ('di0001', 1, '12345', '123 Dog Street', 'John Doe', '010-1234-5678'),
    ('di0002', 2, '54321', '456 Cat Lane', 'Jane Smith', '010-9876-5432'),
    ('di0003', 3, '67890', '789 Bird Ave', 'Alice Brown', '010-5555-6666');

SELECT * FROM delivery_info;



# PURCHASE;

CREATE TABLE purchase (
                          purchase_id 			VARCHAR(20) 	NOT NULL,
                          user_id 				INT 			NOT NULL,
                          product_id 				VARCHAR(10) 	NOT NULL,
                          payment_id 			VARCHAR(50) 	NOT NULL,
                          paid_date 				TIMESTAMP 	NOT NULL,
                          payment_amount 		INT 			NOT NULL,
                          product_name 			VARCHAR(100) 	NULL,
                          order_quantity 			INT 			NOT NULL,
                          comment 				TEXT 			NULL,
                          buyer_name 			VARCHAR(50) 	NOT NULL,
                          delivery_address 			VARCHAR(100) 	NOT NULL,
                          zip_code 				VARCHAR(10) 	NOT NULL,
                          delivery_phone_number 	VARCHAR(20) 	NOT NULL,
                          delivery_date 			DATE 		NULL,
                          payment_option 			VARCHAR(10) 	NOT NULL,
                          card_option			VARCHAR(10) 	NOT NULL,
                          purchase_status 			VARCHAR(2) 	NULL,

                          PRIMARY KEY (purchase_id),
                          FOREIGN KEY (user_id) REFERENCES user(user_id),
                          FOREIGN KEY (product_id) REFERENCES product(product_id)
);

INSERT INTO purchase (
    purchase_id, user_id, product_id, payment_id, product_name, paid_date,
    payment_amount, order_quantity, comment, buyer_name, delivery_address,
    zip_code, delivery_phone_number, delivery_date, payment_option,
    card_option, purchase_status
)
VALUES
    ('pr0001', 1, 'p0001', 'pmt001', 'Dog Chew Toy', CURRENT_TIMESTAMP,
     13500, 1, NULL, 'John Doe', '123 Dog Street', '12345',
     '010-1234-5678', DATE_ADD(CURRENT_DATE, INTERVAL 7 DAY), 'card', 'Visa', '0'),
    ('pr0002', 2, 'p0002', 'pmt002', 'Cat Scratching Post', CURRENT_TIMESTAMP,
     25500, 1, NULL, 'Jane Smith', '456 Cat Lane', '54321',
     '010-9876-5432', DATE_ADD(CURRENT_DATE, INTERVAL 7 DAY), 'easypay', 'Visa', '1'),
    ('pr0003', 3, 'p0003', 'pmt003', 'Bird Seed Mix', CURRENT_TIMESTAMP,
     7600, 2, 'Quick delivery please!', 'Alice Brown', '789 Bird Ave', '67890',
     '010-5555-6666', DATE_ADD(CURRENT_DATE, INTERVAL 7 DAY), 'card', 'MasterCard', '2');

SELECT * FROM purchase;



# VOUCHER;

CREATE TABLE voucher (
                         voucher_id 		VARCHAR(10) 	NOT NULL,
                         user_id 		INT 			NULL,
                         product_id 		VARCHAR(10) 	NULL,
                         voucher_name 	VARCHAR(100) 	NULL,
                         barcode_image 	VARCHAR(100) 	NULL,
                         barcode_number 	VARCHAR(20) 	NULL,
                         coupon_code 	VARCHAR(10) 	NULL,
                         validity_date 	DATE 		NOT NULL,
                         expiration_date 	DATE 		NULL,
                         add_date 		DATE 		NULL,
                         discount 		INT 			NULL,
                         is_used 		BOOLEAN 		NULL,

                         PRIMARY KEY (voucher_id),
                         FOREIGN KEY (user_id) REFERENCES user(user_id),
                         FOREIGN KEY (product_id) REFERENCES product(product_id)
);

INSERT INTO voucher (
    voucher_id, user_id, product_id, voucher_name, barcode_image, barcode_number,
    coupon_code, validity_date, expiration_date, add_date, discount, is_used
) VALUES
      ('pp00000001', 1, 'p0001', NULL, '바코드이미지1', '1234567890123', NULL, '2024-12-19', '2024-12-17', '2024-11-20', NULL, TRUE),
      ('pp00000002', 2, 'p0001', NULL, '바코드이미지2', '9876543210987', NULL, '2024-12-20', '2024-12-18', '2024-11-20', NULL, FALSE),
      ('pp00000003', 3, 'p0002', NULL, '바코드이미지3', '1231231231231', NULL, '2024-12-21', '2024-12-19', '2024-11-21', NULL, FALSE),
      ('pp00000004', 1, 'p0003', NULL, '바코드이미지4', '3213213213213', NULL, '2024-12-22', '2024-12-20', '2024-11-22', NULL, TRUE);

INSERT INTO voucher (
    voucher_id, user_id, product_id, voucher_name, barcode_image, barcode_number,
    coupon_code, validity_date, expiration_date, add_date, discount, is_used
)
VALUES
    ('cp00000001', 1, NULL, 'Dog Toy Discount Voucher', NULL, NULL,
     'COUPON1234', DATE_ADD(CURRENT_DATE, INTERVAL 15 DAY), NULL, CURRENT_TIMESTAMP, 15, FALSE),
    ('cp00000002', 2, NULL, 'Cat Scratching Post Discount', NULL, NULL,
     '5678COUPON', DATE_ADD(CURRENT_DATE, INTERVAL 15 DAY), '2024-11-25', CURRENT_TIMESTAMP, 20, TRUE),
    ('cp00000003', 3, NULL, 'Bird Seed Mix Special Offer', NULL, NULL,
     'BEGINUSERS', DATE_ADD(CURRENT_DATE, INTERVAL 15 DAY), NULL, CURRENT_TIMESTAMP, 10, FALSE);

SELECT * FROM voucher;



# POINT;

CREATE TABLE point (
                       user_id 			INT 			NOT NULL,
                       point_product_id 		VARCHAR(10)	NULL,
                       point_update_reason 	VARCHAR(2) 	NOT NULL,
                       point_log_date 		TIMESTAMP 	NOT NULL 		DEFAULT CURRENT_TIMESTAMP,
                       point_update_amount 	INT(7) 		NOT NULL 		DEFAULT 0,
                       my_point 			INT(7) 		NOT NULL 		DEFAULT 0,

                       FOREIGN KEY (user_id) REFERENCES user(user_id),
                       FOREIGN KEY (point_product_id) REFERENCES product(product_id)
);

INSERT INTO point (
    user_id,point_product_id, point_update_reason, point_log_date, point_update_amount, my_point
) VALUES
      (1, NULL, '0', CURRENT_TIMESTAMP, 100, 100),
      (2, NULL, '4', CURRENT_TIMESTAMP, 200, 200),
      (1, 'p0002', '7', CURRENT_TIMESTAMP, -50, 50);

SELECT * FROM point;



# POST;

CREATE TABLE post (
                      post_id 		VARCHAR(20) 	NOT NULL,
                      post_key 		INT 			NOT NULL,
                      product_id 		VARCHAR(8) 	NULL,
                      place_id 		VARCHAR(200) 	NULL,
                      topic_id 		CHAR(10) 		NULL,
                      comment_id 	VARCHAR(50) 	NULL,
                      content 		TEXT 			NOT NULL,
                      add_date 		TIMESTAMP 	NOT NULL,
                      update_date 	TIMESTAMP 	NULL,
                      visit_date 		TIMESTAMP 	NULL,
                      like_count 		INT 			NOT NULL,
                      images 		JSON 		NULL,

                      PRIMARY KEY (post_id),
                      FOREIGN KEY (product_id) REFERENCES product(product_id),
                      FOREIGN KEY (place_id) REFERENCES place(place_id),
                      FOREIGN KEY (topic_id) REFERENCES topic(topic_id),
                      FOREIGN KEY (comment_id) REFERENCES post(post_id)
);

INSERT INTO post (
    post_id, post_key, product_id, place_id,
    topic_id, comment_id, content, add_date,
    update_date, visit_date, like_count, images
) VALUES
      ('post001', 101, NULL, 'place001',
       NULL, NULL, 'Had a great time at the park!',
       CURRENT_TIMESTAMP, NULL, '2024-11-15 14:00:00', 10,
       '[{"url":"image1.jpg"}, {"url":"image2.jpg"}]'),
      ('post002', 102, NULL, 'place002',
       NULL, NULL, 'The cafe is very cozy and welcoming!',
       CURRENT_TIMESTAMP, '2024-11-18 12:00:00', NULL, 5,
       '[{"url":"cafe1.jpg"}]');

SELECT * FROM post;



# FAVORITE;

CREATE TABLE favorite (
                          favorite_id 		VARCHAR(20) NOT 	NULL,
                          user_id 		INT 				NOT NULL,
                          favorite_name 	VARCHAR(20) NOT 	NULL,
                          is_public 		BOOLEAN 			NOT NULL,
                          max_list_count 	TINYINT UNSIGNED 	NULL,

                          PRIMARY KEY (favorite_id),
                          FOREIGN KEY (user_id) REFERENCES user(user_id)
);

INSERT INTO favorite (
    favorite_id, user_id, favorite_name, is_public, max_list_count
) VALUES
      ('fav001', 1, 'My Favorite Places', TRUE, 1),
      ('fav002', 2, 'Weekend Getaways', FALSE, 2);

SELECT * FROM favorite;



# ITEM;

CREATE TABLE item (
                      item_id 	VARCHAR(20) 	NOT NULL,
                      user_id 	INT 			NOT NULL,
                      product_id 	VARCHAR(8) 	NULL,
                      place_id 	VARCHAR(200) 	NULL,
                      topic_id 	CHAR(10) 		NULL,
                      favorite_id 	VARCHAR(10) 	NOT NULL,
                      quantity 	INT UNSIGNED 	NULL,

                      PRIMARY KEY (item_id),
                      FOREIGN KEY (user_id) REFERENCES user(user_id),
                      FOREIGN KEY (product_id) REFERENCES product(product_id),
                      FOREIGN KEY (place_id) REFERENCES place(place_id),
                      FOREIGN KEY (topic_id) REFERENCES topic(topic_id),
                      FOREIGN KEY (favorite_id) REFERENCES favorite(favorite_id)
);

INSERT INTO item (
    item_id, user_id, product_id, place_id,
    topic_id, favorite_id, quantity
) VALUES
      ('item001', 1, NULL, 'place001',
       NULL, 'fav001', 2),
      ('item002', 2, NULL, 'place002',
       NULL, 'fav001', NULL);

SELECT * FROM item;



# EXPENSE

CREATE TABLE expense (
                         expense_id 			VARCHAR(10) 	NOT NULL,
                         user_id 			INT 			NOT NULL,
                         purchase_id 		VARCHAR(20) 	NULL,
                         expense_date 		DATE 		NOT NULL,
                         amount 			INT 			NOT NULL,
                         animal_category 		VARCHAR(20) 	NOT NULL,
                         expense_category 	VARCHAR(20) 	NOT NULL,
                         expense_content 		VARCHAR(50) 	NOT NULL,
                         payment_option 		VARCHAR(10) 	NOT NULL,
                         memo 			VARCHAR(100) 	NULL,

                         PRIMARY KEY (expense_id),
                         FOREIGN KEY (user_id) REFERENCES user(user_id),
                         FOREIGN KEY (purchase_id) REFERENCES purchase(purchase_id)
);

INSERT INTO expense (
    expense_id, user_id, purchase_id, expense_date, amount, animal_category, expense_category, expense_content, payment_option, memo
)
VALUES
    ('EX00000001', 1, 'pr0001', '2024-11-20', 10000, '개', '사료', '이마트', '카드결제', '사료 테스트'),
    ('EX00000002', 1, NULL, '2024-11-20', 15000, '고양이', '미용비', '동네동물미용실', '현금', '미용비 테스트'),
    ('EX00000003', 2, NULL, '2024-11-21', 20000, '개', '병원비', '우리동네병원', '카드결제', '주사 약 포함');

SELECT * FROM expense;



#
COMMIT;
#



# ALL SELECT

SELECT * FROM user;

SELECT * FROM product;
SELECT * FROM place;
SELECT * FROM topic;
SELECT * FROM quiz;

SELECT * FROM budget;
SELECT * FROM delivery_info;
SELECT * FROM purchase;
SELECT * FROM voucher;
SELECT * FROM point;
SELECT * FROM post;
SELECT * FROM favorite;

SELECT * FROM item;
SELECT * FROM expense;

