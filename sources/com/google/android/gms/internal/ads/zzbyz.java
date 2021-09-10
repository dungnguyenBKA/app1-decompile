package com.google.android.gms.internal.ads;

import android.view.View;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.Executor;

public class zzbyz {
    private final zzbeb zzdjd;
    private final zzcag zzgbj;

    public zzbyz(zzcag zzcag) {
        this(zzcag, null);
    }

    public final zzbeb zzaje() {
        return this.zzdjd;
    }

    public final zzcag zzamt() {
        return this.zzgbj;
    }

    public final View zzamu() {
        zzbeb zzbeb = this.zzdjd;
        if (zzbeb != null) {
            return zzbeb.getWebView();
        }
        return null;
    }

    public final View zzamv() {
        zzbeb zzbeb = this.zzdjd;
        if (zzbeb == null) {
            return null;
        }
        return zzbeb.getWebView();
    }

    public Set<zzbya<zzbrm>> zzb(zzbql zzbql) {
        return Collections.singleton(zzbya.zzb(zzbql, zzazp.zzeih));
    }

    public Set<zzbya<zzbxp>> zzc(zzbql zzbql) {
        return Collections.singleton(zzbya.zzb(zzbql, zzazp.zzeih));
    }

    public zzbyz(zzcag zzcag, zzbeb zzbeb) {
        this.zzgbj = zzcag;
        this.zzdjd = zzbeb;
    }

    public final zzbya<zzbvn> zzb(Executor executor) {
        return new zzbya<>(new zzbzb(this.zzdjd), executor);
    }
}
