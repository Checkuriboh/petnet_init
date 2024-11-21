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
    private String topicId;             // topic_id
    private Integer authorId;               // author_id    //==> User vo
    private String authorName;          // user.nickname
    private Character category;              // topic_type
    private String title;               // title
    private String content;             // content
    private Integer viewCount;              // view_count
    private Integer likeCount;              // like_count
    private Integer dislikeCount;           // dislike_count
    private Timestamp addDate;          // add_date
    private Timestamp updateDate;       // update_date
    private String files;               // files (JSON)
    private Boolean isDownloadable;     // is_downloadable

}
