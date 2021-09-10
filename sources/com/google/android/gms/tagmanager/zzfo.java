package com.google.android.gms.tagmanager;

import android.content.ComponentCallbacks2;
import android.content.res.Configuration;

/* access modifiers changed from: package-private */
public final class zzfo implements ComponentCallbacks2 {
    final /* synthetic */ TagManager zza;

    zzfo(TagManager tagManager) {
        this.zza = tagManager;
    }

    public final void onConfigurationChanged(Configuration configuration) {
    }

    public final void onLowMemory() {
    }

    public final void onTrimMemory(int i) {
        if (i == 20) {
            this.zza.dispatch();
        }
    }
}
