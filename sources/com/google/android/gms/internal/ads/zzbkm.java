package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.common.util.d;
import java.util.concurrent.Executor;
import org.json.JSONException;
import org.json.JSONObject;

public final class zzbkm implements zzqw {
    private final d zzbqg;
    private boolean zzbwh = false;
    private zzbeb zzdjd;
    private final zzbjx zzfsg;
    private final Executor zzfsj;
    private zzbkb zzfsl = new zzbkb();
    private boolean zzftg = false;

    public zzbkm(Executor executor, zzbjx zzbjx, d dVar) {
        this.zzfsj = executor;
        this.zzfsg = zzbjx;
        this.zzbqg = dVar;
    }

    private final void zzajb() {
        try {
            JSONObject zza = this.zzfsg.zzi(this.zzfsl);
            if (this.zzdjd != null) {
                this.zzfsj.execute(new zzbkl(this, zza));
            }
        } catch (JSONException e) {
            zzd.zza("Failed to call video active view js", e);
        }
    }

    public final void disable() {
        this.zzbwh = false;
    }

    public final void enable() {
        this.zzbwh = true;
        zzajb();
    }

    @Override // com.google.android.gms.internal.ads.zzqw
    public final void zza(zzqx zzqx) {
        zzbkb zzbkb = this.zzfsl;
        zzbkb.zzbrj = this.zzftg ? false : zzqx.zzbrj;
        zzbkb.timestamp = this.zzbqg.b();
        this.zzfsl.zzfss = zzqx;
        if (this.zzbwh) {
            zzajb();
        }
    }

    public final void zzbf(boolean z) {
        this.zzftg = z;
    }

    public final void zzd(zzbeb zzbeb) {
        this.zzdjd = zzbeb;
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void zzi(JSONObject jSONObject) {
        this.zzdjd.zzb("AFMA_updateActiveView", jSONObject);
    }
}
