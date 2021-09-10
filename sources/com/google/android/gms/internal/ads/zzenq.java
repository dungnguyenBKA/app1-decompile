package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.List;
import java.util.Map;

final class zzenq implements Iterator<Map.Entry<K, V>> {
    private int pos;
    private final /* synthetic */ zzeno zzius;
    private Iterator<Map.Entry<K, V>> zziut;

    private zzenq(zzeno zzeno) {
        this.zzius = zzeno;
        this.pos = zzeno.zziun.size();
    }

    private final Iterator<Map.Entry<K, V>> zzbkv() {
        if (this.zziut == null) {
            this.zziut = this.zzius.zziuq.entrySet().iterator();
        }
        return this.zziut;
    }

    public final boolean hasNext() {
        int i = this.pos;
        return (i > 0 && i <= this.zzius.zziun.size()) || zzbkv().hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        if (zzbkv().hasNext()) {
            return (Map.Entry) zzbkv().next();
        }
        List list = this.zzius.zziun;
        int i = this.pos - 1;
        this.pos = i;
        return (Map.Entry) list.get(i);
    }

    public final void remove() {
        throw new UnsupportedOperationException();
    }

    /* synthetic */ zzenq(zzeno zzeno, zzenn zzenn) {
        this(zzeno);
    }
}
