package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.ApplicationInfo;

public final class zzbbg extends zzbay {
    @Override // com.google.android.gms.internal.ads.zzbay
    public final zzbav zza(Context context, zzbbo zzbbo, int i, boolean z, zzacc zzacc, zzbbl zzbbl) {
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        if (!(applicationInfo == null || applicationInfo.targetSdkVersion >= 11)) {
            return null;
        }
        zzbbn zzbbn = new zzbbn(context, zzbbo.zzabj(), zzbbo.getRequestId(), zzacc, zzbbo.zzabd());
        if (i == 2) {
            return new zzbbr(context, zzbbn, zzbbo, z, zzbay.zzb(zzbbo), zzbbl);
        }
        return new zzbam(context, zzbbo, z, zzbay.zzb(zzbbo), zzbbl, new zzbbn(context, zzbbo.zzabj(), zzbbo.getRequestId(), zzacc, zzbbo.zzabd()));
    }
}
