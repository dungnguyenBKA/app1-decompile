package com.google.android.gms.internal.ads;

import android.os.RemoteException;

public final class zzud {
    private final byte[] zzbyj;
    private int zzbyk;
    private int zzbyl;
    private final /* synthetic */ zztz zzbym;

    private zzud(zztz zztz, byte[] bArr) {
        this.zzbym = zztz;
        this.zzbyj = bArr;
    }

    public final synchronized void log() {
        try {
            zztz zztz = this.zzbym;
            if (zztz.zzbyh) {
                zztz.zzbyg.zzc(this.zzbyj);
                this.zzbym.zzbyg.zzs(this.zzbyk);
                this.zzbym.zzbyg.zzt(this.zzbyl);
                this.zzbym.zzbyg.zza(null);
                this.zzbym.zzbyg.log();
            }
        } catch (RemoteException e) {
            zzazk.zzb("Clearcut log failed", e);
        }
    }

    public final zzud zzbu(int i) {
        this.zzbyk = i;
        return this;
    }

    public final zzud zzbv(int i) {
        this.zzbyl = i;
        return this;
    }
}
