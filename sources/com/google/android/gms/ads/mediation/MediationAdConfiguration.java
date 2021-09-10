package com.google.android.gms.ads.mediation;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import javax.annotation.ParametersAreNonnullByDefault;

@ParametersAreNonnullByDefault
public class MediationAdConfiguration {
    public static final int TAG_FOR_CHILD_DIRECTED_TREATMENT_FALSE = 0;
    public static final int TAG_FOR_CHILD_DIRECTED_TREATMENT_TRUE = 1;
    public static final int TAG_FOR_CHILD_DIRECTED_TREATMENT_UNSPECIFIED = -1;
    private final String a;
    private final Bundle b;
    private final Bundle c;
    private final Context d;
    private final boolean e;
    private final Location f;
    private final int g;
    private final int h;
    private final String i;
    private final String j;

    @Retention(RetentionPolicy.SOURCE)
    public @interface TagForChildDirectedTreatment {
    }

    public MediationAdConfiguration(Context context, String str, Bundle bundle, Bundle bundle2, boolean z, Location location, int i2, int i3, String str2, String str3) {
        this.a = str;
        this.b = bundle;
        this.c = bundle2;
        this.d = context;
        this.e = z;
        this.f = location;
        this.g = i2;
        this.h = i3;
        this.i = str2;
        this.j = str3;
    }

    public String getBidResponse() {
        return this.a;
    }

    public Context getContext() {
        return this.d;
    }

    public Location getLocation() {
        return this.f;
    }

    public String getMaxAdContentRating() {
        return this.i;
    }

    public Bundle getMediationExtras() {
        return this.c;
    }

    public Bundle getServerParameters() {
        return this.b;
    }

    public String getWatermark() {
        return this.j;
    }

    public boolean isTestRequest() {
        return this.e;
    }

    public int taggedForChildDirectedTreatment() {
        return this.g;
    }

    public int taggedForUnderAgeTreatment() {
        return this.h;
    }
}
