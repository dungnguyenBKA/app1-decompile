package com.google.android.gms.internal.measurement;

import java.util.Comparator;

final class zzgj implements Comparator<zzgs> {
    zzgj() {
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, java.lang.Object] */
    @Override // java.util.Comparator
    public final /* bridge */ /* synthetic */ int compare(zzgs zzgs, zzgs zzgs2) {
        zzgs zzgs3 = zzgs;
        zzgs zzgs4 = zzgs2;
        zzgi zzgi = new zzgi(zzgs3);
        zzgi zzgi2 = new zzgi(zzgs4);
        while (zzgi.hasNext() && zzgi2.hasNext()) {
            int compare = Integer.compare(zzgi.zza() & 255, zzgi2.zza() & 255);
            if (compare != 0) {
                return compare;
            }
        }
        return Integer.compare(zzgs3.zzc(), zzgs4.zzc());
    }
}
