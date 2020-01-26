package com.client;

import java.io.BufferedReader;
import java.io.FileReader;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import itfinch.lifestyleandspaces.beans.Abacus;
import itfinch.lifestyleandspaces.util.HibernateUtil;


public class AbacusTest {
	
	public static void main(String[] args) {
		
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		
		
		BufferedReader br=null;
		try {
			 	br = new BufferedReader(new FileReader("D:\\BIDT FILES\\BD1211MH1.txt"));
				try {
					StringBuilder sb = new StringBuilder();
					String line = br.readLine();
					System.out.println("Start time :"+System.currentTimeMillis());
					int count=0;
					while ((line = br.readLine()) != null) {
						Abacus abacus = new Abacus();
						abacus.setCarrierCode(line.substring(0, 3));
						abacus.setGroupPnrIndicator(line.substring(3, 4));
						abacus.setDomesticIndicator(line.substring(4, 5));
						abacus.setPccNumber(line.substring(5, 9));
						abacus.setIataNumber(line.substring(9, 16));
						abacus.setAgencyName(line.substring(16, 41));
						abacus.setAgencyCity(line.substring(41, 56));
						abacus.setAgencyCountryCode(line.substring(56, 58));
						abacus.setCityPairFrom(line.substring(58, 61));
						abacus.setCityPairTo(line.substring(61, 64));
						abacus.setLowFlightNum(line.substring(64, 68));
						abacus.setHighFlightNum(line.substring(68, 72));
						abacus.setSharedCodeCarrier(line.substring(72, 75));
						abacus.setBookingDate(line.substring(75, 83));
						abacus.setFlightDate(line.substring(83, 91));
						abacus.setFlightNum(line.substring(91, 95));
						abacus.setPaxName(line.substring(95, 120));
						abacus.setClassOfServ(line.substring(120, 122));
						abacus.setStatusCode(line.substring(122, 124));
						abacus.setNcIndicator(line.substring(124, 125));
						abacus.setAccTypeIndicator(line.substring(125, 127));
						abacus.setPnrRecLocator(line.substring(127, 133));
						abacus.setPaxCount(line.substring(133, 136));
						abacus.setActIndicator(line.substring(137, 137));
						abacus.setFiller(line.substring(137, 149));
						abacus.setFiller1(line.substring(149, 160));
						session.save(abacus);
						count++;
						if(count==1500000){
							break;
						}
						
					}
					System.out.println("End time :"+System.currentTimeMillis());
				} catch (Exception e) {
					//e.printStackTrace();
					System.out.println("while loop err");
				}
		}catch (Exception e) {
			// TODO: handle exception
			System.out.println("File not found !!");
		}
		finally {
			try {
				br.close();
			} catch (Exception e2) {
				//System.out.println("File not found !!");
			}
		}
		
		transaction.commit();
		session.close();
	}
}
