package com.google.android.gms.internal.gtm;

/* access modifiers changed from: package-private */
public final class zzwc implements zzwy {
    private static final zzwi zza = new zzwa();
    private final zzwi zzb;

    public zzwc() {
        zzwi zzwi;
        zzwi[] zzwiArr = new zzwi[2];
        zzwiArr[0] = zzus.zza();
        try {
            zzwi = (zzwi) Class.forName("com.google.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception unused) {
            zzwi = zza;
        }
        zzwiArr[1] = zzwi;
        zzwb zzwb = new zzwb(zzwiArr);
        zzvi.zzf(zzwb, "messageInfoFactory");
        this.zzb = zzwb;
    }

    private static boolean zzb(zzwh zzwh) {
        return zzwh.zzc() == 1;
    }

    @Override // com.google.android.gms.internal.gtm.zzwy
    public final <T> zzwx<T> zza(Class<T> cls) {
        zzwz.zzG(cls);
        zzwh zzb2 = this.zzb.zzb(cls);
        if (zzb2.zzb()) {
            if (zzuz.class.isAssignableFrom(cls)) {
                return zzwo.zzc(zzwz.zzB(), zzum.zzb(), zzb2.zza());
            }
            return zzwo.zzc(zzwz.zzz(), zzum.zza(), zzb2.zza());
        } else if (zzuz.class.isAssignableFrom(cls)) {
            if (zzb(zzb2)) {
                return zzwn.zzl(cls, zzb2, zzwr.zzb(), zzvy.zze(), zzwz.zzB(), zzum.zzb(), zzwg.zzb());
            }
            return zzwn.zzl(cls, zzb2, zzwr.zzb(), zzvy.zze(), zzwz.zzB(), null, zzwg.zzb());
        } else if (zzb(zzb2)) {
            return zzwn.zzl(cls, zzb2, zzwr.zza(), zzvy.zzd(), zzwz.zzz(), zzum.zza(), zzwg.zza());
        } else {
            return zzwn.zzl(cls, zzb2, zzwr.zza(), zzvy.zzd(), zzwz.zzA(), null, zzwg.zza());
        }
    }
}
