package com.jpt.util;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.util.Assert;

public class DateUtil {

	protected static final Logger logger = LoggerFactory.getLogger(DateUtil.class);

	/**
	 * <pre>先计算再格式化输出</pre>
	 * @param <T>
	 * @param date
	 * @param field  "yyyy、MM、dd、HH、mm、ss"其中的一个，不传或者传错默认为dd
	 * @param num  正数为加，负数为减去
	 * @param format  yyyy、MM、dd、HH、mm、ss
	 * @return
	 */
	public static String getCalculateFormatDate(Date date,String field,int num,String format){
		Date date0 = getCalculateDate(date, field, num);
		return getFormat(date0, format);
	}
	/**
	 * 
	 * @param date
	 * @param field yyyy-MM-dd HH:mm:ss
	 * @return
	 */
	public static String getFormat(Date date,String format){
		SimpleDateFormat sdf = new SimpleDateFormat(format);
		String dateStr = sdf.format(date);
		return dateStr ;
	}
	/**
	 * @param date
	 * @param field "yyyy、MM、dd、HH、mm、ss"其中的一个，不传或者传错默认为dd
	 * @param num 正数为加，负数为减去
	 * @return
	 * @throws Exception
	 * @see {@link DateUtil#getcalculateDate(Date,int,int)}  
	 */
	public static Date getCalculateDate(Date date,String field,int amount){
		Calendar calendar = Calendar.getInstance();
		if("yyyy".equals(field)){
			calendar.add(Calendar.YEAR, amount);
		}else if("MM".equals(field)){
			calendar.add(Calendar.MONTH, amount);
		}
		else if("dd".equals(field)){
			calendar.add(Calendar.DAY_OF_YEAR, amount);
		}
		else if("HH".equals(field)){
			calendar.add(Calendar.HOUR, amount);
		}
		else if("mm".equals(field)){
			calendar.add(Calendar.MINUTE, amount);
		}
		else if("ss".equals(field)){
			calendar.add(Calendar.SECOND, amount);
		}else{
			calendar.add(Calendar.DAY_OF_YEAR, amount);
		}
		return calendar.getTime();
	}
	/**
	 * @param date
	 * @param calendarField
	 * @param amount
	 * @return
	 * @see {@link DateUtil#getcalculateDate(Date,String,int)} 
	 */
	public static Date getCalculateDate(Date date,int calendarField,int amount){
		if(date == null){
			throw new IllegalArgumentException("The date must not be null");
		} else{
			Calendar c = Calendar.getInstance();
			c.setTime(date);
			c.add(calendarField, amount);
			return c.getTime();
		}
	}
	/**
	 * 把String日期转化为Date
	 * @param dateStr
	 * @param format
	 * @return
	 */
	public static Date parseDate(String dateStr, String format)
	{
		if(StringUtils.isBlank(dateStr))
			return null;
		format = StringUtils.isBlank(format) ? "yyyy-MM-dd" : format;
		DateFormat dateFormat = new SimpleDateFormat(format);
		Date date = null;
		try{
			date = dateFormat.parse(dateStr);
		}catch(ParseException e){
			logger.error("日期转化出错",e);
		}
		return date;
	}

	public static Date mouthFirstDate(Date date){
		Calendar c = Calendar.getInstance();
		c.set(c.DAY_OF_MONTH,1);
		return c.getTime();
	}
	
	
	public static String getYYYYMMDD(Date date){
		return sdf.format(date);
	}
	public static String getYYYYMMDDHH(Date date){
		return sdf1.format(date);
	}
	public static String getHH(Date date){
		return sdf2.format(date);
	}
	
	private static SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
	private static SimpleDateFormat sdf1 = new SimpleDateFormat("yyyyMMddHH");
	private static SimpleDateFormat sdf2 = new SimpleDateFormat("HH"); 
	
	
	public static void main(String[] args) throws Exception{
		Date date = new Date();
		//		System.out.println(getFormatStr(date, "yyyy-MM-dd HH:mm:ss"));
		//		System.out.println(getFormatStr(date, "yyyy-MM-dd HH:mm:ss"));
		//		System.out.println(getFormatStr(getcalculateDate(date, "DD", -15), "yyyy-MM-DD HH:mm:ss"));
		//		System.out.println(getcalculateDate(date, "DD", -365));
		//		System.out.println("456");
		//		System.out.println(getCalculateFormatDate(new Date(), "yyyy", -1, "yyyy-MM-dd", Date.class));
		System.out.println();

	}
}
