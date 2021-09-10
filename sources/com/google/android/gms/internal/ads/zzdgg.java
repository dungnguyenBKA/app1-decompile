package com.google.android.gms.internal.ads;

import android.content.Context;
import org.json.JSONObject;

public final class zzdgg implements zzdfi<zzdgh> {
    private final Context context;
    private final String packageName;
    private final zzdzv zzghl;
    private final zzatx zzhed;

    public zzdgg(zzatx zzatx, Context context2, String str, zzdzv zzdzv) {
        this.zzhed = zzatx;
        this.context = context2;
        this.packageName = str;
        this.zzghl = zzdzv;
    }

    @Override // com.google.android.gms.internal.ads.zzdfi
    public final zzdzw<zzdgh> zzasy() {
        return this.zzghl.zze(new zzdgj(this));
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ zzdgh zzatt() {
        JSONObject jSONObject = new JSONObject();
        zzatx zzatx = this.zzhed;
        if (zzatx != null) {
            zzatx.zza(this.context, this.packageName, jSONObject);
        }
        return new zzdgh(jSONObject);
    }
}
