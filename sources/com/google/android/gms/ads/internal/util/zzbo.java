package com.google.android.gms.ads.internal.util;

import android.graphics.Bitmap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;

public final class zzbo {
    private Map<Integer, Bitmap> a = new ConcurrentHashMap();

    public zzbo() {
        new AtomicInteger(0);
    }

    public final Bitmap zza(Integer num) {
        return this.a.get(num);
    }
}
