package com.google.android.gms.internal.gtm;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

final class zzvu extends zzvy {
    private static final Class<?> zza = Collections.unmodifiableList(Collections.emptyList()).getClass();

    private zzvu() {
        super(null);
    }

    /* synthetic */ zzvu(zzvt zzvt) {
        super(null);
    }

    /* JADX DEBUG: Multi-variable search result rejected for r1v10, resolved type: java.util.ArrayList */
    /* JADX WARN: Multi-variable type inference failed */
    private static <L> List<L> zzf(Object obj, long j, int i) {
        zzvr zzvr;
        List<L> list;
        List<L> list2 = (List) zzxy.zzf(obj, j);
        if (list2.isEmpty()) {
            if (list2 instanceof zzvs) {
                list = new zzvr(i);
            } else if (!(list2 instanceof zzws) || !(list2 instanceof zzvh)) {
                list = new ArrayList<>(i);
            } else {
                list = ((zzvh) list2).zzd(i);
            }
            zzxy.zzs(obj, j, list);
            return list;
        }
        if (zza.isAssignableFrom(list2.getClass())) {
            ArrayList arrayList = new ArrayList(list2.size() + i);
            arrayList.addAll(list2);
            zzxy.zzs(obj, j, arrayList);
            zzvr = arrayList;
        } else if (list2 instanceof zzxt) {
            zzvr zzvr2 = new zzvr(list2.size() + i);
            zzvr2.addAll(zzvr2.size(), (zzxt) list2);
            zzxy.zzs(obj, j, zzvr2);
            zzvr = zzvr2;
        } else if (!(list2 instanceof zzws) || !(list2 instanceof zzvh)) {
            return list2;
        } else {
            zzvh zzvh = (zzvh) list2;
            if (zzvh.zzc()) {
                return list2;
            }
            zzvh zzd = zzvh.zzd(list2.size() + i);
            zzxy.zzs(obj, j, zzd);
            return zzd;
        }
        return zzvr;
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.gtm.zzvy
    public final <L> List<L> zza(Object obj, long j) {
        return zzf(obj, j, 10);
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.gtm.zzvy
    public final void zzb(Object obj, long j) {
        Object obj2;
        List list = (List) zzxy.zzf(obj, j);
        if (list instanceof zzvs) {
            obj2 = ((zzvs) list).zze();
        } else if (!zza.isAssignableFrom(list.getClass())) {
            if (!(list instanceof zzws) || !(list instanceof zzvh)) {
                obj2 = Collections.unmodifiableList(list);
            } else {
                zzvh zzvh = (zzvh) list;
                if (zzvh.zzc()) {
                    zzvh.zzb();
                    return;
                }
                return;
            }
        } else {
            return;
        }
        zzxy.zzs(obj, j, obj2);
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.gtm.zzvy
    public final <E> void zzc(Object obj, Object obj2, long j) {
        List list = (List) zzxy.zzf(obj2, j);
        List zzf = zzf(obj, j, list.size());
        int size = zzf.size();
        int size2 = list.size();
        if (size > 0 && size2 > 0) {
            zzf.addAll(list);
        }
        if (size > 0) {
            list = zzf;
        }
        zzxy.zzs(obj, j, list);
    }
}
