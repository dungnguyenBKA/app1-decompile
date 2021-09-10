package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.Map;

final class zzemk implements zzemh {
    zzemk() {
    }

    @Override // com.google.android.gms.internal.ads.zzemh
    public final Map<?, ?> zzan(Object obj) {
        return (zzemi) obj;
    }

    @Override // com.google.android.gms.internal.ads.zzemh
    public final Map<?, ?> zzao(Object obj) {
        return (zzemi) obj;
    }

    @Override // com.google.android.gms.internal.ads.zzemh
    public final boolean zzap(Object obj) {
        return !((zzemi) obj).isMutable();
    }

    @Override // com.google.android.gms.internal.ads.zzemh
    public final Object zzaq(Object obj) {
        ((zzemi) obj).zzbgf();
        return obj;
    }

    @Override // com.google.android.gms.internal.ads.zzemh
    public final Object zzar(Object obj) {
        return zzemi.zzbjs().zzbjt();
    }

    @Override // com.google.android.gms.internal.ads.zzemh
    public final zzemf<?, ?> zzas(Object obj) {
        zzemg zzemg = (zzemg) obj;
        throw new NoSuchMethodError();
    }

    @Override // com.google.android.gms.internal.ads.zzemh
    public final int zzb(int i, Object obj, Object obj2) {
        zzemi zzemi = (zzemi) obj;
        zzemg zzemg = (zzemg) obj2;
        if (zzemi.isEmpty()) {
            return 0;
        }
        Iterator it = zzemi.entrySet().iterator();
        if (!it.hasNext()) {
            return 0;
        }
        Map.Entry entry = (Map.Entry) it.next();
        entry.getKey();
        entry.getValue();
        throw new NoSuchMethodError();
    }

    @Override // com.google.android.gms.internal.ads.zzemh
    public final Object zzf(Object obj, Object obj2) {
        zzemi zzemi = (zzemi) obj;
        zzemi zzemi2 = (zzemi) obj2;
        if (!zzemi2.isEmpty()) {
            if (!zzemi.isMutable()) {
                zzemi = zzemi.zzbjt();
            }
            zzemi.zza(zzemi2);
        }
        return zzemi;
    }
}
