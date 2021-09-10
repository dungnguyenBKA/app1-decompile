package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.internal.measurement.zzbr;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzamy implements Runnable {
    private final Context zzcle;
    private final zzamz zzdln;
    private final String zzdlo;

    zzamy(zzamz zzamz, Context context, String str) {
        this.zzdln = zzamz;
        this.zzcle = context;
        this.zzdlo = str;
    }

    public final void run() {
        Context context = this.zzcle;
        String str = this.zzdlo;
        zzabp.initialize(context);
        Bundle bundle = new Bundle();
        bundle.putBoolean("measurementEnabled", ((Boolean) zzwr.zzqr().zzd(zzabp.zzcok)).booleanValue());
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcor)).booleanValue()) {
            bundle.putString("ad_storage", "denied");
            bundle.putString("analytics_storage", "denied");
        }
        try {
            ((zzbfv) zzazj.zza(context, "com.google.android.gms.ads.measurement.DynamiteMeasurementManager", zzanb.zzbyi)).zza(aw.Q(context), new zzamw(zzbr.zza(context, "FA-Ads", "am", str, bundle).zzb()));
        } catch (RemoteException | zzazl | NullPointerException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }
}
