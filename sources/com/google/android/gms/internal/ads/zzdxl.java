package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.List;
import java.util.RandomAccess;

public final class zzdxl {
    public static <F, T> List<T> zza(List<F> list, zzdvz<? super F, ? extends T> zzdvz) {
        if (list instanceof RandomAccess) {
            return new zzdxk(list, zzdvz);
        }
        return new zzdxm(list, zzdvz);
    }

    public static <E> ArrayList<E> zzet(int i) {
        zzdwx.zzh(i, "initialArraySize");
        return new ArrayList<>(i);
    }
}
