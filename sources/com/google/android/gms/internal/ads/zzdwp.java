package com.google.android.gms.internal.ads;

import java.util.Iterator;

/* access modifiers changed from: package-private */
public final class zzdwp implements Iterable<String> {
    private final /* synthetic */ CharSequence zzhwf;
    private final /* synthetic */ zzdwk zzhwg;

    zzdwp(zzdwk zzdwk, CharSequence charSequence) {
        this.zzhwg = zzdwk;
        this.zzhwf = charSequence;
    }

    @Override // java.lang.Iterable
    public final Iterator<String> iterator() {
        return this.zzhwg.zzb(this.zzhwf);
    }

    public final String toString() {
        StringBuilder zza = zzdwc.zzhk(", ").zza(new StringBuilder("["), iterator());
        zza.append(']');
        return zza.toString();
    }
}
