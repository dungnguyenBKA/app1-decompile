package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzr;
import java.util.concurrent.TimeUnit;

public final class zzcmo implements zzeqb<zzdzw<String>> {
    private final zzeqo<Context> zzewk;
    private final zzeqo<zzdrj> zzfvi;

    private zzcmo(zzeqo<zzdrj> zzeqo, zzeqo<Context> zzeqo2) {
        this.zzfvi = zzeqo;
        this.zzewk = zzeqo2;
    }

    public static zzcmo zzaj(zzeqo<zzdrj> zzeqo, zzeqo<Context> zzeqo2) {
        return new zzcmo(zzeqo, zzeqo2);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (zzdzw) zzeqh.zza(this.zzfvi.get().zzt(zzdrk.WEBVIEW_COOKIE).zzc(new zzcmk(zzr.zzkt().zzbf(this.zzewk.get()))).zza(1, TimeUnit.SECONDS).zza(Exception.class, zzcmj.zzgnx).zzaxj(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
