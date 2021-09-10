package com.google.android.gms.internal.ads;

import android.os.Bundle;
import java.util.Collections;
import java.util.List;

public final class zzcgf extends zzagq {
    private final String zzcio;
    private final zzccd zzgch;
    private final zzcbu zzgfm;

    public zzcgf(String str, zzcbu zzcbu, zzccd zzccd) {
        this.zzcio = str;
        this.zzgfm = zzcbu;
        this.zzgch = zzccd;
    }

    @Override // com.google.android.gms.internal.ads.zzagr
    public final void cancelUnconfirmedClick() {
        this.zzgfm.cancelUnconfirmedClick();
    }

    @Override // com.google.android.gms.internal.ads.zzagr
    public final void destroy() {
        this.zzgfm.destroy();
    }

    @Override // com.google.android.gms.internal.ads.zzagr
    public final String getAdvertiser() {
        return this.zzgch.getAdvertiser();
    }

    @Override // com.google.android.gms.internal.ads.zzagr
    public final String getBody() {
        return this.zzgch.getBody();
    }

    @Override // com.google.android.gms.internal.ads.zzagr
    public final String getCallToAction() {
        return this.zzgch.getCallToAction();
    }

    @Override // com.google.android.gms.internal.ads.zzagr
    public final Bundle getExtras() {
        return this.zzgch.getExtras();
    }

    @Override // com.google.android.gms.internal.ads.zzagr
    public final String getHeadline() {
        return this.zzgch.getHeadline();
    }

    @Override // com.google.android.gms.internal.ads.zzagr
    public final List<?> getImages() {
        return this.zzgch.getImages();
    }

    @Override // com.google.android.gms.internal.ads.zzagr
    public final String getMediationAdapterClassName() {
        return this.zzcio;
    }

    @Override // com.google.android.gms.internal.ads.zzagr
    public final List<?> getMuteThisAdReasons() {
        if (isCustomMuteThisAdEnabled()) {
            return this.zzgch.getMuteThisAdReasons();
        }
        return Collections.emptyList();
    }

    @Override // com.google.android.gms.internal.ads.zzagr
    public final String getPrice() {
        return this.zzgch.getPrice();
    }

    @Override // com.google.android.gms.internal.ads.zzagr
    public final double getStarRating() {
        return this.zzgch.getStarRating();
    }

    @Override // com.google.android.gms.internal.ads.zzagr
    public final String getStore() {
        return this.zzgch.getStore();
    }

    @Override // com.google.android.gms.internal.ads.zzagr
    public final zzzc getVideoController() {
        return this.zzgch.getVideoController();
    }

    @Override // com.google.android.gms.internal.ads.zzagr
    public final boolean isCustomClickGestureEnabled() {
        return this.zzgfm.isCustomClickGestureEnabled();
    }

    @Override // com.google.android.gms.internal.ads.zzagr
    public final boolean isCustomMuteThisAdEnabled() {
        return !this.zzgch.getMuteThisAdReasons().isEmpty() && this.zzgch.zzanx() != null;
    }

    @Override // com.google.android.gms.internal.ads.zzagr
    public final void performClick(Bundle bundle) {
        this.zzgfm.zzf(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzagr
    public final void recordCustomClickGesture() {
        this.zzgfm.recordCustomClickGesture();
    }

    @Override // com.google.android.gms.internal.ads.zzagr
    public final boolean recordImpression(Bundle bundle) {
        return this.zzgfm.zzh(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzagr
    public final void reportTouchEvent(Bundle bundle) {
        this.zzgfm.zzg(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzagr
    public final void zza(zzagm zzagm) {
        this.zzgfm.zza(zzagm);
    }

    @Override // com.google.android.gms.internal.ads.zzagr
    public final zzyx zzki() {
        if (!((Boolean) zzwr.zzqr().zzd(zzabp.zzcyy)).booleanValue()) {
            return null;
        }
        return this.zzgfm.zzakr();
    }

    @Override // com.google.android.gms.internal.ads.zzagr
    public final zv zztm() {
        return aw.Q(this.zzgfm);
    }

    @Override // com.google.android.gms.internal.ads.zzagr
    public final zzaer zztn() {
        return this.zzgch.zztn();
    }

    @Override // com.google.android.gms.internal.ads.zzagr
    public final zzaej zzto() {
        return this.zzgch.zzto();
    }

    @Override // com.google.android.gms.internal.ads.zzagr
    public final zv zztp() {
        return this.zzgch.zztp();
    }

    @Override // com.google.android.gms.internal.ads.zzagr
    public final void zztx() {
        this.zzgfm.zztx();
    }

    @Override // com.google.android.gms.internal.ads.zzagr
    public final zzaem zzty() {
        return this.zzgfm.zzanr().zzty();
    }

    @Override // com.google.android.gms.internal.ads.zzagr
    public final void zza(zzyn zzyn) {
        this.zzgfm.zza(zzyn);
    }

    @Override // com.google.android.gms.internal.ads.zzagr
    public final void zza(zzyj zzyj) {
        this.zzgfm.zza(zzyj);
    }

    @Override // com.google.android.gms.internal.ads.zzagr
    public final void zza(zzyw zzyw) {
        this.zzgfm.zza(zzyw);
    }
}
