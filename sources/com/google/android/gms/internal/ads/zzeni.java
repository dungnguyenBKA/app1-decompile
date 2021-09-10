package com.google.android.gms.internal.ads;

import java.util.ArrayDeque;
import java.util.Arrays;

public final class zzeni {
    private final ArrayDeque<zzejr> zziuc;

    private zzeni() {
        this.zziuc = new ArrayDeque<>();
    }

    private final void zzam(zzejr zzejr) {
        while (!zzejr.zzbgn()) {
            if (zzejr instanceof zzeng) {
                zzeng zzeng = (zzeng) zzejr;
                zzam(zzeng.zzitw);
                zzejr = zzeng.zzitx;
            } else {
                String valueOf = String.valueOf(zzejr.getClass());
                throw new IllegalArgumentException(ic.d(valueOf.length() + 49, "Has a new type of ByteString been created? Found ", valueOf));
            }
        }
        int zzhs = zzhs(zzejr.size());
        int zzhr = zzeng.zzhr(zzhs + 1);
        if (this.zziuc.isEmpty() || this.zziuc.peek().size() >= zzhr) {
            this.zziuc.push(zzejr);
            return;
        }
        int zzhr2 = zzeng.zzhr(zzhs);
        zzejr pop = this.zziuc.pop();
        while (!this.zziuc.isEmpty() && this.zziuc.peek().size() < zzhr2) {
            pop = new zzeng(this.zziuc.pop(), pop, null);
        }
        zzeng zzeng2 = new zzeng(pop, zzejr, null);
        while (!this.zziuc.isEmpty() && this.zziuc.peek().size() < zzeng.zzhr(zzhs(zzeng2.size()) + 1)) {
            zzeng2 = new zzeng(this.zziuc.pop(), zzeng2, null);
        }
        this.zziuc.push(zzeng2);
    }

    /* access modifiers changed from: public */
    private final zzejr zzc(zzejr zzejr, zzejr zzejr2) {
        zzam(zzejr);
        zzam(zzejr2);
        zzejr pop = this.zziuc.pop();
        while (!this.zziuc.isEmpty()) {
            pop = new zzeng(this.zziuc.pop(), pop, null);
        }
        return pop;
    }

    private static int zzhs(int i) {
        int binarySearch = Arrays.binarySearch(zzeng.zzitu, i);
        return binarySearch < 0 ? (-(binarySearch + 1)) - 1 : binarySearch;
    }

    /* synthetic */ zzeni(zzenf zzenf) {
        this();
    }
}
