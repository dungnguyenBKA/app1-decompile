package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzr;
import java.io.StringReader;
import java.util.concurrent.Executor;
import org.json.JSONObject;

public final class zzcnf {
    private final Context context;
    private final Executor executor;
    private final zzdnp zzfwy;
    private final zzazn zzgok;

    public zzcnf(Context context2, zzazn zzazn, zzdnp zzdnp, Executor executor2) {
        this.context = context2;
        this.zzgok = zzazn;
        this.zzfwy = zzdnp;
        this.executor = executor2;
    }

    public final zzdzw<zzdnl> zzaro() {
        zzamj zzb = zzr.zzle().zzb(this.context, this.zzgok);
        zzamf<JSONObject> zzamf = zzame.zzdks;
        zzamb zza = zzb.zza("google.afma.response.normalize", zzamf, zzamf);
        return zzdzk.zzb(zzdzk.zzb(zzdzk.zzb(zzdzk.zzag(""), new zzcni(this, this.zzfwy.zzhkw.zzcia), this.executor), new zzcnh(zza), this.executor), new zzcnk(this), this.executor);
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ zzdzw zzo(JSONObject jSONObject) {
        return zzdzk.zzag(new zzdnl(new zzdng(this.zzfwy), zzdnj.zza(new StringReader(jSONObject.toString()))));
    }
}
