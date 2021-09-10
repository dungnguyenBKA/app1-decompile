package com.zjsoft.baseadlib;

import android.content.Context;
import com.google.ads.consent.ConsentInfoUpdateListener;
import com.google.ads.consent.ConsentInformation;
import com.google.ads.consent.ConsentStatus;

/* access modifiers changed from: package-private */
public final class a implements ConsentInfoUpdateListener {
    final /* synthetic */ Context a;

    a(Context context) {
        this.a = context;
    }

    @Override // com.google.ads.consent.ConsentInfoUpdateListener
    public void onConsentInfoUpdated(ConsentStatus consentStatus) {
        fc0 a2 = fc0.a();
        Context context = this.a;
        StringBuilder q = ic.q("Consent:");
        q.append(consentStatus.name());
        q.append("#");
        q.append(ConsentInformation.getInstance(this.a).isRequestLocationInEeaOrUnknown());
        a2.b(context, q.toString());
        if (ConsentInformation.getInstance(this.a).isRequestLocationInEeaOrUnknown()) {
            cc0.t(this.a).edit().putInt("eea_status", 0).apply();
        } else {
            cc0.t(this.a).edit().putInt("eea_status", 1).apply();
        }
    }

    @Override // com.google.ads.consent.ConsentInfoUpdateListener
    public void onFailedToUpdateConsentInfo(String str) {
        fc0 a2 = fc0.a();
        Context context = this.a;
        a2.b(context, "Consent:" + str);
    }
}
