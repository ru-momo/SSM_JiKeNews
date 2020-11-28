package com.suha.util;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class MyDate {

    public static String dateToString(Date date) {
        SimpleDateFormat sformat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//日期格式
        String tiem = sformat.format(date);
        return tiem;
    }

    public static Date stringToDate(String time) {
        DateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//日期格式
        Date date = null;
        try {
            date = format.parse(time);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return date;
    }
}
