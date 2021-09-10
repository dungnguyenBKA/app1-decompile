package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.doubleclick.AppEventListener;
import com.google.android.gms.ads.internal.overlay.zzn;
import com.google.android.gms.ads.internal.overlay.zzq;
import com.google.android.gms.ads.reward.AdMetadataListener;
import javax.annotation.Nullable;

public final class zzbud extends AdMetadataListener implements AppEventListener, zzq, zzbrm, zzbsa, zzbse, zzbtg, zzbtt, zzvc {
    private final zzbve zzfzv = new zzbve(this);
    @Nullable
    private zzcxy zzfzw;
    @Nullable
    private zzcys zzfzx;
    @Nullable
    private zzdil zzfzy;
    @Nullable
    private zzdlh zzfzz;

    @Override // com.google.android.gms.internal.ads.zzvc
    public final void onAdClicked() {
        zza(this.zzfzw, zzbug.zzfzu);
        zza(this.zzfzx, zzbuj.zzfzu);
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final void onAdClosed() {
        zza(this.zzfzw, zzbuo.zzfzu);
        zza(this.zzfzz, zzbuw.zzfzu);
    }

    @Override // com.google.android.gms.internal.ads.zzbse
    public final void onAdImpression() {
        zza(this.zzfzw, zzbun.zzfzu);
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final void onAdLeftApplication() {
        zza(this.zzfzw, zzbuz.zzfzu);
        zza(this.zzfzz, zzbuy.zzfzu);
    }

    @Override // com.google.android.gms.ads.reward.AdMetadataListener
    public final void onAdMetadataChanged() {
        zza(this.zzfzz, zzbup.zzfzu);
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final void onAdOpened() {
        zza(this.zzfzw, zzbuc.zzfzu);
        zza(this.zzfzz, zzbuf.zzfzu);
    }

    @Override // com.google.android.gms.ads.doubleclick.AppEventListener
    public final void onAppEvent(String str, String str2) {
        zza(this.zzfzw, new zzbui(str, str2));
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzq
    public final void onPause() {
        zza(this.zzfzy, zzbuu.zzfzu);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzq
    public final void onResume() {
        zza(this.zzfzy, zzbux.zzfzu);
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final void onRewardedVideoCompleted() {
        zza(this.zzfzw, zzbue.zzfzu);
        zza(this.zzfzz, zzbuh.zzfzu);
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final void onRewardedVideoStarted() {
        zza(this.zzfzw, zzbvb.zzfzu);
        zza(this.zzfzz, zzbva.zzfzu);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzq
    public final void onUserLeaveHint() {
        zza(this.zzfzy, zzbuv.zzfzu);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzq
    public final void zza(zzn zzn) {
        zza(this.zzfzy, new zzbus(zzn));
    }

    public final zzbve zzakt() {
        return this.zzfzv;
    }

    @Override // com.google.android.gms.internal.ads.zzbtg
    public final void zzalq() {
        zza(this.zzfzy, zzbum.zzfzu);
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final void zzb(zzauk zzauk, String str, String str2) {
        zza(this.zzfzw, new zzbvd(zzauk, str, str2));
        zza(this.zzfzz, new zzbvc(zzauk, str, str2));
    }

    @Override // com.google.android.gms.internal.ads.zzbsa
    public final void zzk(zzvg zzvg) {
        zza(this.zzfzz, new zzbur(zzvg));
        zza(this.zzfzw, new zzbuq(zzvg));
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzq
    public final void zzvo() {
        zza(this.zzfzy, zzbut.zzfzu);
    }

    private static <T> void zza(T t, zzbvh<T> zzbvh) {
        if (t != null) {
            zzbvh.zzp(t);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbtt
    public final void zzb(zzvu zzvu) {
        zza(this.zzfzw, new zzbul(zzvu));
        zza(this.zzfzz, new zzbuk(zzvu));
    }
}
