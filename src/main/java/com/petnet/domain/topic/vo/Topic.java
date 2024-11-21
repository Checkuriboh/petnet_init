package com.petnet.domain.topic.vo;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

import java.sql.Timestamp;

@Getter
@Setter
@ToString
@NoArgsConstructor
public class Topic {

    /// Field
    private String topicId;             // TOPIC_ID
    private int authorId;               // AUTHOR_ID
    private Character topicType;        // TOPIC_TYPE
    private String title;               // TITLE
    private String content;             // CONTENT
    private int viewCount;              // VIEW_COUNT
    private int likeCount;              // LIKE_COUNT
    private int dislikeCount;           // DISLIKE_COUNT
    private Timestamp addDate;          // ADD_DATE
    private Timestamp updateDate;       // UPDATE_DATE
    private String files;  // FILES (JSON)
    private Boolean isDownloadable;     // IS_DOWNLOADABLE

}
