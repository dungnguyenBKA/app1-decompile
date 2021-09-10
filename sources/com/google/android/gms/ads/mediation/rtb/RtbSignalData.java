package com.google.android.gms.ads.mediation.rtb;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.mediation.MediationConfiguration;
import java.util.List;

public class RtbSignalData {
    private final Context a;
    private final List<MediationConfiguration> b;
    private final Bundle c;
    private final AdSize d;

    public RtbSignalData(Context context, List<MediationConfiguration> list, Bundle bundle, AdSize adSize) {
        this.a = context;
        this.b = list;
        this.c = bundle;
        this.d = adSize;
    }

    public AdSize getAdSize() {
        return this.d;
    }

    @Deprecated
    public MediationConfiguration getConfiguration() {
        List<MediationConfiguration> list = this.b;
        if (list == null || list.size() <= 0) {
            return null;
        }
        return this.b.get(0);
    }

    public List<MediationConfiguration> getConfigurations() {
        return this.b;
    }

    public Context getContext() {
        return this.a;
    }

    public Bundle getNetworkExtras() {
        return this.c;
    }
}
