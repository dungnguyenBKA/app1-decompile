package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzebm;
import java.util.Collections;
import java.util.Set;

/* access modifiers changed from: package-private */
public final class zzebl implements zzebm.zzb {
    private final /* synthetic */ zzeaw zzibz;

    zzebl(zzeaw zzeaw) {
        this.zzibz = zzeaw;
    }

    @Override // com.google.android.gms.internal.ads.zzebm.zzb
    public final <Q> zzeaw<Q> zzb(Class<Q> cls) {
        if (this.zzibz.zzbai().equals(cls)) {
            return this.zzibz;
        }
        throw new InternalError("This should never be called, as we always first check supportedPrimitives.");
    }

    @Override // com.google.android.gms.internal.ads.zzebm.zzb
    public final Set<Class<?>> zzbam() {
        return Collections.singleton(this.zzibz.zzbai());
    }

    @Override // com.google.android.gms.internal.ads.zzebm.zzb
    public final zzeaw<?> zzbax() {
        return this.zzibz;
    }

    @Override // com.google.android.gms.internal.ads.zzebm.zzb
    public final Class<?> zzbay() {
        return this.zzibz.getClass();
    }

    @Override // com.google.android.gms.internal.ads.zzebm.zzb
    public final Class<?> zzbaz() {
        return null;
    }
}
