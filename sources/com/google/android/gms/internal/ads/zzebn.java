package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzebm;
import java.security.GeneralSecurityException;
import java.util.Set;

final class zzebn implements zzebm.zzb {
    private final /* synthetic */ zzebj zzicf;
    private final /* synthetic */ zzeax zzicg;

    zzebn(zzebj zzebj, zzeax zzeax) {
        this.zzicf = zzebj;
        this.zzicg = zzeax;
    }

    @Override // com.google.android.gms.internal.ads.zzebm.zzb
    public final <Q> zzeaw<Q> zzb(Class<Q> cls) {
        try {
            return new zzebk(this.zzicf, this.zzicg, cls);
        } catch (IllegalArgumentException e) {
            throw new GeneralSecurityException("Primitive type not supported", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzebm.zzb
    public final Set<Class<?>> zzbam() {
        return this.zzicf.zzbam();
    }

    @Override // com.google.android.gms.internal.ads.zzebm.zzb
    public final zzeaw<?> zzbax() {
        zzebj zzebj = this.zzicf;
        return new zzebk(zzebj, this.zzicg, zzebj.zzban());
    }

    @Override // com.google.android.gms.internal.ads.zzebm.zzb
    public final Class<?> zzbay() {
        return this.zzicf.getClass();
    }

    @Override // com.google.android.gms.internal.ads.zzebm.zzb
    public final Class<?> zzbaz() {
        return this.zzicg.getClass();
    }
}
