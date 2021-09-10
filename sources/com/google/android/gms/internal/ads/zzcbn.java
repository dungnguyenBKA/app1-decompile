package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import org.json.JSONObject;

public final class zzcbn implements zzeqb<zzqt> {
    private final zzeqo<zzazn> zzftb;
    private final zzeqo<String> zzftc;

    public zzcbn(zzeqo<zzazn> zzeqo, zzeqo<String> zzeqo2) {
        this.zzftb = zzeqo;
        this.zzftc = zzeqo2;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        zzr.zzkr();
        return (zzqt) zzeqh.zza(new zzqt(zzj.zzyy(), this.zzftb.get(), this.zzftc.get(), new JSONObject(), false, true), "Cannot return null from a non-@Nullable @Provides method");
    }
}
