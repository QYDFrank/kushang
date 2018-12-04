/*
create by:Holly
create date:16/11/2018
updated by:null
updated date:null
*/
package com.niit.supportclasses;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

public class GeneralSupport {

	public static String getDate() {
		DateFormat df=new SimpleDateFormat("yyyy/MM/dd");
		Date dateobj=new Date();
		String date=df.format(dateobj).toString();
		return date;
	}
	
	public static String returnDate() {
		DateFormat df=new SimpleDateFormat("dd/MM/yy");
		Date dateobj=new Date();
		dateobj.setDate(dateobj.getDate()+20);
		String date=df.format(dateobj).toString();
		return date;
	}
   
}

