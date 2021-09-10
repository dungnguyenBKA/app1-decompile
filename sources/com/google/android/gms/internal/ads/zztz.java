package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;

public final class zztz {
    zzhb zzbyg;
    boolean zzbyh;

    public zztz(Context context, String str, String str2) {
        zzabp.initialize(context);
        try {
            this.zzbyg = (zzhb) zzazj.zza(context, "com.google.android.gms.ads.clearcut.DynamiteClearcutLogger", zzuc.zzbyi);
            aw.Q(context);
            this.zzbyg.zza(aw.Q(context), str, null);
            this.zzbyh = true;
        } catch (RemoteException | zzazl | NullPointerException unused) {
            zzazk.zzdy("Cannot dynamite load clearcut");
        }
    }

    public final zzud zzf(byte[] bArr) {
        return new zzud(this, bArr);
    }

    public zztz(Context context) {
        zzabp.initialize(context);
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcvg)).booleanValue()) {
            try {
                this.zzbyg = (zzhb) zzazj.zza(context, "com.google.android.gms.ads.clearcut.DynamiteClearcutLogger", zzub.zzbyi);
                aw.Q(context);
                this.zzbyg.zza(aw.Q(context), "GMA_SDK");
                this.zzbyh = true;
            } catch (RemoteException | zzazl | NullPointerException unused) {
                zzazk.zzdy("Cannot dynamite load clearcut");
            }
        }
    }

    public zztz() {
    }
}
