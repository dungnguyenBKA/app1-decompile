package com.google.android.gms.internal.ads;

import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* access modifiers changed from: package-private */
public final class zzenh implements Iterator<zzejy> {
    private final ArrayDeque<zzeng> zziua;
    private zzejy zziub;

    private zzenh(zzejr zzejr) {
        if (zzejr instanceof zzeng) {
            zzeng zzeng = (zzeng) zzejr;
            ArrayDeque<zzeng> arrayDeque = new ArrayDeque<>(zzeng.zzbgm());
            this.zziua = arrayDeque;
            arrayDeque.push(zzeng);
            this.zziub = zzal(zzeng.zzitw);
            return;
        }
        this.zziua = null;
        this.zziub = (zzejy) zzejr;
    }

    private final zzejy zzal(zzejr zzejr) {
        while (zzejr instanceof zzeng) {
            zzeng zzeng = (zzeng) zzejr;
            this.zziua.push(zzeng);
            zzejr = zzeng.zzitw;
        }
        return (zzejy) zzejr;
    }

    public final boolean hasNext() {
        return this.zziub != null;
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // java.util.Iterator
    public final /* synthetic */ zzejy next() {
        zzejy zzejy;
        zzejy zzejy2 = this.zziub;
        if (zzejy2 != null) {
            while (true) {
                ArrayDeque<zzeng> arrayDeque = this.zziua;
                if (arrayDeque != null && !arrayDeque.isEmpty()) {
                    zzejy = zzal(this.zziua.pop().zzitx);
                    if (!zzejy.isEmpty()) {
                        break;
                    }
                } else {
                    zzejy = null;
                }
            }
            zzejy = null;
            this.zziub = zzejy;
            return zzejy2;
        }
        throw new NoSuchElementException();
    }

    public final void remove() {
        throw new UnsupportedOperationException();
    }

    /* synthetic */ zzenh(zzejr zzejr, zzenf zzenf) {
        this(zzejr);
    }
}
