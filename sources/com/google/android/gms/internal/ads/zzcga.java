package com.google.android.gms.internal.ads;

import android.os.Bundle;
import java.util.List;

public final class zzcga extends zzafe {
    private final String zzcio;
    private final zzccd zzgch;
    private final zzcbu zzgfm;

    public zzcga(String str, zzcbu zzcbu, zzccd zzccd) {
        this.zzcio = str;
        this.zzgfm = zzcbu;
        this.zzgch = zzccd;
    }

    @Override // com.google.android.gms.internal.ads.zzaff
    public final void destroy() {
        this.zzgfm.destroy();
    }

    @Override // com.google.android.gms.internal.ads.zzaff
    public final String getBody() {
        return this.zzgch.getBody();
    }

    @Override // com.google.android.gms.internal.ads.zzaff
    public final String getCallToAction() {
        return this.zzgch.getCallToAction();
    }

    @Override // com.google.android.gms.internal.ads.zzaff
    public final Bundle getExtras() {
        return this.zzgch.getExtras();
    }

    @Override // com.google.android.gms.internal.ads.zzaff
    public final String getHeadline() {
        return this.zzgch.getHeadline();
    }

    @Override // com.google.android.gms.internal.ads.zzaff
    public final List<?> getImages() {
        return this.zzgch.getImages();
    }

    @Override // com.google.android.gms.internal.ads.zzaff
    public final String getMediationAdapterClassName() {
        return this.zzcio;
    }

    @Override // com.google.android.gms.internal.ads.zzaff
    public final String getPrice() {
        return this.zzgch.getPrice();
    }

    @Override // com.google.android.gms.internal.ads.zzaff
    public final double getStarRating() {
        return this.zzgch.getStarRating();
    }

    @Override // com.google.android.gms.internal.ads.zzaff
    public final String getStore() {
        return this.zzgch.getStore();
    }

    @Override // com.google.android.gms.internal.ads.zzaff
    public final zzzc getVideoController() {
        return this.zzgch.getVideoController();
    }

    @Override // com.google.android.gms.internal.ads.zzaff
    public final void performClick(Bundle bundle) {
        this.zzgfm.zzf(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzaff
    public final boolean recordImpression(Bundle bundle) {
        return this.zzgfm.zzh(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzaff
    public final void reportTouchEvent(Bundle bundle) {
        this.zzgfm.zzg(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzaff
    public final zv zztm() {
        return aw.Q(this.zzgfm);
    }

    @Override // com.google.android.gms.internal.ads.zzaff
    public final zzaer zztn() {
        return this.zzgch.zztn();
    }

    @Override // com.google.android.gms.internal.ads.zzaff
    public final zzaej zzto() {
        return this.zzgch.zzto();
    }

    @Override // com.google.android.gms.internal.ads.zzaff
    public final zv zztp() {
        return this.zzgch.zztp();
    }
}
