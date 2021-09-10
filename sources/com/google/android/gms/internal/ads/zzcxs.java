package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.internal.n;
import java.util.Collections;

public final class zzcxs extends zzxo {
    private final Context context;
    private final ViewGroup zzfum;
    private final zzdnp zzfwy;
    private final zzwx zzgby;
    private final zzblv zzgxr;

    public zzcxs(Context context2, zzwx zzwx, zzdnp zzdnp, zzblv zzblv) {
        this.context = context2;
        this.zzgby = zzwx;
        this.zzfwy = zzdnp;
        this.zzgxr = zzblv;
        FrameLayout frameLayout = new FrameLayout(context2);
        frameLayout.removeAllViews();
        frameLayout.addView(zzblv.zzajr(), zzr.zzkt().zzzd());
        frameLayout.setMinimumHeight(zzkg().heightPixels);
        frameLayout.setMinimumWidth(zzkg().widthPixels);
        this.zzfum = frameLayout;
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void destroy() {
        n.d("destroy must be called on the main UI thread.");
        this.zzgxr.destroy();
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final Bundle getAdMetadata() {
        zzazk.zzew("getAdMetadata is not supported in Publisher AdView returned by AdLoader.");
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final String getAdUnitId() {
        return this.zzfwy.zzhkx;
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final String getMediationAdapterClassName() {
        if (this.zzgxr.zzakr() != null) {
            return this.zzgxr.zzakr().getMediationAdapterClassName();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final zzzc getVideoController() {
        return this.zzgxr.getVideoController();
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final boolean isLoading() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final boolean isReady() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void pause() {
        n.d("destroy must be called on the main UI thread.");
        this.zzgxr.zzakq().zzcb(null);
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void resume() {
        n.d("destroy must be called on the main UI thread.");
        this.zzgxr.zzakq().zzcc(null);
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void setImmersiveMode(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void setManualImpressionsEnabled(boolean z) {
        zzazk.zzew("setManualImpressionsEnabled is not supported in Publisher AdView returned by AdLoader.");
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void setUserId(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void showInterstitial() {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void stopLoading() {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzary zzary) {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzase zzase, String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzauu zzauu) {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzsp zzsp) {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzvl zzvl, zzxc zzxc) {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzvx zzvx) {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzyb zzyb) {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzzi zzzi) {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final boolean zza(zzvl zzvl) {
        zzazk.zzew("loadAd is not supported for a Publisher AdView returned from AdLoader.");
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zzbl(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zze(zv zvVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final zv zzke() {
        return aw.Q(this.zzfum);
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zzkf() {
        this.zzgxr.zzkf();
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final zzvs zzkg() {
        n.d("getAdSize must be called on the main UI thread.");
        return zzdnu.zzb(this.context, Collections.singletonList(this.zzgxr.zzajq()));
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final String zzkh() {
        if (this.zzgxr.zzakr() != null) {
            return this.zzgxr.zzakr().getMediationAdapterClassName();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final zzyx zzki() {
        return this.zzgxr.zzakr();
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final zzxt zzkj() {
        return this.zzfwy.zzhld;
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final zzwx zzkk() {
        return this.zzgby;
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzaau zzaau) {
        zzazk.zzew("setVideoOptions is not supported in Publisher AdView returned by AdLoader.");
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzvs zzvs) {
        n.d("setAdSize must be called on the main UI thread.");
        zzblv zzblv = this.zzgxr;
        if (zzblv != null) {
            zzblv.zza(this.zzfum, zzvs);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzacl zzacl) {
        zzazk.zzew("setOnCustomRenderedAdLoadedListener is not supported in Publisher AdView returned by AdLoader.");
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzww zzww) {
        zzazk.zzew("setAdClickListener is not supported in Publisher AdView returned by AdLoader.");
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzxz zzxz) {
        zzazk.zzew("setCorrelationIdProvider is not supported in Publisher AdView returned by AdLoader.");
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzwx zzwx) {
        zzazk.zzew("setAdListener is not supported in Publisher AdView returned by AdLoader.");
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzxt zzxt) {
        zzazk.zzew("setAppEventListener is not supported in Publisher AdView returned by AdLoader.");
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzxs zzxs) {
        zzazk.zzew("setAdMetadataListener is not supported in Publisher AdView returned by AdLoader.");
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzyw zzyw) {
        zzazk.zzew("setOnPaidEventListener is not supported in Publisher AdView returned by AdLoader.");
    }
}
