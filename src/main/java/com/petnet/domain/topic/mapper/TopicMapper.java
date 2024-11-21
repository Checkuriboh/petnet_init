package com.petnet.domain.topic.mapper;

import com.petnet.domain.topic.vo.Topic;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface TopicMapper {

    /// Method
    // SELECT ONE
    public Topic getTopic(String topicId) throws Exception;

}
