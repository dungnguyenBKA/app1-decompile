package com.google.android.gms.internal.ads;

import java.util.ListIterator;

/* access modifiers changed from: package-private */
public abstract class zzdyb<F, T> extends zzdxy<F, T> implements ListIterator<T> {
    zzdyb(ListIterator<? extends F> listIterator) {
        super(listIterator);
    }

    @Override // java.util.ListIterator
    public void add(T t) {
        throw new UnsupportedOperationException();
    }

    public final boolean hasPrevious() {
        return ((ListIterator) this.zzhyq).hasPrevious();
    }

    public final int nextIndex() {
        return ((ListIterator) this.zzhyq).nextIndex();
    }

    /* JADX DEBUG: Multi-variable search result rejected for r1v0, resolved type: com.google.android.gms.internal.ads.zzdyb<F, T> */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.ListIterator
    public final T previous() {
        return (T) zzae(((ListIterator) this.zzhyq).previous());
    }

    public final int previousIndex() {
        return ((ListIterator) this.zzhyq).previousIndex();
    }

    @Override // java.util.ListIterator
    public void set(T t) {
        throw new UnsupportedOperationException();
    }
}
