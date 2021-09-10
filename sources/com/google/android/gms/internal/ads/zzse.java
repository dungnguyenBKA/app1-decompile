package com.google.android.gms.internal.ads;

import java.util.Comparator;

public final class zzse implements Comparator<zzrs> {
    public zzse(zzsf zzsf) {
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, java.lang.Object] */
    @Override // java.util.Comparator
    public final /* synthetic */ int compare(zzrs zzrs, zzrs zzrs2) {
        zzrs zzrs3 = zzrs;
        zzrs zzrs4 = zzrs2;
        if (zzrs3.zzmo() < zzrs4.zzmo()) {
            return -1;
        }
        if (zzrs3.zzmo() > zzrs4.zzmo()) {
            return 1;
        }
        if (zzrs3.zzmn() < zzrs4.zzmn()) {
            return -1;
        }
        if (zzrs3.zzmn() > zzrs4.zzmn()) {
            return 1;
        }
        float zzmp = (zzrs3.zzmp() - zzrs3.zzmn()) * (zzrs3.zzmq() - zzrs3.zzmo());
        float zzmp2 = (zzrs4.zzmp() - zzrs4.zzmn()) * (zzrs4.zzmq() - zzrs4.zzmo());
        if (zzmp > zzmp2) {
            return -1;
        }
        if (zzmp < zzmp2) {
            return 1;
        }
        return 0;
    }
}
