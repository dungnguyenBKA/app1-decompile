package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.internal.ads.zzcf;

/* access modifiers changed from: package-private */
public final class zzdtr implements zzdtu {
    private static final zzcf.zza zzhtf = ((zzcf.zza) ((zzelb) zzcf.zza.zzap().zzae("E").zzbiw()));

    zzdtr() {
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final zzcf.zza zzaxz() {
        return zzhtf;
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final zzcf.zza zzck(Context context) {
        return zzdti.zzj(context, context.getPackageName(), Integer.toString(context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode));
    }
}
