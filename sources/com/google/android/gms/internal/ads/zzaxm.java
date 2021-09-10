package com.google.android.gms.internal.ads;

import android.content.Context;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzaxm implements zzaxv {
    private final Context zzcmi;
    private final String zzdjf;

    zzaxm(Context context, String str) {
        this.zzcmi = context;
        this.zzdjf = str;
    }

    @Override // com.google.android.gms.internal.ads.zzaxv
    public final void zzb(zzbfu zzbfu) {
        Context context = this.zzcmi;
        zzbfu.zzb(aw.Q(context), this.zzdjf, context.getPackageName());
    }
}
