package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.Map;

/* access modifiers changed from: package-private */
public final class zzelu<K> implements Iterator<Map.Entry<K, Object>> {
    private Iterator<Map.Entry<K, Object>> zziry;

    public zzelu(Iterator<Map.Entry<K, Object>> it) {
        this.zziry = it;
    }

    public final boolean hasNext() {
        return this.zziry.hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        Map.Entry<K, Object> next = this.zziry.next();
        return next.getValue() instanceof zzelp ? new zzelr(next) : next;
    }

    public final void remove() {
        this.zziry.remove();
    }
}
