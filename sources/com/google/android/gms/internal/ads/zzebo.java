package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzebm;
import java.security.GeneralSecurityException;
import java.util.Set;

final class zzebo implements zzebm.zzb {
    private final /* synthetic */ zzeax zzich;

    zzebo(zzeax zzeax) {
        this.zzich = zzeax;
    }

    @Override // com.google.android.gms.internal.ads.zzebm.zzb
    public final <Q> zzeaw<Q> zzb(Class<Q> cls) {
        try {
            return new zzeav(this.zzich, cls);
        } catch (IllegalArgumentException e) {
            throw new GeneralSecurityException("Primitive type not supported", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzebm.zzb
    public final Set<Class<?>> zzbam() {
        return this.zzich.zzbam();
    }

    @Override // com.google.android.gms.internal.ads.zzebm.zzb
    public final zzeaw<?> zzbax() {
        zzeax zzeax = this.zzich;
        return new zzeav(zzeax, zzeax.zzban());
    }

    @Override // com.google.android.gms.internal.ads.zzebm.zzb
    public final Class<?> zzbay() {
        return this.zzich.getClass();
    }

    @Override // com.google.android.gms.internal.ads.zzebm.zzb
    public final Class<?> zzbaz() {
        return null;
    }
}
