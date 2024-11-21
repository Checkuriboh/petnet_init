package com.petnet.domain.map.service;

import static org.junit.jupiter.api.Assertions.*;

import java.util.List;


import com.petnet.domain.map.vo.Place;
import com.petnet.domain.map.vo.PlaceFilter;
import org.junit.jupiter.api.Test;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.ActiveProfiles;

@SpringBootTest
@ActiveProfiles("local")
@MapperScan("com.petnet.domain.map.mapper")
class PlaceServiceTest {

    @Autowired
    private PlaceService placeService;

    @Test
    void testGetPlaces() {
        PlaceFilter filter = new PlaceFilter();
        filter.setPlaceType("식당");
        filter.setMinWeight(0);
        filter.setMaxWeight(25);
        filter.setLatitude(37.5665); // 위도 (서울)
        filter.setLongitude(126.9780); // 경도 (서울)

        List<Place> places = placeService.getPlaces(filter);

        assertNotNull(places);
        assertFalse(places.isEmpty());
    }

    //@Test
    void testAddPlace() {
        Place place = new Place();
        place.setPlaceId("test123");
        place.setFcltyNm("테스트 장소");
        place.setCtgryThreeNm("카페");
        place.setCtyprvnSignguNm("서울특별시 강남구");
        place.setLcLa(37.5172);
        place.setLcLo(127.0473);

        placeService.addPlace(place);

        Place retrievedPlace = placeService.getPlaceById("test123");
        assertNotNull(retrievedPlace);
        assertEquals("테스트 장소", retrievedPlace.getFcltyNm());
    }

    //@Test
    void testGetPlaceById() {
        Place place = placeService.getPlaceById("existing_place_id");
        assertNotNull(place);
        // 알려진 데이터에 기반한 추가 검증 로직을 추가하세요.
    }

    //@Test
    void testSearchPlacesByName() {
        List<Place> places = placeService.searchPlacesByName("카페");
        assertNotNull(places);
        assertFalse(places.isEmpty());
    }

    //@Test
    void testSearchPlacesByArea() {
        List<Place> places = placeService.searchPlacesByArea("서울특별시 강남구");
        assertNotNull(places);
        assertFalse(places.isEmpty());
    }

    //@Test
    void testGetRandomPlaces() {
        List<Place> places = placeService.getRandomPlaces("서울특별시 강남구");
        assertNotNull(places);
        assertEquals(5, places.size());
    }
}

