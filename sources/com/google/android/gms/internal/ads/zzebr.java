package com.google.android.gms.internal.ads;

import java.util.logging.Logger;

public class zzebr implements zzebh<zzeaq, zzeaq> {
    private static final Logger logger = Logger.getLogger(zzebr.class.getName());

    private static class zza implements zzeaq {
        private final zzebf<zzeaq> zzicu;

        private zza(zzebf<zzeaq> zzebf) {
            this.zzicu = zzebf;
        }

        @Override // com.google.android.gms.internal.ads.zzeaq
        public final byte[] zzc(byte[] bArr, byte[] bArr2) {
            return zzeho.zza(this.zzicu.zzbar().zzbaw(), this.zzicu.zzbar().zzbat().zzc(bArr, bArr2));
        }
    }

    zzebr() {
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [com.google.android.gms.internal.ads.zzebf] */
    @Override // com.google.android.gms.internal.ads.zzebh
    public final /* synthetic */ zzeaq zza(zzebf<zzeaq> zzebf) {
        return new zza(zzebf);
    }

    @Override // com.google.android.gms.internal.ads.zzebh
    public final Class<zzeaq> zzbai() {
        return zzeaq.class;
    }

    @Override // com.google.android.gms.internal.ads.zzebh
    public final Class<zzeaq> zzbas() {
        return zzeaq.class;
    }
}
