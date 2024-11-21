package com.petnet.domain.map.vo;

import lombok.Data;

@Data
public class PlaceFilter {
    private String placeType; // 장소 타입 (식당/카페/여행지)
    private int minWeight;    // 최소 무게
    private int maxWeight;    // 최대 무게
    private double latitude;  // 사용자 현재 위치 위도
    private double longitude; // 사용자 현재 위치 경도
}
