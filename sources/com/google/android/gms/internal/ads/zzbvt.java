package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.doubleclick.AppEventListener;
import java.util.Set;

public final class zzbvt extends zzbwf<AppEventListener> implements zzahk {
    public zzbvt(Set<zzbya<AppEventListener>> set) {
        super(set);
    }

    @Override // com.google.android.gms.internal.ads.zzahk
    public final synchronized void onAppEvent(String str, String str2) {
        zza(new zzbvs(str, str2));
    }
}
