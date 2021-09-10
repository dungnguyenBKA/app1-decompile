package com.google.android.gms.internal.gtm;

import java.util.List;

final class zzvw extends zzvy {
    private zzvw() {
        super(null);
    }

    /* synthetic */ zzvw(zzvv zzvv) {
        super(null);
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.gtm.zzvy
    public final <L> List<L> zza(Object obj, long j) {
        zzvh zzvh = (zzvh) zzxy.zzf(obj, j);
        if (zzvh.zzc()) {
            return zzvh;
        }
        int size = zzvh.size();
        zzvh zzd = zzvh.zzd(size == 0 ? 10 : size + size);
        zzxy.zzs(obj, j, zzd);
        return zzd;
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.gtm.zzvy
    public final void zzb(Object obj, long j) {
        ((zzvh) zzxy.zzf(obj, j)).zzb();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.util.List] */
    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.gtm.zzvy
    public final <E> void zzc(Object obj, Object obj2, long j) {
        zzvh<E> zzvh = (zzvh) zzxy.zzf(obj, j);
        zzvh<E> zzvh2 = (zzvh) zzxy.zzf(obj2, j);
        int size = zzvh.size();
        int size2 = zzvh2.size();
        zzvh<E> zzvh3 = zzvh;
        zzvh3 = zzvh;
        if (size > 0 && size2 > 0) {
            boolean zzc = zzvh.zzc();
            zzvh<E> zzvh4 = zzvh;
            if (!zzc) {
                zzvh4 = zzvh.zzd(size2 + size);
            }
            zzvh4.addAll(zzvh2);
            zzvh3 = zzvh4;
        }
        if (size > 0) {
            zzvh2 = zzvh3;
        }
        zzxy.zzs(obj, j, zzvh2);
    }
}
