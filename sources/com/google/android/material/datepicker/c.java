package com.google.android.material.datepicker;

import android.icu.text.DateFormat;
import android.icu.util.TimeZone;
import android.os.Build;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;

/* access modifiers changed from: package-private */
public class c {
    static Calendar a(Calendar calendar) {
        Calendar f = f(calendar);
        Calendar e = e();
        e.set(f.get(1), f.get(2), f.get(5));
        return e;
    }

    static String b(long j) {
        Locale locale = Locale.getDefault();
        if (Build.VERSION.SDK_INT >= 24) {
            DateFormat instanceForSkeleton = DateFormat.getInstanceForSkeleton("MMMEd", locale);
            instanceForSkeleton.setTimeZone(TimeZone.getTimeZone("UTC"));
            return instanceForSkeleton.format(new Date(j));
        }
        java.text.DateFormat dateInstance = java.text.DateFormat.getDateInstance(0, locale);
        dateInstance.setTimeZone(c());
        return dateInstance.format(new Date(j));
    }

    private static java.util.TimeZone c() {
        return java.util.TimeZone.getTimeZone("UTC");
    }

    static Calendar d() {
        return a(Calendar.getInstance());
    }

    static Calendar e() {
        return f(null);
    }

    static Calendar f(Calendar calendar) {
        Calendar instance = Calendar.getInstance(c());
        if (calendar == null) {
            instance.clear();
        } else {
            instance.setTimeInMillis(calendar.getTimeInMillis());
        }
        return instance;
    }

    static String g(long j) {
        Locale locale = Locale.getDefault();
        if (Build.VERSION.SDK_INT >= 24) {
            DateFormat instanceForSkeleton = DateFormat.getInstanceForSkeleton("yMMMEd", locale);
            instanceForSkeleton.setTimeZone(TimeZone.getTimeZone("UTC"));
            return instanceForSkeleton.format(new Date(j));
        }
        java.text.DateFormat dateInstance = java.text.DateFormat.getDateInstance(0, locale);
        dateInstance.setTimeZone(c());
        return dateInstance.format(new Date(j));
    }

    static SimpleDateFormat h() {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("MMMM, yyyy", Locale.getDefault());
        simpleDateFormat.setTimeZone(c());
        return simpleDateFormat;
    }
}
