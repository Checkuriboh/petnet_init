package com.petnet.domain.topic.service;

import com.petnet.domain.topic.vo.Topic;
import com.petnet.domain.topic.mapper.TopicMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

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

}
