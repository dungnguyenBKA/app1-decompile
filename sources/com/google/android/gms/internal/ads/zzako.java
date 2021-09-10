package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzb;
import com.google.android.gms.ads.internal.zzr;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;
import org.apache.http.protocol.HTTP;
import org.json.JSONObject;

@ParametersAreNonnullByDefault
public final class zzako implements zzakl, zzakm {
    private final zzbeb zzdjd;

    public zzako(Context context, zzazn zzazn, zzei zzei, zzb zzb) {
        zzr.zzks();
        zzbeb zza = zzbej.zza(context, zzbft.zzael(), "", false, false, zzei, null, zzazn, null, null, null, zztu.zznf(), null, null);
        this.zzdjd = zza;
        zza.getView().setWillNotDraw(true);
    }

    private static void runOnUiThread(Runnable runnable) {
        zzwr.zzqn();
        if (zzaza.zzzx()) {
            runnable.run();
        } else {
            zzj.zzeen.post(runnable);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzakm
    public final void destroy() {
        this.zzdjd.destroy();
    }

    @Override // com.google.android.gms.internal.ads.zzakm
    public final boolean isDestroyed() {
        return this.zzdjd.isDestroyed();
    }

    @Override // com.google.android.gms.internal.ads.zzalx
    public final void zza(String str, zzaif<? super zzalx> zzaif) {
        this.zzdjd.zza(str, new zzakx(this, zzaif));
    }

    @Override // com.google.android.gms.internal.ads.zzaki
    public final void zza(String str, Map map) {
        zzakk.zza(this, str, map);
    }

    @Override // com.google.android.gms.internal.ads.zzakl, com.google.android.gms.internal.ads.zzaki
    public final void zza(String str, JSONObject jSONObject) {
        zzakk.zzb(this, str, jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.zzalx
    public final void zzb(String str, zzaif<? super zzalx> zzaif) {
        this.zzdjd.zza(str, new zzakv(zzaif));
    }

    @Override // com.google.android.gms.internal.ads.zzakw
    public final void zzb(String str, JSONObject jSONObject) {
        zzakk.zza(this, str, jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.zzakl, com.google.android.gms.internal.ads.zzakw
    public final void zzcv(String str) {
        runOnUiThread(new zzakr(this, str));
    }

    @Override // com.google.android.gms.internal.ads.zzakm
    public final void zzcw(String str) {
        runOnUiThread(new zzakq(this, String.format("<!DOCTYPE html><html><head><script src=\"%s\"></script></head><body></body></html>", str)));
    }

    @Override // com.google.android.gms.internal.ads.zzakm
    public final void zzcx(String str) {
        runOnUiThread(new zzaks(this, str));
    }

    @Override // com.google.android.gms.internal.ads.zzakm
    public final void zzcy(String str) {
        runOnUiThread(new zzakt(this, str));
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void zzcz(String str) {
        this.zzdjd.loadUrl(str);
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void zzda(String str) {
        this.zzdjd.loadData(str, "text/html", HTTP.UTF_8);
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void zzdb(String str) {
        this.zzdjd.loadData(str, "text/html", HTTP.UTF_8);
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void zzdc(String str) {
        this.zzdjd.zzcv(str);
    }

    @Override // com.google.android.gms.internal.ads.zzakl
    public final void zzi(String str, String str2) {
        zzakk.zza(this, str, str2);
    }

    @Override // com.google.android.gms.internal.ads.zzakm
    public final zzalw zzuj() {
        return new zzalz(this);
    }

    @Override // com.google.android.gms.internal.ads.zzakm
    public final void zza(zzakp zzakp) {
        zzbfn zzacx = this.zzdjd.zzacx();
        zzakp.getClass();
        zzacx.zza(zzaku.zzb(zzakp));
    }
}
