package com.google.android.gms.internal.ads;

import java.util.Iterator;

/* access modifiers changed from: package-private */
public abstract class zzdxy<F, T> implements Iterator<T> {
    final Iterator<? extends F> zzhyq;

    zzdxy(Iterator<? extends F> it) {
        this.zzhyq = (Iterator) zzdwl.checkNotNull(it);
    }

    public final boolean hasNext() {
        return this.zzhyq.hasNext();
    }

    /* JADX DEBUG: Multi-variable search result rejected for r1v0, resolved type: com.google.android.gms.internal.ads.zzdxy<F, T> */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Iterator
    public final T next() {
        return (T) zzae(this.zzhyq.next());
    }

    public final void remove() {
        this.zzhyq.remove();
    }

    /* access modifiers changed from: package-private */
    public abstract T zzae(F f);
}
