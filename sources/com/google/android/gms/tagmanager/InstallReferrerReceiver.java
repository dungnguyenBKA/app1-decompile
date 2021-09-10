package com.google.android.gms.tagmanager;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.analytics.CampaignTrackingReceiver;
import java.util.Map;

public final class InstallReferrerReceiver extends CampaignTrackingReceiver {
    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.analytics.CampaignTrackingReceiver
    public final void zza(@RecentlyNonNull Context context, @RecentlyNonNull String str) {
        Map<String, String> map = zzcx.zza;
        synchronized (zzcx.class) {
        }
        SharedPreferences.Editor edit = context.getSharedPreferences("gtm_install_referrer", 0).edit();
        edit.putString("referrer", str);
        edit.apply();
        zzcx.zzc(context, str);
    }
}
