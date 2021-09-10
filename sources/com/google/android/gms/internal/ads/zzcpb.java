package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.HashMap;
import java.util.concurrent.Executor;

public final class zzcpb implements zzeqb<zzcol> {
    private final zzeqo<Context> zzewk;
    private final zzeqo<Executor> zzfux;
    private final zzeqo<zzauh> zzgpx;
    private final zzeqo<zzbjd> zzgpy;
    private final zzeqo<zzaue> zzgpz;
    private final zzeqo<HashMap<String, zzcpa>> zzgqa;

    private zzcpb(zzeqo<Context> zzeqo, zzeqo<Executor> zzeqo2, zzeqo<zzauh> zzeqo3, zzeqo<zzbjd> zzeqo4, zzeqo<zzaue> zzeqo5, zzeqo<HashMap<String, zzcpa>> zzeqo6) {
        this.zzewk = zzeqo;
        this.zzfux = zzeqo2;
        this.zzgpx = zzeqo3;
        this.zzgpy = zzeqo4;
        this.zzgpz = zzeqo5;
        this.zzgqa = zzeqo6;
    }

    public static zzcpb zzb(zzeqo<Context> zzeqo, zzeqo<Executor> zzeqo2, zzeqo<zzauh> zzeqo3, zzeqo<zzbjd> zzeqo4, zzeqo<zzaue> zzeqo5, zzeqo<HashMap<String, zzcpa>> zzeqo6) {
        return new zzcpb(zzeqo, zzeqo2, zzeqo3, zzeqo4, zzeqo5, zzeqo6);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcol(this.zzewk.get(), this.zzfux.get(), this.zzgpx.get(), this.zzgpy.get(), this.zzgpz.get(), this.zzgqa.get());
    }
}
