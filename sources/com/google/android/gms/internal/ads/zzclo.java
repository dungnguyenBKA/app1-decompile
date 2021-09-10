package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.doubleclick.AppEventListener;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzr;
import java.util.Collections;
import java.util.List;
import javax.annotation.ParametersAreNonnullByDefault;

public final class zzclo implements AppEventListener, zzbrm, zzbrr, zzbse, zzbsh, zzbtb, zzbua, zzdrp, zzvc {
    private long startTime;
    private final List<Object> zzehu;
    private final zzclc zzgmo;

    public zzclo(zzclc zzclc, zzbgc zzbgc) {
        this.zzgmo = zzclc;
        this.zzehu = Collections.singletonList(zzbgc);
    }

    @Override // com.google.android.gms.internal.ads.zzvc
    public final void onAdClicked() {
        zza(zzvc.class, "onAdClicked", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final void onAdClosed() {
        zza(zzbrm.class, "onAdClosed", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.zzbse
    public final void onAdImpression() {
        zza(zzbse.class, "onAdImpression", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final void onAdLeftApplication() {
        zza(zzbrm.class, "onAdLeftApplication", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.zzbtb
    public final void onAdLoaded() {
        long b = zzr.zzky().b() - this.startTime;
        StringBuilder sb = new StringBuilder(41);
        sb.append("Ad Request Latency : ");
        sb.append(b);
        zzd.zzeb(sb.toString());
        zza(zzbtb.class, "onAdLoaded", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final void onAdOpened() {
        zza(zzbrm.class, "onAdOpened", new Object[0]);
    }

    @Override // com.google.android.gms.ads.doubleclick.AppEventListener
    public final void onAppEvent(String str, String str2) {
        zza(AppEventListener.class, "onAppEvent", str, str2);
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final void onRewardedVideoCompleted() {
        zza(zzbrm.class, "onRewardedVideoCompleted", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final void onRewardedVideoStarted() {
        zza(zzbrm.class, "onRewardedVideoStarted", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.zzdrp
    public final void zza(zzdrk zzdrk, String str) {
        zza(zzdrh.class, "onTaskCreated", str);
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    @ParametersAreNonnullByDefault
    public final void zzb(zzauk zzauk, String str, String str2) {
        zza(zzbrm.class, "onRewarded", zzauk, str, str2);
    }

    @Override // com.google.android.gms.internal.ads.zzbua
    public final void zzb(zzdnl zzdnl) {
    }

    @Override // com.google.android.gms.internal.ads.zzbrr
    public final void zzc(zzvg zzvg) {
        zza(zzbrr.class, "onAdFailedToLoad", Integer.valueOf(zzvg.errorCode), zzvg.zzchg, zzvg.zzchh);
    }

    @Override // com.google.android.gms.internal.ads.zzbsh
    public final void zzcb(Context context) {
        zza(zzbsh.class, "onPause", context);
    }

    @Override // com.google.android.gms.internal.ads.zzbsh
    public final void zzcc(Context context) {
        zza(zzbsh.class, "onResume", context);
    }

    @Override // com.google.android.gms.internal.ads.zzbsh
    public final void zzcd(Context context) {
        zza(zzbsh.class, "onDestroy", context);
    }

    @Override // com.google.android.gms.internal.ads.zzbua
    public final void zzd(zzatq zzatq) {
        this.startTime = zzr.zzky().b();
        zza(zzbua.class, "onAdRequest", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.zzdrp
    public final void zza(zzdrk zzdrk, String str, Throwable th) {
        zza(zzdrh.class, "onTaskFailed", str, th.getClass().getSimpleName());
    }

    @Override // com.google.android.gms.internal.ads.zzdrp
    public final void zzb(zzdrk zzdrk, String str) {
        zza(zzdrh.class, "onTaskStarted", str);
    }

    private final void zza(Class<?> cls, String str, Object... objArr) {
        zzclc zzclc = this.zzgmo;
        List<Object> list = this.zzehu;
        String simpleName = cls.getSimpleName();
        zzclc.zza(list, simpleName.length() != 0 ? "Event-".concat(simpleName) : new String("Event-"), str, objArr);
    }

    @Override // com.google.android.gms.internal.ads.zzdrp
    public final void zzc(zzdrk zzdrk, String str) {
        zza(zzdrh.class, "onTaskSucceeded", str);
    }
}
