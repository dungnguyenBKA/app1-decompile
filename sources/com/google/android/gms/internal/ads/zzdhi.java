package com.google.android.gms.internal.ads;

public final class zzdhi implements zzeqb<String> {
    private final zzdhj zzheu;

    public zzdhi(zzdhj zzdhj) {
        this.zzheu = zzdhj;
    }

    public static String zzb(zzdhj zzdhj) {
        return (String) zzeqh.zza(zzdhj.zzatv(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return zzb(this.zzheu);
    }
}
