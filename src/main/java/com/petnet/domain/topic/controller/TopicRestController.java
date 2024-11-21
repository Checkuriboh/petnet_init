package com.petnet.domain.topic.controller;

import com.petnet.domain.topic.vo.Topic;
import com.petnet.domain.topic.service.TopicService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/topics/*")
public class TopicRestController {

    /// Field
    @Autowired
    private TopicService topicService;


    /// Method
    @GetMapping("{topicId}") // not yet test
    public Topic getTopic(@PathVariable String topicId) throws Exception
    {
        System.out.println("/api/topics/{topicId} : GET");
        return topicService.getTopic(topicId);
    }

}
