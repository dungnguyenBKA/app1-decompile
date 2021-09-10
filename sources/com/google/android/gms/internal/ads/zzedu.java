package com.google.android.gms.internal.ads;

import java.util.logging.Logger;

/* access modifiers changed from: package-private */
public class zzedu implements zzebh<zzebd, zzebd> {
    private static final Logger logger = Logger.getLogger(zzedu.class.getName());

    private static class zza implements zzebd {
        private final zzebf<zzebd> zzidn;
        private final byte[] zzidy;

        private zza(zzebf<zzebd> zzebf) {
            this.zzidy = new byte[]{0};
            this.zzidn = zzebf;
        }

        @Override // com.google.android.gms.internal.ads.zzebd
        public final byte[] zzk(byte[] bArr) {
            if (this.zzidn.zzbar().zzbav().equals(zzegx.LEGACY)) {
                return zzeho.zza(this.zzidn.zzbar().zzbaw(), this.zzidn.zzbar().zzbat().zzk(zzeho.zza(bArr, this.zzidy)));
            }
            return zzeho.zza(this.zzidn.zzbar().zzbaw(), this.zzidn.zzbar().zzbat().zzk(bArr));
        }
    }

    zzedu() {
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [com.google.android.gms.internal.ads.zzebf] */
    @Override // com.google.android.gms.internal.ads.zzebh
    public final /* synthetic */ zzebd zza(zzebf<zzebd> zzebf) {
        return new zza(zzebf);
    }

    @Override // com.google.android.gms.internal.ads.zzebh
    public final Class<zzebd> zzbai() {
        return zzebd.class;
    }

    @Override // com.google.android.gms.internal.ads.zzebh
    public final Class<zzebd> zzbas() {
        return zzebd.class;
    }
}
