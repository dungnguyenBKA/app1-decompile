package inshot.collage.adconfig;

import android.text.format.Time;
import android.util.Log;
import com.facebook.ads.AdError;
import com.google.firebase.crashlytics.FirebaseCrashlytics;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;

public final class o {
    private static boolean a = true;
    private static boolean b;

    public static final void a(String str, String str2) {
        String str3;
        gg0.e(str, "tag");
        gg0.e(str2, "msg");
        gg0.e(str, "tag");
        gg0.e(str2, "msg");
        int i = 0;
        try {
            Time time = new Time();
            Calendar instance = Calendar.getInstance();
            gg0.d(instance, "calendar");
            instance.getTimeInMillis();
            time.set(instance.getTimeInMillis());
            StringBuilder sb = new StringBuilder();
            sb.append(time.format("%Y-%m-%d %H:%M:%S"));
            sb.append(".");
            String format = String.format("%03d", Arrays.copyOf(new Object[]{Long.valueOf(instance.getTimeInMillis() % ((long) AdError.NETWORK_ERROR_CODE))}, 1));
            gg0.d(format, "java.lang.String.format(format, *args)");
            sb.append(format);
            str3 = sb.toString();
        } catch (Exception unused) {
            str3 = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss").format(new Date(System.currentTimeMillis()));
            gg0.d(str3, "sdf.format(Date(curmillis))");
        }
        try {
            if (b) {
                FirebaseCrashlytics instance2 = FirebaseCrashlytics.getInstance();
                instance2.log(str3 + ' ' + str + "-->" + str2);
            }
            if (a) {
                int length = str2.length() / 1024;
                if (length >= 0) {
                    while (true) {
                        int i2 = i * 1024;
                        int i3 = i + 1;
                        int i4 = i3 * 1024;
                        if (i4 > str2.length()) {
                            i4 = str2.length();
                        }
                        String substring = str2.substring(i2, i4);
                        gg0.d(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                        Log.println(6, str, substring);
                        if (i == length) {
                            break;
                        }
                        i = i3;
                    }
                }
                str2.length();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static final void b(boolean z) {
        b = z;
    }

    public static final void c(boolean z) {
        a = z;
    }
}
