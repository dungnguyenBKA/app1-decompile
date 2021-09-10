package com.google.android.gms.analytics;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.internal.gtm.zzbv;
import com.google.android.gms.internal.gtm.zzct;
import com.google.android.gms.internal.gtm.zzfb;
import com.google.android.gms.internal.gtm.zzfs;
import java.util.Objects;

public class CampaignTrackingReceiver extends BroadcastReceiver {
    static Boolean zza;

    public static boolean zzb(@RecentlyNonNull Context context) {
        Objects.requireNonNull(context, "null reference");
        Boolean bool = zza;
        if (bool != null) {
            return bool.booleanValue();
        }
        boolean zzi = zzfs.zzi(context, "com.google.android.gms.analytics.CampaignTrackingReceiver", true);
        zza = Boolean.valueOf(zzi);
        return zzi;
    }

    public void onReceive(@RecentlyNonNull Context context, Intent intent) {
        zzbv zzg = zzbv.zzg(context);
        zzfb zzm = zzg.zzm();
        if (intent == null) {
            zzm.zzR("CampaignTrackingReceiver received null intent");
            return;
        }
        String stringExtra = intent.getStringExtra("referrer");
        String action = intent.getAction();
        zzm.zzP("CampaignTrackingReceiver received", action);
        if (!"com.android.vending.INSTALL_REFERRER".equals(action) || TextUtils.isEmpty(stringExtra)) {
            zzm.zzR("CampaignTrackingReceiver received unexpected intent without referrer extra");
            return;
        }
        zza(context, stringExtra);
        zzg.zzj();
        zzg.zzj();
        int zzf = zzct.zzf();
        if (stringExtra.length() > zzf) {
            zzm.zzT("Campaign data exceed the maximum supported size and will be clipped. size, limit", Integer.valueOf(stringExtra.length()), Integer.valueOf(zzf));
            stringExtra = stringExtra.substring(0, zzf);
        }
        zzg.zzf().zzf(stringExtra, new e(goAsync()));
    }

    /* access modifiers changed from: protected */
    public void zza(@RecentlyNonNull Context context, @RecentlyNonNull String str) {
    }
}
