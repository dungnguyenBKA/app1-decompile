package com.google.android.gms.ads;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

public final class AdValue {
    private final int a;
    private final String b;
    private final long c;

    @Retention(RetentionPolicy.SOURCE)
    public @interface PrecisionType {
        public static final int ESTIMATED = 1;
        public static final int PRECISE = 3;
        public static final int PUBLISHER_PROVIDED = 2;
        public static final int UNKNOWN = 0;
    }

    private AdValue(int i, String str, long j) {
        this.a = i;
        this.b = str;
        this.c = j;
    }

    public static AdValue zza(int i, String str, long j) {
        return new AdValue(i, str, j);
    }

    public final String getCurrencyCode() {
        return this.b;
    }

    public final int getPrecisionType() {
        return this.a;
    }

    public final long getValueMicros() {
        return this.c;
    }
}
