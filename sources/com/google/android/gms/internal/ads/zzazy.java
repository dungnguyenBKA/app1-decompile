package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzr;

/* access modifiers changed from: package-private */
public final class zzazy implements zzdzl<Object> {
    private final /* synthetic */ String zzeil;

    zzazy(String str) {
        this.zzeil = str;
    }

    @Override // com.google.android.gms.internal.ads.zzdzl
    public final void onSuccess(Object obj) {
    }

    @Override // com.google.android.gms.internal.ads.zzdzl
    public final void zzb(Throwable th) {
        zzr.zzkv().zzb(th, this.zzeil);
    }
}
