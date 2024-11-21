package com.petnet.domain.topic.service;

import com.petnet.domain.topic.vo.Topic;

import java.util.List;

public interface TopicService {

    /// Method

    Topic getTopic(String topicId) throws Exception;

    void addTopic(Topic topic) throws Exception;

    void updateTopic(Topic topic) throws Exception;

    void deleteTopic(String topicId) throws Exception;

    List<Topic> getTopics(Character category) throws Exception;

    List<Topic> getTopics(Character range, Integer userId, Character category, Character condition, String keyword) throws Exception;

    List<Topic> getHotTopics() throws Exception;

    List<Topic> getScrapTopics(Integer userId) throws Exception;

}
