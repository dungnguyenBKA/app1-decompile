package com.google.android.gms.internal.ads;

import android.os.Bundle;
import java.util.List;

public final class zzcgc extends zzafi {
    private final String zzcio;
    private final zzccd zzgch;
    private final zzcbu zzgfm;

    public zzcgc(String str, zzcbu zzcbu, zzccd zzccd) {
        this.zzcio = str;
        this.zzgfm = zzcbu;
        this.zzgch = zzccd;
    }

    @Override // com.google.android.gms.internal.ads.zzafj
    public final void destroy() {
        this.zzgfm.destroy();
    }

    @Override // com.google.android.gms.internal.ads.zzafj
    public final String getAdvertiser() {
        return this.zzgch.getAdvertiser();
    }

    @Override // com.google.android.gms.internal.ads.zzafj
    public final String getBody() {
        return this.zzgch.getBody();
    }

    @Override // com.google.android.gms.internal.ads.zzafj
    public final String getCallToAction() {
        return this.zzgch.getCallToAction();
    }

    @Override // com.google.android.gms.internal.ads.zzafj
    public final Bundle getExtras() {
        return this.zzgch.getExtras();
    }

    @Override // com.google.android.gms.internal.ads.zzafj
    public final String getHeadline() {
        return this.zzgch.getHeadline();
    }

    @Override // com.google.android.gms.internal.ads.zzafj
    public final List<?> getImages() {
        return this.zzgch.getImages();
    }

    @Override // com.google.android.gms.internal.ads.zzafj
    public final String getMediationAdapterClassName() {
        return this.zzcio;
    }

    @Override // com.google.android.gms.internal.ads.zzafj
    public final zzzc getVideoController() {
        return this.zzgch.getVideoController();
    }

    @Override // com.google.android.gms.internal.ads.zzafj
    public final void performClick(Bundle bundle) {
        this.zzgfm.zzf(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzafj
    public final boolean recordImpression(Bundle bundle) {
        return this.zzgfm.zzh(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzafj
    public final void reportTouchEvent(Bundle bundle) {
        this.zzgfm.zzg(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzafj
    public final zv zztm() {
        return aw.Q(this.zzgfm);
    }

    @Override // com.google.android.gms.internal.ads.zzafj
    public final zzaej zzto() {
        return this.zzgch.zzto();
    }

    @Override // com.google.android.gms.internal.ads.zzafj
    public final zv zztp() {
        return this.zzgch.zztp();
    }

    @Override // com.google.android.gms.internal.ads.zzafj
    public final zzaer zztq() {
        return this.zzgch.zztq();
    }
}
