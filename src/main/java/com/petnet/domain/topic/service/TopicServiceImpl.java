package com.petnet.domain.topic.service;

import com.petnet.domain.topic.vo.Topic;
import com.petnet.domain.topic.mapper.TopicMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class TopicServiceImpl implements TopicService {

    /// Field
    @Autowired
    private TopicMapper topicMapper;

/*
    // Autowired 없이 생성자로 bean injection
    private final TopicMapper topicMapper;

    /// Constructor
    public TopicServiceImpl(TopicMapper topicMapper) {
        this.topicMapper = topicMapper;
    }
*/

    /// Method
    @Override
    public Topic getTopic(String topicId) throws Exception {
        return topicMapper.getTopic(topicId);
    }

    @Override
    public void addTopic(Topic topic) throws Exception {

    }

    @Override
    public void updateTopic(Topic topic) throws Exception {

    }

    @Override
    public void deleteTopic(String topicId) throws Exception {

    }

    @Override
    public List<Topic> getTopics(Character category) throws Exception {
        return topicMapper.getTopics(null, null, category, null, null);
    }

    @Override
    public List<Topic> getTopics(Character range, Integer userId, Character category, Character condition, String keyword) throws Exception {
        return topicMapper.getTopics(range, userId, category, condition, keyword);
    }

    @Override
    public List<Topic> getHotTopics() throws Exception {
        return List.of();
    }

    @Override
    public List<Topic> getScrapTopics(Integer userId) throws Exception {
        return topicMapper.getScrapTopics(userId);
    }

}
