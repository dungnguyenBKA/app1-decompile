package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.PackageInfo;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;

public final class zzayi implements zzayk {
    @Override // com.google.android.gms.internal.ads.zzayk
    public final zzdzw<String> zza(String str, PackageInfo packageInfo, int i) {
        return zzdzk.zzag(str);
    }

    @Override // com.google.android.gms.internal.ads.zzayk
    public final zzdzw<String> zzb(Context context, int i) {
        return zzdzk.zzag(null);
    }

    @Override // com.google.android.gms.internal.ads.zzayk
    public final zzdzw<AdvertisingIdClient.Info> zza(Context context, int i) {
        zzbaa zzbaa = new zzbaa();
        zzwr.zzqn();
        if (zzaza.zzbo(context)) {
            zzazp.zzeic.execute(new zzayl(this, context, zzbaa));
        }
        return zzbaa;
    }
}
