package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.overlay.zzn;
import com.google.android.gms.ads.internal.overlay.zzq;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.common.util.d;
import java.lang.ref.WeakReference;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.annotation.concurrent.GuardedBy;
import org.json.JSONObject;

public final class zzbjz implements zzq, zzbse, zzbsh, zzqw {
    private final d zzbqg;
    private final zzbju zzfsf;
    private final zzbjx zzfsg;
    private final Set<zzbeb> zzfsh = new HashSet();
    private final zzamv<JSONObject, JSONObject> zzfsi;
    private final Executor zzfsj;
    private final AtomicBoolean zzfsk = new AtomicBoolean(false);
    @GuardedBy("this")
    private final zzbkb zzfsl = new zzbkb();
    private boolean zzfsm = false;
    private WeakReference<?> zzfsn = new WeakReference<>(this);

    public zzbjz(zzamo zzamo, zzbjx zzbjx, Executor executor, zzbju zzbju, d dVar) {
        this.zzfsf = zzbju;
        zzamf<JSONObject> zzamf = zzame.zzdks;
        this.zzfsi = zzamo.zzb("google.afma.activeView.handleUpdate", zzamf, zzamf);
        this.zzfsg = zzbjx;
        this.zzfsj = executor;
        this.zzbqg = dVar;
    }

    private final void zzaiz() {
        for (zzbeb zzbeb : this.zzfsh) {
            this.zzfsf.zzb(zzbeb);
        }
        this.zzfsf.zzaix();
    }

    @Override // com.google.android.gms.internal.ads.zzbse
    public final synchronized void onAdImpression() {
        if (this.zzfsk.compareAndSet(false, true)) {
            this.zzfsf.zza(this);
            zzaiy();
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzq
    public final synchronized void onPause() {
        this.zzfsl.zzfsp = true;
        zzaiy();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzq
    public final synchronized void onResume() {
        this.zzfsl.zzfsp = false;
        zzaiy();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzq
    public final void onUserLeaveHint() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzq
    public final void zza(zzn zzn) {
    }

    @Override // com.google.android.gms.internal.ads.zzqw
    public final synchronized void zza(zzqx zzqx) {
        zzbkb zzbkb = this.zzfsl;
        zzbkb.zzbrj = zzqx.zzbrj;
        zzbkb.zzfss = zzqx;
        zzaiy();
    }

    public final synchronized void zzaiy() {
        if (!(this.zzfsn.get() != null)) {
            zzaja();
            return;
        }
        if (!this.zzfsm && this.zzfsk.get()) {
            try {
                this.zzfsl.timestamp = this.zzbqg.b();
                JSONObject zza = this.zzfsg.zzi(this.zzfsl);
                for (zzbeb zzbeb : this.zzfsh) {
                    this.zzfsj.execute(new zzbkc(zzbeb, zza));
                }
                zzazw.zzb(this.zzfsi.zzf(zza), "ActiveViewListener.callActiveViewJs");
            } catch (Exception e) {
                zzd.zza("Failed to call ActiveViewJS", e);
            }
        }
    }

    public final synchronized void zzaja() {
        zzaiz();
        this.zzfsm = true;
    }

    public final synchronized void zzc(zzbeb zzbeb) {
        this.zzfsh.add(zzbeb);
        this.zzfsf.zza(zzbeb);
    }

    @Override // com.google.android.gms.internal.ads.zzbsh
    public final synchronized void zzcb(Context context) {
        this.zzfsl.zzfsp = true;
        zzaiy();
    }

    @Override // com.google.android.gms.internal.ads.zzbsh
    public final synchronized void zzcc(Context context) {
        this.zzfsl.zzfsp = false;
        zzaiy();
    }

    @Override // com.google.android.gms.internal.ads.zzbsh
    public final synchronized void zzcd(Context context) {
        this.zzfsl.zzfsr = "u";
        zzaiy();
        zzaiz();
        this.zzfsm = true;
    }

    public final void zzn(Object obj) {
        this.zzfsn = new WeakReference<>(obj);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzq
    public final void zzvo() {
    }
}
