package com.google.android.gms.internal.ads;

public final class zzdqh implements zzeqb<zzdzv> {
    public static zzdqh zzawu() {
        return zzdqk.zzawy();
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        zzdzv zzdzv;
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcwv)).booleanValue()) {
            zzdzv = zzazp.zzeie;
        } else {
            if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcwu)).booleanValue()) {
                zzdzv = zzazp.zzeic;
            } else {
                zzdzv = zzazp.zzeig;
            }
        }
        return (zzdzv) zzeqh.zza(zzdzv, "Cannot return null from a non-@Nullable @Provides method");
    }
}
