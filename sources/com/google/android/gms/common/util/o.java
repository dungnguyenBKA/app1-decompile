package com.google.android.gms.common.util;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.PowerManager;
import android.os.SystemClock;

public final class o {
    private static final IntentFilter a = new IntentFilter("android.intent.action.BATTERY_CHANGED");
    private static long b;
    private static float c = Float.NaN;

    @TargetApi(20)
    public static int a(Context context) {
        int i;
        boolean z;
        if (context == null || context.getApplicationContext() == null) {
            return -1;
        }
        Intent registerReceiver = context.getApplicationContext().registerReceiver(null, a);
        int i2 = 0;
        if (registerReceiver == null) {
            i = 0;
        } else {
            i = registerReceiver.getIntExtra("plugged", 0);
        }
        int i3 = (i & 7) != 0 ? 1 : 0;
        PowerManager powerManager = (PowerManager) context.getSystemService("power");
        if (powerManager == null) {
            return -1;
        }
        if (c.a()) {
            z = powerManager.isInteractive();
        } else {
            z = powerManager.isScreenOn();
        }
        if (z) {
            i2 = 2;
        }
        return i2 | i3;
    }

    public static synchronized float b(Context context) {
        synchronized (o.class) {
            if (SystemClock.elapsedRealtime() - b >= 60000 || Float.isNaN(c)) {
                Intent registerReceiver = context.getApplicationContext().registerReceiver(null, a);
                if (registerReceiver != null) {
                    c = ((float) registerReceiver.getIntExtra("level", -1)) / ((float) registerReceiver.getIntExtra("scale", -1));
                }
                b = SystemClock.elapsedRealtime();
                return c;
            }
            return c;
        }
    }
}
