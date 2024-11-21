package com.petnet.domain.topic.mapper;

import com.petnet.domain.topic.vo.Topic;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface TopicMapper {

    /// Method

    // SELECT ONE
    Topic getTopic(String topicId) throws Exception;

    // SELECT LIST : Search
    List<Topic> getTopics(Character range, Integer userId, Character category, Character condition, String keyword) throws Exception;

    // SELECT LIST : Scrap
    List<Topic> getScrapTopics(Integer userId) throws Exception;

}
