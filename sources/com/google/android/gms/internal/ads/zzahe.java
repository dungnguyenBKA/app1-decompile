package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.doubleclick.PublisherAdView;

final class zzahe implements Runnable {
    private final /* synthetic */ zzxl zzdgp;
    private final /* synthetic */ PublisherAdView zzdgu;
    private final /* synthetic */ zzahf zzdgv;

    zzahe(zzahf zzahf, PublisherAdView publisherAdView, zzxl zzxl) {
        this.zzdgv = zzahf;
        this.zzdgu = publisherAdView;
        this.zzdgp = zzxl;
    }

    public final void run() {
        if (this.zzdgu.zza(this.zzdgp)) {
            this.zzdgv.zzdgw.onPublisherAdViewLoaded(this.zzdgu);
        } else {
            zzazk.zzex("Could not bind.");
        }
    }
}
