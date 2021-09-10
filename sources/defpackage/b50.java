package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import java.text.SimpleDateFormat;
import java.util.Date;

/* renamed from: b50  reason: default package */
class b50 {
    private static b50 b;
    private static final SimpleDateFormat c = new SimpleDateFormat("dd/MM/yyyy z");
    private final SharedPreferences a;

    private b50(Context context) {
        this.a = context.getSharedPreferences("FirebaseAppHeartBeat", 0);
        context.getSharedPreferences("FirebaseAppHeartBeatStorage", 0);
    }

    static synchronized b50 a(Context context) {
        b50 b50;
        synchronized (b50.class) {
            if (b == null) {
                b = new b50(context);
            }
            b50 = b;
        }
        return b50;
    }

    /* access modifiers changed from: package-private */
    public synchronized boolean b(String str, long j) {
        if (this.a.contains(str)) {
            Date date = new Date(this.a.getLong(str, -1));
            Date date2 = new Date(j);
            SimpleDateFormat simpleDateFormat = c;
            if (!(!simpleDateFormat.format(date).equals(simpleDateFormat.format(date2)))) {
                return false;
            }
            this.a.edit().putLong(str, j).apply();
            return true;
        }
        this.a.edit().putLong(str, j).apply();
        return true;
    }
}
