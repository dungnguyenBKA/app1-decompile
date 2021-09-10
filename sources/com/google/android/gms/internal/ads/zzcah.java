package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.internal.ads.zzug;

public final class zzcah implements zzeqb<zzcai> {
    private final zzeqo<Context> zzewk;
    private final zzeqo<zzazn> zzfqo;
    private final zzeqo<zzug.zza.EnumC0069zza> zzftc;
    private final zzeqo<zzbeb> zzfuu;
    private final zzeqo<zzdmw> zzfvr;

    private zzcah(zzeqo<Context> zzeqo, zzeqo<zzbeb> zzeqo2, zzeqo<zzdmw> zzeqo3, zzeqo<zzazn> zzeqo4, zzeqo<zzug.zza.EnumC0069zza> zzeqo5) {
        this.zzewk = zzeqo;
        this.zzfuu = zzeqo2;
        this.zzfvr = zzeqo3;
        this.zzfqo = zzeqo4;
        this.zzftc = zzeqo5;
    }

    public static zzcah zzc(zzeqo<Context> zzeqo, zzeqo<zzbeb> zzeqo2, zzeqo<zzdmw> zzeqo3, zzeqo<zzazn> zzeqo4, zzeqo<zzug.zza.EnumC0069zza> zzeqo5) {
        return new zzcah(zzeqo, zzeqo2, zzeqo3, zzeqo4, zzeqo5);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcai(this.zzewk.get(), this.zzfuu.get(), this.zzfvr.get(), this.zzfqo.get(), this.zzftc.get());
    }
}
