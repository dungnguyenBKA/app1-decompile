package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.HashMap;

public final class zzdpq {
    private HashMap<zzdpi, zzdpp<? extends zzbnt>> zzhom = new HashMap<>();

    public final <AdT extends zzbnt> zzdpp<AdT> zza(zzdpi zzdpi, Context context, zzdov zzdov, zzdpx<AdT> zzdpx) {
        zzdpp<AdT> zzdpp = (zzdpp<AdT>) this.zzhom.get(zzdpi);
        if (zzdpp != null) {
            return zzdpp;
        }
        zzdpb zzdpb = new zzdpb(zzdpf.zza(zzdpi, context));
        zzdpp<AdT> zzdpp2 = new zzdpp<>(zzdpb, new zzdpu(zzdpb, zzdov, zzdpx));
        this.zzhom.put(zzdpi, zzdpp2);
        return zzdpp2;
    }
}
