package com.petnet.domain.topic.service;

import com.petnet.domain.topic.vo.Topic;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.sql.Timestamp;
import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

@SpringBootTest
public class TopicServiceTest {

    @Autowired
    private TopicService topicService;

    //@Test
    void getTopic() throws Exception
    {
        Topic topic = topicService.getTopic("CW00000001");

        assertEquals("CW00000001", topic.getTopicId());
        assertEquals(1, topic.getAuthorId());
        assertEquals('1', topic.getCategory());
        assertEquals("My First Post", topic.getTitle());
        assertEquals("This is the content of my first post.", topic.getContent());
        assertEquals(123, topic.getViewCount());
        assertEquals(10, topic.getLikeCount());
        assertEquals(2, topic.getDislikeCount());
//        assertEquals(Timestamp.valueOf("2024-11-21 00:32:33"), topic.getAddDate());
        assertNull(topic.getUpdateDate());
        assertNotNull(topic.getFiles());
        assertTrue(topic.getIsDownloadable());
    }

    //@Test
    void getAllTopics() throws Exception
    {
        List<Topic> topics = topicService.getTopics('1');
        assertEquals(2, topics.size());
        Topic topic = topics.get(0);

        assertEquals("CW00000001", topic.getTopicId());
        assertEquals(1, topic.getAuthorId());
        assertEquals("john_doe", topic.getAuthorName());
        assertEquals('1', topic.getCategory());
        assertEquals("My First Post", topic.getTitle());
        assertEquals(10, topic.getLikeCount());
        assertNotNull(topic.getAddDate());
    }

    //@Test
    void searchAllTopics() throws Exception
    {
        List<Topic> topics = topicService.getTopics('2', 3, '1', '3', "brown");
        assertEquals(1, topics.size());
        Topic topic = topics.get(0);

        assertEquals("CW00000003", topic.getTopicId());
        assertEquals(3, topic.getAuthorId());
        assertEquals("alice_brown", topic.getAuthorName());
        assertEquals('1', topic.getCategory());
        assertEquals("한글로 작성한 제목", topic.getTitle());
        assertEquals(5, topic.getLikeCount());
        assertNotNull(topic.getAddDate());
    }

}