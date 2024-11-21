CREATE TABLE TOPIC (
    TOPIC_ID		CHAR(10)		NOT NULL,
    AUTHOR_ID		INT			    NOT NULL,
    TOPIC_TYPE		CHAR(1)		    NOT NULL,
    TITLE			VARCHAR(50)	    NOT NULL,
    CONTENT			LONGTEXT		NOT NULL,
    VIEW_COUNT		INT UNSIGNED	NOT NULL,
    LIKE_COUNT		INT UNSIGNED	NOT NULL,
    DISLIKE_COUNT	INT UNSIGNED	NOT NULL,
    ADD_DATE		TIMESTAMP	    NOT NULL,
    UPDATE_DATE		TIMESTAMP	    NULL,
    FILES			JSON			NULL,
    IS_DOWNLOADABLE	BOOLEAN		    NULL
);

INSERT INTO TOPIC (
    TOPIC_ID, AUTHOR_ID, TOPIC_TYPE, TITLE, CONTENT,
    VIEW_COUNT, LIKE_COUNT, DISLIKE_COUNT, ADD_DATE, UPDATE_DATE,
    FILES, IS_DOWNLOADABLE
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


SELECT * FROM TOPIC;

