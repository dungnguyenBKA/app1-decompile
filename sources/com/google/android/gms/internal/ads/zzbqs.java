package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.ArrayList;

/* access modifiers changed from: package-private */
public final class zzbqs implements zzbsh, zzbtb {
    private final Context context;
    private final zzarz zzboo;
    private final zzdmw zzesr;

    public zzbqs(Context context2, zzdmw zzdmw, zzarz zzarz) {
        this.context = context2;
        this.zzesr = zzdmw;
        this.zzboo = zzarz;
    }

    @Override // com.google.android.gms.internal.ads.zzbtb
    public final void onAdLoaded() {
        zzarx zzarx = this.zzesr.zzhju;
        if (zzarx != null && zzarx.zzdtk) {
            ArrayList arrayList = new ArrayList();
            if (!this.zzesr.zzhju.zzdtl.isEmpty()) {
                arrayList.add(this.zzesr.zzhju.zzdtl);
            }
            this.zzboo.zza(this.context, arrayList);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbsh
    public final void zzcb(Context context2) {
    }

    @Override // com.google.android.gms.internal.ads.zzbsh
    public final void zzcc(Context context2) {
    }

    @Override // com.google.android.gms.internal.ads.zzbsh
    public final void zzcd(Context context2) {
        this.zzboo.detach();
    }
}
