package com.voidmain.dao;

import java.util.List;

import com.voidmain.pojo.CropSale;
import com.voidmain.pojo.Fertilizer;
import com.voidmain.pojo.LandRental;
import com.voidmain.pojo.Loans;
import com.voidmain.pojo.Machinary;
import com.voidmain.pojo.Market;
import com.voidmain.pojo.MarketCrops;
import com.voidmain.pojo.User;

public class HibernateDAO {

	public static String isValidUser(String username,String password)
	{
		String role=null;

		User user=getUserById(username);

		if(user!=null && user.getPassword().equals(password) && user.getStatus().equals("yes"))
		{
			role=user.getUserType();
		}

		return role;
	}

	//============================================================================

	public static User getUserById(String id)
	{
		return (User)HibernateTemplate.getObject(User.class,id);
	}

	public static int deleteUser(String id)
	{
		return HibernateTemplate.deleteObject(User.class,id);
	}

	public static List<User> getUsers()
	{
		List<User> users=(List)HibernateTemplate.getObjectListByQuery("From User");

		return users;
	}

	//=========================================================================
	
	public static CropSale getCropSaleById(int id)
	{
		return (CropSale)HibernateTemplate.getObject(CropSale.class,id);
	}

	public static int deleteCropSale(int id)
	{
		return HibernateTemplate.deleteObject(CropSale.class,id);
	}

	public static List<CropSale> getCropSales()
	{
		List<CropSale> cropSales=(List)HibernateTemplate.getObjectListByQuery("From CropSale");

		return cropSales;
	}
	
	//=========================================================================
	
	public static Fertilizer getFertilizerById(int id)
	{
		return (Fertilizer)HibernateTemplate.getObject(Fertilizer.class,id);
	}

	public static int deleteFertilizer(int id)
	{
		return HibernateTemplate.deleteObject(Fertilizer.class,id);
	}

	public static List<Fertilizer> getFertilizers()
	{
		List<Fertilizer> fertilizers=(List)HibernateTemplate.getObjectListByQuery("From Fertilizer");

		return fertilizers;
	}
	
	
	//=========================================================================
	
	
	public static LandRental getLandRentalById(int id)
	{
		return (LandRental)HibernateTemplate.getObject(LandRental.class,id);
	}

	public static int deleteLandRental(int id)
	{
		return HibernateTemplate.deleteObject(LandRental.class,id);
	}

	public static List<LandRental> getLandRentals()
	{
		List<LandRental> landRentals=(List)HibernateTemplate.getObjectListByQuery("From LandRental");

		return landRentals;
	}
	
	//=========================================================================
	
	public static Loans getLoansById(int id)
	{
		return (Loans)HibernateTemplate.getObject(Loans.class,id);
	}

	public static int deleteLoans(int id)
	{
		return HibernateTemplate.deleteObject(Loans.class,id);
	}

	public static List<Loans> getLoanss()
	{
		List<Loans> loans=(List)HibernateTemplate.getObjectListByQuery("From Loans");

		return loans;
	}
	
	//=========================================================================
	
	public static Machinary getMachinaryById(int id)
	{
		return (Machinary)HibernateTemplate.getObject(Machinary.class,id);
	}

	public static int deleteMachinary(int id)
	{
		return HibernateTemplate.deleteObject(Machinary.class,id);
	}

	public static List<Machinary> getMachinarys()
	{
		List<Machinary> machinarys=(List)HibernateTemplate.getObjectListByQuery("From Machinary");

		return machinarys;
	}
	
	//=========================================================================
	
	public static Market getMarketById(int id)
	{
		return (Market)HibernateTemplate.getObject(Market.class,id);
	}

	public static int deleteMarket(int id)
	{
		return HibernateTemplate.deleteObject(Market.class,id);
	}

	public static List<Market> getMarkets()
	{
		List<Market> markets=(List)HibernateTemplate.getObjectListByQuery("From Market");

		return markets;
	}
	
	//=========================================================================
	
	public static MarketCrops getMarketCropsById(int id)
	{
		return (MarketCrops)HibernateTemplate.getObject(MarketCrops.class,id);
	}

	public static int deleteMarketCrops(int id)
	{
		return HibernateTemplate.deleteObject(MarketCrops.class,id);
	}

	public static List<MarketCrops> getMarketCropss()
	{
		List<MarketCrops> marketCrops=(List)HibernateTemplate.getObjectListByQuery("From MarketCrops");

		return marketCrops;
	}
	
	//=========================================================================
}
