package com.google.android.gms.internal.ads;

public final class zzbol implements zzeqb<String> {
    private final zzboj zzfwt;

    private zzbol(zzboj zzboj) {
        this.zzfwt = zzboj;
    }

    public static zzbol zza(zzboj zzboj) {
        return new zzbol(zzboj);
    }

    public static String zzb(zzboj zzboj) {
        return (String) zzeqh.zza(zzboj.zzakz(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return zzb(this.zzfwt);
    }
}
