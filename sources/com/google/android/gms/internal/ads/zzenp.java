package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.Map;

/* access modifiers changed from: package-private */
public final class zzenp extends zzenv {
    private final /* synthetic */ zzeno zzius;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    private zzenp(zzeno zzeno) {
        super(zzeno, null);
        this.zzius = zzeno;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set, com.google.android.gms.internal.ads.zzenv, java.lang.Iterable
    public final Iterator<Map.Entry<K, V>> iterator() {
        return new zzenq(this.zzius, null);
    }

    /* synthetic */ zzenp(zzeno zzeno, zzenn zzenn) {
        this(zzeno);
    }
}
