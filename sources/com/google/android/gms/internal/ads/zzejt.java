package com.google.android.gms.internal.ads;

import java.util.Comparator;

final class zzejt implements Comparator<zzejr> {
    zzejt() {
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, java.lang.Object] */
    @Override // java.util.Comparator
    public final /* synthetic */ int compare(zzejr zzejr, zzejr zzejr2) {
        zzejr zzejr3 = zzejr;
        zzejr zzejr4 = zzejr2;
        zzejw zzejw = (zzejw) zzejr3.iterator();
        zzejw zzejw2 = (zzejw) zzejr4.iterator();
        while (zzejw.hasNext() && zzejw2.hasNext()) {
            int compare = Integer.compare(zzejr.zzb(zzejw.nextByte()), zzejr.zzb(zzejw2.nextByte()));
            if (compare != 0) {
                return compare;
            }
        }
        return Integer.compare(zzejr3.size(), zzejr4.size());
    }
}
