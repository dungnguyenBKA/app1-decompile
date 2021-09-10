package com.google.android.gms.internal.ads;

import java.lang.ref.WeakReference;
import java.util.Map;

/* access modifiers changed from: package-private */
public final class zzcgw<T> implements zzaif<Object> {
    private final WeakReference<T> zzgjj;
    private final String zzgjk;
    private final zzaif<T> zzgjl;
    private final /* synthetic */ zzcgk zzgjm;

    private zzcgw(zzcgk zzcgk, WeakReference<T> weakReference, String str, zzaif<T> zzaif) {
        this.zzgjm = zzcgk;
        this.zzgjj = weakReference;
        this.zzgjk = str;
        this.zzgjl = zzaif;
    }

    @Override // com.google.android.gms.internal.ads.zzaif
    public final void zza(Object obj, Map<String, String> map) {
        T t = this.zzgjj.get();
        if (t == null) {
            this.zzgjm.zzb(this.zzgjk, this);
        } else {
            this.zzgjl.zza(t, map);
        }
    }

    /* synthetic */ zzcgw(zzcgk zzcgk, WeakReference weakReference, String str, zzaif zzaif, zzcgl zzcgl) {
        this(zzcgk, weakReference, str, zzaif);
    }
}
