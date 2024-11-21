package com.petnet.domain.map.vo;

import lombok.Data;

@Data
public class Place {
    private String placeId;
    private String fcltyNm;
    private String ctgryThreeNm;
    private String ctyprvnSignguNm;
    private double lcLa;
    private double lcLo;
    private String rdnmadrNm;
    private String hmpgUrl;
    private String telNo;
    private String rstdeGuidCn;
    private String operTime;
    private String parkngPosblAt;
    private int minWeight;
    private int maxWeight;
    private String petLmttMtrCn;
    private String petAcptAditChrgeValue;
    private String inPlaceAcptPosblAt;
    private String outPlaceAcptPosblAt;
    private String fcltyInfoDc;
}
