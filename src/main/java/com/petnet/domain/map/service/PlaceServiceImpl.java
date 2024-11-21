package com.petnet.domain.map.service;

import java.util.List;

import com.petnet.domain.map.mapper.PlaceMapper;
import com.petnet.domain.map.vo.Place;
import com.petnet.domain.map.vo.PlaceFilter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class PlaceServiceImpl implements PlaceService {

    @Autowired
    private PlaceMapper placeMapper;

    @Override
    public List<Place> getPlaces(PlaceFilter filter) {
        return placeMapper.getPlaces(filter);
    }

    @Override
    public void addPlace(Place place) {
        placeMapper.addPlace(place);
    }

    @Override
    public Place getPlaceById(String placeId) {
        return placeMapper.getPlacesPost(placeId);
    }

    @Override
    public List<Place> searchPlacesByName(String name) {
        return placeMapper.searchPlacesName(name);
    }

    @Override
    public List<Place> searchPlacesByArea(String area) {
        return placeMapper.searchPlacesArea(area);
    }

    @Override
    public List<Place> getRandomPlaces(String area) {
        return placeMapper.searchPlacesRandom(area);
    }
}