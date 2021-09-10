package com.google.android.gms.internal.ads;

import org.json.JSONException;
import org.json.JSONObject;

/* access modifiers changed from: package-private */
public final class zzamp implements zzaip {
    private final /* synthetic */ zzamk zzdlc;
    private final zzalm zzdlf;
    private final zzbaa<O> zzdlg;

    public zzamp(zzamk zzamk, zzalm zzalm, zzbaa<O> zzbaa) {
        this.zzdlc = zzamk;
        this.zzdlf = zzalm;
        this.zzdlg = zzbaa;
    }

    @Override // com.google.android.gms.internal.ads.zzaip
    public final void onFailure(String str) {
        if (str == null) {
            try {
                this.zzdlg.setException(new zzaly());
            } catch (IllegalStateException unused) {
                this.zzdlf.release();
                return;
            } catch (Throwable th) {
                this.zzdlf.release();
                throw th;
            }
        } else {
            this.zzdlg.setException(new zzaly(str));
        }
        this.zzdlf.release();
    }

    @Override // com.google.android.gms.internal.ads.zzaip
    public final void zzc(JSONObject jSONObject) {
        try {
            this.zzdlg.set((O) this.zzdlc.zzdky.zzd(jSONObject));
        } catch (IllegalStateException unused) {
        } catch (JSONException e) {
            this.zzdlg.setException(e);
        } finally {
            this.zzdlf.release();
        }
    }
}
