package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.browser.customtabs.c;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.zzd;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.ads.mediation.MediationAdRequest;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationInterstitialListener;

public final class zzaqa implements MediationInterstitialAdapter {
    private Uri uri;
    private Activity zzdoy;
    private MediationInterstitialListener zzdoz;

    @Override // com.google.android.gms.ads.mediation.MediationAdapter
    public final void onDestroy() {
        zzazk.zzdy("Destroying AdMobCustomTabsAdapter adapter.");
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdapter
    public final void onPause() {
        zzazk.zzdy("Pausing AdMobCustomTabsAdapter adapter.");
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdapter
    public final void onResume() {
        zzazk.zzdy("Resuming AdMobCustomTabsAdapter adapter.");
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public final void requestInterstitialAd(Context context, MediationInterstitialListener mediationInterstitialListener, Bundle bundle, MediationAdRequest mediationAdRequest, Bundle bundle2) {
        this.zzdoz = mediationInterstitialListener;
        if (mediationInterstitialListener == null) {
            zzazk.zzex("Listener not set for mediation. Returning.");
        } else if (!(context instanceof Activity)) {
            zzazk.zzex("AdMobCustomTabs can only work with Activity context. Bailing out.");
            this.zzdoz.onAdFailedToLoad(this, 0);
        } else {
            if (!(zzacp.zzj(context))) {
                zzazk.zzex("Default browser does not support custom tabs. Bailing out.");
                this.zzdoz.onAdFailedToLoad(this, 0);
                return;
            }
            String string = bundle.getString("tab_url");
            if (TextUtils.isEmpty(string)) {
                zzazk.zzex("The tab_url retrieved from mediation metadata is empty. Bailing out.");
                this.zzdoz.onAdFailedToLoad(this, 0);
                return;
            }
            this.zzdoy = (Activity) context;
            this.uri = Uri.parse(string);
            this.zzdoz.onAdLoaded(this);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public final void showInterstitial() {
        c a = new c.a(null).a();
        a.a.setData(this.uri);
        zzj.zzeen.post(new zzaqc(this, new AdOverlayInfoParcel(new zzd(a.a, null), null, new zzaqd(this), null, new zzazn(0, 0, false), null)));
        zzr.zzkv().zzxo();
    }
}
