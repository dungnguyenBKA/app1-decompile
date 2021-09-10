package com.google.android.gms.internal.ads;

import java.util.List;

final class zzelz extends zzely {
    private zzelz() {
        super();
    }

    private static <E> zzell<E> zzc(Object obj, long j) {
        return (zzell) zzeoh.zzp(obj, j);
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzely
    public final <L> List<L> zza(Object obj, long j) {
        zzell zzc = zzc(obj, j);
        if (zzc.zzbge()) {
            return zzc;
        }
        int size = zzc.size();
        zzell zzfy = zzc.zzfy(size == 0 ? 10 : size << 1);
        zzeoh.zza(obj, j, zzfy);
        return zzfy;
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzely
    public final void zzb(Object obj, long j) {
        zzc(obj, j).zzbgf();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [java.util.List] */
    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzely
    public final <E> void zza(Object obj, Object obj2, long j) {
        zzell<E> zzc = zzc(obj, j);
        zzell<E> zzc2 = zzc(obj2, j);
        int size = zzc.size();
        int size2 = zzc2.size();
        zzell<E> zzell = zzc;
        zzell = zzc;
        if (size > 0 && size2 > 0) {
            boolean zzbge = zzc.zzbge();
            zzell<E> zzell2 = zzc;
            if (!zzbge) {
                zzell2 = zzc.zzfy(size2 + size);
            }
            zzell2.addAll(zzc2);
            zzell = zzell2;
        }
        if (size > 0) {
            zzc2 = zzell;
        }
        zzeoh.zza(obj, j, zzc2);
    }
}
