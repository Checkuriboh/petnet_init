package com.petnet.domain.map.mapper;

import com.petnet.domain.map.vo.Place;
import com.petnet.domain.map.vo.PlaceFilter;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface PlaceMapper {

    // 1. 장소 목록 조회
    List<Place> getPlaces(PlaceFilter filter);

    // 2. 장소 추가
    void addPlace(Place place);

    // 3. 특정 장소 상세 조회
    Place getPlacesPost(String placeId);

    // 4. 장소 이름 검색
    List<Place> searchPlacesName(String name);

    // 5. 지역 검색
    List<Place> searchPlacesArea(String area);

    // 6. 랜덤 장소 검색
    List<Place> searchPlacesRandom(String area);
}
