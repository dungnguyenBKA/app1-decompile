package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
import java.util.concurrent.Executor;
import org.json.JSONObject;

public final class zzbkh implements zzeqb<Set<zzbya<zzbsh>>> {
    private final zzeqo<zzbjz> zzewe;
    private final zzeqo<Executor> zzewf;
    private final zzeqo<JSONObject> zzftd;

    private zzbkh(zzeqo<zzbjz> zzeqo, zzeqo<Executor> zzeqo2, zzeqo<JSONObject> zzeqo3) {
        this.zzewe = zzeqo;
        this.zzewf = zzeqo2;
        this.zzftd = zzeqo3;
    }

    public static zzbkh zzc(zzeqo<zzbjz> zzeqo, zzeqo<Executor> zzeqo2, zzeqo<JSONObject> zzeqo3) {
        return new zzbkh(zzeqo, zzeqo2, zzeqo3);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        Set set;
        zzbjz zzbjz = this.zzewe.get();
        Executor executor = this.zzewf.get();
        if (this.zzftd.get() == null) {
            set = Collections.emptySet();
        } else {
            set = Collections.singleton(new zzbya(zzbjz, executor));
        }
        return (Set) zzeqh.zza(set, "Cannot return null from a non-@Nullable @Provides method");
    }
}
