package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzar;
import javax.annotation.ParametersAreNonnullByDefault;

@ParametersAreNonnullByDefault
public final class zzamj {
    private static final zzar<zzakm> zzdkv = new zzami();
    private static final zzar<zzakm> zzdkw = new zzaml();
    private final zzakz zzdkx;

    public zzamj(Context context, zzazn zzazn, String str) {
        this.zzdkx = new zzakz(context, zzazn, str, zzdkv, zzdkw);
    }

    public final <I, O> zzamb<I, O> zza(String str, zzamc<I> zzamc, zzamd<O> zzamd) {
        return new zzamk(this.zzdkx, str, zzamc, zzamd);
    }

    public final zzamo zzur() {
        return new zzamo(this.zzdkx);
    }
}
