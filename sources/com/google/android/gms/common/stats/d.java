package com.google.android.gms.common.stats;

import android.content.Context;
import android.content.Intent;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.util.o;
import java.util.List;

public class d {
    private static Boolean a;

    public static void a(Context context, String str, int i, String str2, String str3, String str4, int i2, List<String> list, long j) {
        if (a == null) {
            a = Boolean.FALSE;
        }
        if (a.booleanValue()) {
            if (TextUtils.isEmpty(str)) {
                String valueOf = String.valueOf(str);
                Log.e("WakeLockTracker", valueOf.length() != 0 ? "missing wakeLock key. ".concat(valueOf) : new String("missing wakeLock key. "));
            } else if (7 == i || 8 == i || 10 == i || 11 == i) {
                long currentTimeMillis = System.currentTimeMillis();
                List<String> list2 = (list == null || list.size() != 1 || !"com.google.android.gms".equals(list.get(0))) ? list : null;
                long elapsedRealtime = SystemClock.elapsedRealtime();
                int a2 = o.a(context);
                String packageName = context.getPackageName();
                try {
                    context.startService(new Intent().setComponent(b.a).putExtra("com.google.android.gms.common.stats.EXTRA_LOG_EVENT", new WakeLockEvent(2, currentTimeMillis, i, str2, i2, list2, str, elapsedRealtime, a2, str3, "com.google.android.gms".equals(packageName) ? null : packageName, o.b(context), j, str4, false)));
                } catch (Exception e) {
                    Log.wtf("WakeLockTracker", e);
                }
            }
        }
    }
}
