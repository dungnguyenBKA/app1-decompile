package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.internal.ads.zzug;

public final class zzciy implements zzeqb<zztu> {
    private final zzeqo<Context> zzewk;
    private final zzeqo<zzug.zza.EnumC0069zza> zzftc;
    private final zzeqo<String> zzfyr;
    private final zzeqo<zzazn> zzfze;
    private final zzeqo<String> zzgku;

    private zzciy(zzeqo<Context> zzeqo, zzeqo<String> zzeqo2, zzeqo<zzazn> zzeqo3, zzeqo<zzug.zza.EnumC0069zza> zzeqo4, zzeqo<String> zzeqo5) {
        this.zzewk = zzeqo;
        this.zzfyr = zzeqo2;
        this.zzfze = zzeqo3;
        this.zzftc = zzeqo4;
        this.zzgku = zzeqo5;
    }

    public static zzciy zze(zzeqo<Context> zzeqo, zzeqo<String> zzeqo2, zzeqo<zzazn> zzeqo3, zzeqo<zzug.zza.EnumC0069zza> zzeqo4, zzeqo<String> zzeqo5) {
        return new zzciy(zzeqo, zzeqo2, zzeqo3, zzeqo4, zzeqo5);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        String str = this.zzfyr.get();
        zzazn zzazn = this.zzfze.get();
        zzug.zza.EnumC0069zza zza = this.zzftc.get();
        String str2 = this.zzgku.get();
        zztu zztu = new zztu(new zztz(this.zzewk.get()));
        zztu.zza(new zzciv(zza, str, (zzug.zzu) ((zzelb) zzug.zzu.zzpn().zzcq(zzazn.zzehy).zzcr(zzazn.zzehz).zzcs(zzazn.zzeia ? 0 : 2).zzbiw()), str2));
        return (zztu) zzeqh.zza(zztu, "Cannot return null from a non-@Nullable @Provides method");
    }
}
