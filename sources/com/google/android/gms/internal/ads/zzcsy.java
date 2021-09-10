package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.zzm;
import com.google.android.gms.ads.internal.zzr;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzcsy implements zzcag {
    private final zzbaa zzbwd;

    zzcsy(zzbaa zzbaa) {
        this.zzbwd = zzbaa;
    }

    @Override // com.google.android.gms.internal.ads.zzcag
    public final void zza(boolean z, Context context) {
        zzbaa zzbaa = this.zzbwd;
        try {
            zzr.zzkq();
            zzm.zza(context, (AdOverlayInfoParcel) zzbaa.get(), true);
        } catch (Exception unused) {
        }
    }
}
