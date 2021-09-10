package com.google.android.gms.internal.ads;

import org.json.JSONException;
import org.json.JSONObject;

/* access modifiers changed from: package-private */
public final class zzamx implements zzaip {
    private final zzbaa<O> zzdlg;
    private final /* synthetic */ zzamv zzdlm;

    public zzamx(zzamv zzamv, zzbaa<O> zzbaa) {
        this.zzdlm = zzamv;
        this.zzdlg = zzbaa;
    }

    @Override // com.google.android.gms.internal.ads.zzaip
    public final void onFailure(String str) {
        if (str == null) {
            try {
                this.zzdlg.setException(new zzaly());
            } catch (IllegalStateException unused) {
            }
        } else {
            this.zzdlg.setException(new zzaly(str));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaip
    public final void zzc(JSONObject jSONObject) {
        try {
            this.zzdlg.set((O) this.zzdlm.zzdky.zzd(jSONObject));
        } catch (IllegalStateException unused) {
        } catch (JSONException e) {
            this.zzdlg.setException(e);
        }
    }
}
