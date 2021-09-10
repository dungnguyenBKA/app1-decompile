package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;

public final class zzeqa {
    public static <T> List<T> zzid(int i) {
        if (i == 0) {
            return Collections.emptyList();
        }
        return new ArrayList(i);
    }

    static <T> HashSet<T> zzie(int i) {
        return new HashSet<>(zzig(i));
    }

    public static <K, V> LinkedHashMap<K, V> zzif(int i) {
        return new LinkedHashMap<>(zzig(i));
    }

    private static int zzig(int i) {
        if (i < 3) {
            return i + 1;
        }
        if (i < 1073741824) {
            return (int) ((((float) i) / 0.75f) + 1.0f);
        }
        return Integer.MAX_VALUE;
    }
}
