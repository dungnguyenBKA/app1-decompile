package com.google.android.gms.internal.ads;

import android.util.Pair;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzcyg implements zzdkc {
    private final Pair zzgyi;

    zzcyg(Pair pair) {
        this.zzgyi = pair;
    }

    @Override // com.google.android.gms.internal.ads.zzdkc
    public final void zzp(Object obj) {
        Pair pair = this.zzgyi;
        ((zzxt) obj).onAppEvent((String) pair.first, (String) pair.second);
    }
}
