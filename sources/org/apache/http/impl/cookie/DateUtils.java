package org.apache.http.impl.cookie;

import com.facebook.ads.AdError;
import java.lang.ref.SoftReference;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import org.apache.http.annotation.Immutable;

@Immutable
public final class DateUtils {
    private static final String[] DEFAULT_PATTERNS = {PATTERN_RFC1036, "EEE, dd MMM yyyy HH:mm:ss zzz", PATTERN_ASCTIME};
    private static final Date DEFAULT_TWO_DIGIT_YEAR_START;
    public static final TimeZone GMT;
    public static final String PATTERN_ASCTIME = "EEE MMM d HH:mm:ss yyyy";
    public static final String PATTERN_RFC1036 = "EEEE, dd-MMM-yy HH:mm:ss zzz";
    public static final String PATTERN_RFC1123 = "EEE, dd MMM yyyy HH:mm:ss zzz";

    /* access modifiers changed from: package-private */
    public static final class DateFormatHolder {
        private static final ThreadLocal<SoftReference<Map<String, SimpleDateFormat>>> THREADLOCAL_FORMATS = new ThreadLocal<SoftReference<Map<String, SimpleDateFormat>>>() {
            /* class org.apache.http.impl.cookie.DateUtils.DateFormatHolder.AnonymousClass1 */

            /* access modifiers changed from: protected */
            @Override // java.lang.ThreadLocal
            public SoftReference<Map<String, SimpleDateFormat>> initialValue() {
                return new SoftReference<>(new HashMap());
            }
        };

        DateFormatHolder() {
        }

        public static SimpleDateFormat formatFor(String str) {
            ThreadLocal<SoftReference<Map<String, SimpleDateFormat>>> threadLocal = THREADLOCAL_FORMATS;
            Map<String, SimpleDateFormat> map = threadLocal.get().get();
            if (map == null) {
                map = new HashMap<>();
                threadLocal.set(new SoftReference<>(map));
            }
            SimpleDateFormat simpleDateFormat = map.get(str);
            if (simpleDateFormat != null) {
                return simpleDateFormat;
            }
            SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat(str, Locale.US);
            simpleDateFormat2.setTimeZone(TimeZone.getTimeZone("GMT"));
            map.put(str, simpleDateFormat2);
            return simpleDateFormat2;
        }
    }

    static {
        TimeZone timeZone = TimeZone.getTimeZone("GMT");
        GMT = timeZone;
        Calendar instance = Calendar.getInstance();
        instance.setTimeZone(timeZone);
        instance.set(AdError.SERVER_ERROR_CODE, 0, 1, 0, 0, 0);
        instance.set(14, 0);
        DEFAULT_TWO_DIGIT_YEAR_START = instance.getTime();
    }

    private DateUtils() {
    }

    public static String formatDate(Date date) {
        return formatDate(date, "EEE, dd MMM yyyy HH:mm:ss zzz");
    }

    public static Date parseDate(String str) {
        return parseDate(str, null, null);
    }

    public static String formatDate(Date date, String str) {
        if (date == null) {
            throw new IllegalArgumentException("date is null");
        } else if (str != null) {
            return DateFormatHolder.formatFor(str).format(date);
        } else {
            throw new IllegalArgumentException("pattern is null");
        }
    }

    public static Date parseDate(String str, String[] strArr) {
        return parseDate(str, strArr, null);
    }

    public static Date parseDate(String str, String[] strArr, Date date) {
        if (str != null) {
            if (strArr == null) {
                strArr = DEFAULT_PATTERNS;
            }
            if (date == null) {
                date = DEFAULT_TWO_DIGIT_YEAR_START;
            }
            if (str.length() > 1 && str.startsWith("'") && str.endsWith("'")) {
                str = str.substring(1, str.length() - 1);
            }
            for (String str2 : strArr) {
                SimpleDateFormat formatFor = DateFormatHolder.formatFor(str2);
                formatFor.set2DigitYearStart(date);
                try {
                    return formatFor.parse(str);
                } catch (ParseException unused) {
                }
            }
            throw new DateParseException(ic.i("Unable to parse the date ", str));
        }
        throw new IllegalArgumentException("dateValue is null");
    }
}
