package com.google.android.gms.internal.ads;

import java.util.logging.Logger;

public class zzede implements zzebh<zzeau, zzeau> {
    private static final Logger logger = Logger.getLogger(zzede.class.getName());

    private static class zza implements zzeau {
        private final zzebf<zzeau> zzidn;

        public zza(zzebf<zzeau> zzebf) {
            this.zzidn = zzebf;
        }
    }

    zzede() {
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [com.google.android.gms.internal.ads.zzebf] */
    @Override // com.google.android.gms.internal.ads.zzebh
    public final /* synthetic */ zzeau zza(zzebf<zzeau> zzebf) {
        return new zza(zzebf);
    }

    @Override // com.google.android.gms.internal.ads.zzebh
    public final Class<zzeau> zzbai() {
        return zzeau.class;
    }

    @Override // com.google.android.gms.internal.ads.zzebh
    public final Class<zzeau> zzbas() {
        return zzeau.class;
    }
}
