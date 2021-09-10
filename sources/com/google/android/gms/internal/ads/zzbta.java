package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.ads.reward.AdMetadataListener;
import java.util.Set;

public final class zzbta extends zzbwf<AdMetadataListener> implements zzahi {
    private Bundle zzfzm = new Bundle();

    public zzbta(Set<zzbya<AdMetadataListener>> set) {
        super(set);
    }

    public final synchronized Bundle getAdMetadata() {
        return new Bundle(this.zzfzm);
    }

    @Override // com.google.android.gms.internal.ads.zzahi
    public final synchronized void zza(String str, Bundle bundle) {
        this.zzfzm.putAll(bundle);
        zza(zzbtd.zzfzg);
    }
}
