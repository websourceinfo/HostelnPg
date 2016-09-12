package com.aartek.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aartek.model.Area;
import com.aartek.model.City;
import com.aartek.model.Country;
import com.aartek.model.HostelnPGPost;
import com.aartek.model.UserRegistration;
import com.aartek.repository.LoginRepository;
import com.aartek.repository.SearchRepository;

@Service
public class SearchService {
	
	@Autowired
	private SearchRepository searchrepository;

	public List<Country> validateCountryService()
	{
		List<Country> countrylist = null;
		
		countrylist=searchrepository.searchCountryRepository();
		if(countrylist.size()==0)
		{
			return null; 
		}
		else
		{
			return countrylist;
		
		}
	}

	public List<City> validateCityService(Integer id) {
List<City> cityList = null;
		
		cityList=searchrepository.searchCityRepository(id);
		if(cityList.size()==0)
		{
			return null; 
		}
		else
		{
			return cityList;
		
		}
	}
	public List<HostelnPGPost> validateSearchByFilterService(String city,String area) {
		List<HostelnPGPost> HostelnPGPost = null;
				
		HostelnPGPost=searchrepository.searchbyFilterRepository(city,area);
				if(HostelnPGPost.size()==0)
				{
					return null; 
				}
				else
				{
					return HostelnPGPost;
				
				}
			}
	
	public List<Area> validateAreaService(Integer id) {
	       List<Area> areaList = null;
			
			areaList=searchrepository.searchAreaRepository(id);
			if(areaList.size()==0)
			{
				return null; 
			}
			else
			{
				return areaList;
			
			}
		}

	
	}