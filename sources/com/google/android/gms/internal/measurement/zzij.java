package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

final class zzij extends zzil {
    private static final Class<?> zza = Collections.unmodifiableList(Collections.emptyList()).getClass();

    private zzij() {
        super(null);
    }

    /* synthetic */ zzij(zzii zzii) {
        super(null);
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzil
    public final void zza(Object obj, long j) {
        Object obj2;
        List list = (List) zzkh.zzn(obj, j);
        if (list instanceof zzih) {
            obj2 = ((zzih) list).zzi();
        } else if (!zza.isAssignableFrom(list.getClass())) {
            if (!(list instanceof zzje) || !(list instanceof zzhz)) {
                obj2 = Collections.unmodifiableList(list);
            } else {
                zzhz zzhz = (zzhz) list;
                if (zzhz.zza()) {
                    zzhz.zzb();
                    return;
                }
                return;
            }
        } else {
            return;
        }
        zzkh.zzo(obj, j, obj2);
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzil
    public final <E> void zzb(Object obj, Object obj2, long j) {
        ArrayList arrayList;
        List list = (List) zzkh.zzn(obj2, j);
        int size = list.size();
        List list2 = (List) zzkh.zzn(obj, j);
        if (list2.isEmpty()) {
            if (list2 instanceof zzih) {
                list2 = new zzig(size);
            } else if (!(list2 instanceof zzje) || !(list2 instanceof zzhz)) {
                list2 = new ArrayList(size);
            } else {
                list2 = ((zzhz) list2).zze(size);
            }
            zzkh.zzo(obj, j, list2);
        } else {
            if (zza.isAssignableFrom(list2.getClass())) {
                ArrayList arrayList2 = new ArrayList(list2.size() + size);
                arrayList2.addAll(list2);
                zzkh.zzo(obj, j, arrayList2);
                arrayList = arrayList2;
            } else if (list2 instanceof zzkb) {
                zzig zzig = new zzig(list2.size() + size);
                zzig.addAll(zzig.size(), (zzkb) list2);
                zzkh.zzo(obj, j, zzig);
                arrayList = zzig;
            } else if ((list2 instanceof zzje) && (list2 instanceof zzhz)) {
                zzhz zzhz = (zzhz) list2;
                if (!zzhz.zza()) {
                    list2 = zzhz.zze(list2.size() + size);
                    zzkh.zzo(obj, j, list2);
                }
            }
            list2 = arrayList;
        }
        int size2 = list2.size();
        int size3 = list.size();
        if (size2 > 0 && size3 > 0) {
            list2.addAll(list);
        }
        if (size2 > 0) {
            list = list2;
        }
        zzkh.zzo(obj, j, list);
    }
}
