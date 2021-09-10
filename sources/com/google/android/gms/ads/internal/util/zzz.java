package com.google.android.gms.ads.internal.util;

import android.annotation.TargetApi;
import android.content.Context;
import android.telephony.TelephonyManager;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.zzuq;
import com.vungle.warren.error.VungleException;

@TargetApi(VungleException.DB_ERROR)
public class zzz extends zzaa {
    @Override // com.google.android.gms.ads.internal.util.zzr
    public final zzuq zza(Context context, TelephonyManager telephonyManager) {
        zzr.zzkr();
        if (zzj.zzp(context, "android.permission.ACCESS_NETWORK_STATE")) {
            return telephonyManager.isDataEnabled() ? zzuq.ENUM_TRUE : zzuq.ENUM_FALSE;
        }
        return zzuq.ENUM_FALSE;
    }
}
