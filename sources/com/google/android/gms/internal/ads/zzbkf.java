package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import org.json.JSONObject;

public final class zzbkf implements zzeqb<zzqt> {
    private final zzeqo<JSONObject> zzfja;
    private final zzeqo<zzdmw> zzfta;
    private final zzeqo<zzazn> zzftb;
    private final zzeqo<String> zzftc;

    private zzbkf(zzeqo<zzdmw> zzeqo, zzeqo<zzazn> zzeqo2, zzeqo<JSONObject> zzeqo3, zzeqo<String> zzeqo4) {
        this.zzfta = zzeqo;
        this.zzftb = zzeqo2;
        this.zzfja = zzeqo3;
        this.zzftc = zzeqo4;
    }

    public static zzbkf zza(zzeqo<zzdmw> zzeqo, zzeqo<zzazn> zzeqo2, zzeqo<JSONObject> zzeqo3, zzeqo<String> zzeqo4) {
        return new zzbkf(zzeqo, zzeqo2, zzeqo3, zzeqo4);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        this.zzfta.get();
        zzazn zzazn = this.zzftb.get();
        JSONObject jSONObject = this.zzfja.get();
        String str = this.zzftc.get();
        boolean equals = "native".equals(str);
        zzr.zzkr();
        return (zzqt) zzeqh.zza(new zzqt(zzj.zzyy(), zzazn, str, jSONObject, false, equals), "Cannot return null from a non-@Nullable @Provides method");
    }
}
