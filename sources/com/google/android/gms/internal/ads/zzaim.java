package com.google.android.gms.internal.ads;

import org.json.JSONObject;

/* access modifiers changed from: package-private */
public final class zzaim implements zzaip {
    private final /* synthetic */ zzbaa zzdik;

    zzaim(zzain zzain, zzbaa zzbaa) {
        this.zzdik = zzbaa;
    }

    @Override // com.google.android.gms.internal.ads.zzaip
    public final void onFailure(String str) {
        this.zzdik.setException(new zzaly(str));
    }

    @Override // com.google.android.gms.internal.ads.zzaip
    public final void zzc(JSONObject jSONObject) {
        this.zzdik.set(jSONObject);
    }
}
