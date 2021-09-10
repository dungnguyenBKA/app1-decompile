package com.google.android.gms.internal.ads;

import java.util.Iterator;

public abstract class zzdxa<E> {
    zzdxa() {
    }

    /* JADX DEBUG: Multi-variable search result rejected for r1v0, resolved type: com.google.android.gms.internal.ads.zzdxa<E> */
    /* JADX WARN: Multi-variable type inference failed */
    public zzdxa<E> zza(Iterator<? extends E> it) {
        while (it.hasNext()) {
            zzaa(it.next());
        }
        return this;
    }

    public abstract zzdxa<E> zzaa(E e);

    /* JADX DEBUG: Multi-variable search result rejected for r1v0, resolved type: com.google.android.gms.internal.ads.zzdxa<E> */
    /* JADX WARN: Multi-variable type inference failed */
    public zzdxa<E> zzg(Iterable<? extends E> iterable) {
        Iterator<? extends E> it = iterable.iterator();
        while (it.hasNext()) {
            zzaa(it.next());
        }
        return this;
    }
}
