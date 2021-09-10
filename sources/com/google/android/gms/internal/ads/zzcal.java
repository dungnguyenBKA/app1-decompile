package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import com.google.android.gms.internal.ads.zzug;

public final class zzcal implements zzeqb<zzcam> {
    private final zzeqo<Context> zzewk;
    private final zzeqo<zzaxc> zzfqr;
    private final zzeqo<View> zzfrt;
    private final zzeqo<zzug.zza.EnumC0069zza> zzftc;
    private final zzeqo<zzaxd> zzfwc;

    private zzcal(zzeqo<zzaxd> zzeqo, zzeqo<Context> zzeqo2, zzeqo<zzaxc> zzeqo3, zzeqo<View> zzeqo4, zzeqo<zzug.zza.EnumC0069zza> zzeqo5) {
        this.zzfwc = zzeqo;
        this.zzewk = zzeqo2;
        this.zzfqr = zzeqo3;
        this.zzfrt = zzeqo4;
        this.zzftc = zzeqo5;
    }

    public static zzcal zzd(zzeqo<zzaxd> zzeqo, zzeqo<Context> zzeqo2, zzeqo<zzaxc> zzeqo3, zzeqo<View> zzeqo4, zzeqo<zzug.zza.EnumC0069zza> zzeqo5) {
        return new zzcal(zzeqo, zzeqo2, zzeqo3, zzeqo4, zzeqo5);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcam(this.zzfwc.get(), this.zzewk.get(), this.zzfqr.get(), this.zzfrt.get(), this.zzftc.get());
    }
}
