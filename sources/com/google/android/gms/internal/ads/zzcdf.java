package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.ads.mediation.facebook.FacebookAdapter;
import com.vungle.warren.model.VisionDataDBAdapter;
import java.util.Map;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzcdf implements zzaif {
    private final zzcdg zzggc;
    private final zzagm zzggd;

    zzcdf(zzcdg zzcdg, zzagm zzagm) {
        this.zzggc = zzcdg;
        this.zzggd = zzagm;
    }

    @Override // com.google.android.gms.internal.ads.zzaif
    public final void zza(Object obj, Map map) {
        zzcdg zzcdg = this.zzggc;
        zzagm zzagm = this.zzggd;
        try {
            zzcdg.zzggi = Long.valueOf(Long.parseLong((String) map.get(VisionDataDBAdapter.VisionDataColumns.COLUMN_TIMESTAMP)));
        } catch (NumberFormatException unused) {
            zzazk.zzev("Failed to call parse unconfirmedClickTimestamp.");
        }
        zzcdg.zzggh = (String) map.get(FacebookAdapter.KEY_ID);
        String str = (String) map.get("asset_id");
        if (zzagm == null) {
            zzazk.zzdy("Received unconfirmed click but UnconfirmedClickListener is null.");
            return;
        }
        try {
            zzagm.onUnconfirmedClickReceived(str);
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }
}
