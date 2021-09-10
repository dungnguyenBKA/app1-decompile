package androidx.work.impl.utils;

import android.content.Context;
import android.os.PowerManager;
import androidx.work.h;
import java.util.HashMap;
import java.util.WeakHashMap;

public class j {
    private static final String a = h.f("WakeLocks");
    private static final WeakHashMap<PowerManager.WakeLock, String> b = new WeakHashMap<>();

    public static void a() {
        HashMap hashMap = new HashMap();
        WeakHashMap<PowerManager.WakeLock, String> weakHashMap = b;
        synchronized (weakHashMap) {
            hashMap.putAll(weakHashMap);
        }
        for (PowerManager.WakeLock wakeLock : hashMap.keySet()) {
            if (wakeLock != null && wakeLock.isHeld()) {
                h.c().h(a, String.format("WakeLock held for %s", hashMap.get(wakeLock)), new Throwable[0]);
            }
        }
    }

    public static PowerManager.WakeLock b(Context context, String str) {
        String i = ic.i("WorkManager: ", str);
        PowerManager.WakeLock newWakeLock = ((PowerManager) context.getApplicationContext().getSystemService("power")).newWakeLock(1, i);
        WeakHashMap<PowerManager.WakeLock, String> weakHashMap = b;
        synchronized (weakHashMap) {
            weakHashMap.put(newWakeLock, i);
        }
        return newWakeLock;
    }
}
