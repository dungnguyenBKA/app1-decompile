package com.google.android.gms.internal.ads;

import java.io.Closeable;

public class zzbq extends zzepl implements Closeable {
    private static zzept zzdc = zzept.zzn(zzbq.class);

    public zzbq(zzepn zzepn, zzbn zzbn) {
        zza(zzepn, zzepn.size(), zzbn);
    }

    @Override // com.google.android.gms.internal.ads.zzepl, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.zzjbd.close();
    }

    @Override // com.google.android.gms.internal.ads.zzepl
    public String toString() {
        String obj = this.zzjbd.toString();
        return ic.e(ic.m(obj, 7), "model(", obj, ")");
    }
}
