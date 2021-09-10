package com.google.android.gms.internal.ads;

public final class zzcar implements zzeqb<zzcco> {
    private final zzcaq zzgbx;

    private zzcar(zzcaq zzcaq) {
        this.zzgbx = zzcaq;
    }

    public static zzcar zzc(zzcaq zzcaq) {
        return new zzcar(zzcaq);
    }

    public static zzcco zzd(zzcaq zzcaq) {
        return (zzcco) zzeqh.zza(zzcaq.zzanb(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return zzd(this.zzgbx);
    }
}
