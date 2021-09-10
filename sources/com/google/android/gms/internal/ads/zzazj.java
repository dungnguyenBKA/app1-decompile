package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;

public final class zzazj {
    public static <T> T zza(Context context, String str, zzazm<IBinder, T> zzazm) {
        try {
            return zzazm.apply(zzbu(context).d(str));
        } catch (Exception e) {
            throw new zzazl(e);
        }
    }

    public static Context zzbt(Context context) {
        return zzbu(context).b();
    }

    private static DynamiteModule zzbu(Context context) {
        try {
            return DynamiteModule.e(context, DynamiteModule.i, ModuleDescriptor.MODULE_ID);
        } catch (Exception e) {
            throw new zzazl(e);
        }
    }
}
