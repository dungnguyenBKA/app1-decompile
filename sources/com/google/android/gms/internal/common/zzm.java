package com.google.android.gms.internal.common;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.Build;
import com.vungle.warren.error.VungleException;

public final class zzm {
    private static volatile boolean zza = (!zza());
    private static boolean zzb = false;

    public static boolean zza() {
        return Build.VERSION.SDK_INT >= 24;
    }

    @TargetApi(VungleException.ASSET_DOWNLOAD_ERROR)
    public static Context zza(Context context) {
        if (context.isDeviceProtectedStorage()) {
            return context;
        }
        return context.createDeviceProtectedStorageContext();
    }
}
