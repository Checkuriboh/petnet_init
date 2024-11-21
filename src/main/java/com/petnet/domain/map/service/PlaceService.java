package com.petnet.domain.map.service;

import com.petnet.domain.map.vo.Place;
import com.petnet.domain.map.vo.PlaceFilter;

import java.util.List;


public interface PlaceService {

    // 1. 장소 목록 조회
    List<Place> getPlaces(PlaceFilter filter);

    // 2. 장소 추가
    void addPlace(Place place);

    // 3. 특정 장소 상세 조회
    Place getPlaceById(String placeId);

    // 4. 장소 이름 검색
    List<Place> searchPlacesByName(String name);

    // 5. 지역 검색
    List<Place> searchPlacesByArea(String area);

    // 6. 랜덤 장소 검색
    List<Place> getRandomPlaces(String area);
}

