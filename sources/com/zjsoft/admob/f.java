package com.zjsoft.admob;

import android.app.Activity;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.LoadAdError;
import defpackage.ub0;

class f extends AdListener {
    final /* synthetic */ Activity a;
    final /* synthetic */ e b;

    f(e eVar, Activity activity) {
        this.b = eVar;
        this.a = activity;
    }

    @Override // com.google.android.gms.ads.AdListener
    public void onAdClicked() {
        super.onAdClicked();
        fc0.a().b(this.a, "AdmobInterstitial:onAdClicked");
        ub0.a aVar = this.b.d;
        if (aVar != null) {
            aVar.c(this.a);
        }
    }

    @Override // com.google.android.gms.ads.AdListener
    public void onAdClosed() {
        super.onAdClosed();
        ub0.a aVar = this.b.d;
        if (aVar != null) {
            aVar.b(this.a);
        }
        fc0.a().b(this.a, "AdmobInterstitial:onAdClosed");
        this.b.o();
    }

    @Override // com.google.android.gms.ads.AdListener
    public void onAdFailedToLoad(LoadAdError loadAdError) {
        super.onAdFailedToLoad(loadAdError);
        ub0.a aVar = this.b.d;
        if (aVar != null) {
            Activity activity = this.a;
            StringBuilder q = ic.q("AdmobInterstitial:onAdFailedToLoad errorCode:");
            q.append(loadAdError.getCode());
            q.append(" -> ");
            q.append(loadAdError.getMessage());
            aVar.d(activity, new kb0(q.toString()));
        }
        fc0.a().b(this.a, "AdmobInterstitial:onAdFailedToLoad");
    }

    @Override // com.google.android.gms.ads.AdListener
    public void onAdImpression() {
        super.onAdImpression();
    }

    @Override // com.google.android.gms.ads.AdListener
    public void onAdLoaded() {
        super.onAdLoaded();
        ub0.a aVar = this.b.d;
        if (aVar != null) {
            aVar.a(this.a, null);
        }
        fc0.a().b(this.a, "AdmobInterstitial:onAdLoaded");
    }

    @Override // com.google.android.gms.ads.AdListener
    public void onAdOpened() {
        super.onAdOpened();
        fc0.a().b(this.a, "AdmobInterstitial:onAdOpened");
        ub0.a aVar = this.b.d;
        if (aVar != null) {
            aVar.e(this.a);
        }
        this.b.o();
    }
}
