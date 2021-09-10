package com.google.android.gms.internal.gtm;

import java.util.Iterator;
import java.util.Map;

/* access modifiers changed from: package-private */
public final class zzvo<K> implements Iterator<Map.Entry<K, Object>> {
    private final Iterator<Map.Entry<K, Object>> zza;

    public zzvo(Iterator<Map.Entry<K, Object>> it) {
        this.zza = it;
    }

    public final boolean hasNext() {
        return this.zza.hasNext();
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        Map.Entry<K, Object> next = this.zza.next();
        return next.getValue() instanceof zzvp ? new zzvn(next, null) : next;
    }

    public final void remove() {
        this.zza.remove();
    }
}
