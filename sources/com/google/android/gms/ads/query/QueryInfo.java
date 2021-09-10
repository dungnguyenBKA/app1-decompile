package com.google.android.gms.ads.query;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.internal.ads.zzask;
import com.google.android.gms.internal.ads.zzzk;
import com.google.android.gms.internal.ads.zzzx;

public class QueryInfo {
    private final zzzx a;

    public QueryInfo(zzzx zzzx) {
        this.a = zzzx;
    }

    public static void generate(Context context, AdFormat adFormat, AdRequest adRequest, QueryInfoGenerationCallback queryInfoGenerationCallback) {
        zzzk zzzk;
        if (adRequest == null) {
            zzzk = null;
        } else {
            zzzk = adRequest.zzds();
        }
        new zzask(context, adFormat, zzzk).zza(queryInfoGenerationCallback);
    }

    public String getQuery() {
        return this.a.getQuery();
    }

    public Bundle getQueryBundle() {
        return this.a.getQueryBundle();
    }

    public String getRequestId() {
        return zzzx.zza(this);
    }
}
