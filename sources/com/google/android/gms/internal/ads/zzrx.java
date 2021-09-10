package com.google.android.gms.internal.ads;

import java.util.Comparator;

/* access modifiers changed from: package-private */
public final class zzrx implements Comparator<zzsd> {
    zzrx(zzru zzru) {
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, java.lang.Object] */
    @Override // java.util.Comparator
    public final /* synthetic */ int compare(zzsd zzsd, zzsd zzsd2) {
        zzsd zzsd3 = zzsd;
        zzsd zzsd4 = zzsd2;
        int i = zzsd3.zzbuc - zzsd4.zzbuc;
        if (i != 0) {
            return i;
        }
        return (int) (zzsd3.value - zzsd4.value);
    }
}
