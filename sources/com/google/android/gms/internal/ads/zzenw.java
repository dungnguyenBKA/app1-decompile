package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.Map;

final class zzenw implements Iterator<Map.Entry<K, V>> {
    private int pos;
    private final /* synthetic */ zzeno zzius;
    private Iterator<Map.Entry<K, V>> zziut;
    private boolean zziux;

    private zzenw(zzeno zzeno) {
        this.zzius = zzeno;
        this.pos = -1;
    }

    private final Iterator<Map.Entry<K, V>> zzbkv() {
        if (this.zziut == null) {
            this.zziut = this.zzius.zziuo.entrySet().iterator();
        }
        return this.zziut;
    }

    public final boolean hasNext() {
        if (this.pos + 1 < this.zzius.zziun.size() || (!this.zzius.zziuo.isEmpty() && zzbkv().hasNext())) {
            return true;
        }
        return false;
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        this.zziux = true;
        int i = this.pos + 1;
        this.pos = i;
        if (i < this.zzius.zziun.size()) {
            return (Map.Entry) this.zzius.zziun.get(this.pos);
        }
        return (Map.Entry) zzbkv().next();
    }

    public final void remove() {
        if (this.zziux) {
            this.zziux = false;
            this.zzius.zzbkt();
            if (this.pos < this.zzius.zziun.size()) {
                zzeno zzeno = this.zzius;
                int i = this.pos;
                this.pos = i - 1;
                Object unused = zzeno.zzhv(i);
                return;
            }
            zzbkv().remove();
            return;
        }
        throw new IllegalStateException("remove() was called before next()");
    }

    /* synthetic */ zzenw(zzeno zzeno, zzenn zzenn) {
        this(zzeno);
    }
}
