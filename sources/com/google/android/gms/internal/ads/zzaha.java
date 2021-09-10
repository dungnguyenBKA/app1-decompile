package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.admanager.AdManagerAdView;

final class zzaha implements Runnable {
    private final /* synthetic */ AdManagerAdView zzdgo;
    private final /* synthetic */ zzxl zzdgp;
    private final /* synthetic */ zzahb zzdgq;

    zzaha(zzahb zzahb, AdManagerAdView adManagerAdView, zzxl zzxl) {
        this.zzdgq = zzahb;
        this.zzdgo = adManagerAdView;
        this.zzdgp = zzxl;
    }

    public final void run() {
        if (this.zzdgo.zza(this.zzdgp)) {
            this.zzdgq.zzdgr.onAdManagerAdViewLoaded(this.zzdgo);
        } else {
            zzazk.zzex("Could not bind.");
        }
    }
}
