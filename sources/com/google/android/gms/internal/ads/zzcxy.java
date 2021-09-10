package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.util.Pair;
import com.google.android.gms.ads.doubleclick.AppEventListener;
import java.util.Iterator;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

public final class zzcxy implements AppEventListener, zzbrm, zzbrr, zzbsa, zzbse, zzbtb, zzbtt, zzbua, zzvc {
    private final zzdrz zzdic;
    private final AtomicReference<zzwx> zzgyb = new AtomicReference<>();
    private final AtomicReference<zzxt> zzgyc = new AtomicReference<>();
    private final AtomicReference<zzyw> zzgyd = new AtomicReference<>();
    private final AtomicReference<zzxc> zzgye = new AtomicReference<>();
    private final AtomicReference<zzyb> zzgyf = new AtomicReference<>();
    private final AtomicBoolean zzgyg = new AtomicBoolean(true);
    private final BlockingQueue<Pair<String, String>> zzgyh = new ArrayBlockingQueue(((Integer) zzwr.zzqr().zzd(zzabp.zzdap)).intValue());

    public zzcxy(zzdrz zzdrz) {
        this.zzdic = zzdrz;
    }

    @Override // com.google.android.gms.internal.ads.zzvc
    public final void onAdClicked() {
        zzdkd.zza(this.zzgyb, zzcxz.zzgya);
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final void onAdClosed() {
        zzdkd.zza(this.zzgyb, zzcxx.zzgya);
        zzdkd.zza(this.zzgyf, zzcya.zzgya);
    }

    @Override // com.google.android.gms.internal.ads.zzbse
    public final void onAdImpression() {
        zzdkd.zza(this.zzgyb, zzcyc.zzgya);
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final void onAdLeftApplication() {
        zzdkd.zza(this.zzgyb, zzcyk.zzgya);
    }

    @Override // com.google.android.gms.internal.ads.zzbtb
    public final synchronized void onAdLoaded() {
        zzdkd.zza(this.zzgyb, zzcyj.zzgya);
        zzdkd.zza(this.zzgye, zzcym.zzgya);
        Iterator it = this.zzgyh.iterator();
        while (it.hasNext()) {
            zzdkd.zza(this.zzgyc, new zzcyg((Pair) it.next()));
        }
        this.zzgyh.clear();
        this.zzgyg.set(false);
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final void onAdOpened() {
        zzdkd.zza(this.zzgyb, zzcyl.zzgya);
        zzdkd.zza(this.zzgyf, zzcyo.zzgya);
    }

    @Override // com.google.android.gms.ads.doubleclick.AppEventListener
    @TargetApi(5)
    public final synchronized void onAppEvent(String str, String str2) {
        if (this.zzgyg.get()) {
            if (!this.zzgyh.offer(new Pair<>(str, str2))) {
                zzazk.zzdy("The queue for app events is full, dropping the new event.");
                zzdrz zzdrz = this.zzdic;
                if (zzdrz != null) {
                    zzdrz.zzb(zzdsa.zzgx("dae_action").zzu("dae_name", str).zzu("dae_data", str2));
                }
            }
            return;
        }
        zzdkd.zza(this.zzgyc, new zzcye(str, str2));
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final void onRewardedVideoCompleted() {
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final void onRewardedVideoStarted() {
    }

    public final void zza(zzxc zzxc) {
        this.zzgye.set(zzxc);
    }

    public final synchronized zzwx zzasj() {
        return this.zzgyb.get();
    }

    public final synchronized zzxt zzask() {
        return this.zzgyc.get();
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final void zzb(zzauk zzauk, String str, String str2) {
    }

    public final void zzb(zzxt zzxt) {
        this.zzgyc.set(zzxt);
    }

    public final void zzc(zzwx zzwx) {
        this.zzgyb.set(zzwx);
    }

    @Override // com.google.android.gms.internal.ads.zzbua
    public final void zzd(zzatq zzatq) {
    }

    @Override // com.google.android.gms.internal.ads.zzbsa
    public final void zzk(zzvg zzvg) {
        zzdkd.zza(this.zzgyf, new zzcyd(zzvg));
    }

    public final void zzb(zzyw zzyw) {
        this.zzgyd.set(zzyw);
    }

    @Override // com.google.android.gms.internal.ads.zzbrr
    public final void zzc(zzvg zzvg) {
        zzdkd.zza(this.zzgyb, new zzcyf(zzvg));
        zzdkd.zza(this.zzgyb, new zzcyi(zzvg));
        zzdkd.zza(this.zzgye, new zzcyh(zzvg));
        this.zzgyg.set(false);
        this.zzgyh.clear();
    }

    public final void zzb(zzyb zzyb) {
        this.zzgyf.set(zzyb);
    }

    @Override // com.google.android.gms.internal.ads.zzbua
    public final void zzb(zzdnl zzdnl) {
        this.zzgyg.set(true);
    }

    @Override // com.google.android.gms.internal.ads.zzbtt
    public final void zzb(zzvu zzvu) {
        zzdkd.zza(this.zzgyd, new zzcyb(zzvu));
    }
}
