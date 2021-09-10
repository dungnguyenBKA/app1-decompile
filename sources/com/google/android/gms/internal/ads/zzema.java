package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

final class zzema extends zzely {
    private static final Class<?> zzise = Collections.unmodifiableList(Collections.emptyList()).getClass();

    private zzema() {
        super();
    }

    private static <E> List<E> zzd(Object obj, long j) {
        return (List) zzeoh.zzp(obj, j);
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzely
    public final <L> List<L> zza(Object obj, long j) {
        return zza(obj, j, 10);
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzely
    public final void zzb(Object obj, long j) {
        Object obj2;
        List list = (List) zzeoh.zzp(obj, j);
        if (list instanceof zzelv) {
            obj2 = ((zzelv) list).zzbjn();
        } else if (!zzise.isAssignableFrom(list.getClass())) {
            if (!(list instanceof zzena) || !(list instanceof zzell)) {
                obj2 = Collections.unmodifiableList(list);
            } else {
                zzell zzell = (zzell) list;
                if (zzell.zzbge()) {
                    zzell.zzbgf();
                    return;
                }
                return;
            }
        } else {
            return;
        }
        zzeoh.zza(obj, j, obj2);
    }

    /* JADX DEBUG: Multi-variable search result rejected for r1v10, resolved type: java.util.ArrayList */
    /* JADX WARN: Multi-variable type inference failed */
    private static <L> List<L> zza(Object obj, long j, int i) {
        zzelw zzelw;
        List<L> list;
        List<L> zzd = zzd(obj, j);
        if (zzd.isEmpty()) {
            if (zzd instanceof zzelv) {
                list = new zzelw(i);
            } else if (!(zzd instanceof zzena) || !(zzd instanceof zzell)) {
                list = new ArrayList<>(i);
            } else {
                list = ((zzell) zzd).zzfy(i);
            }
            zzeoh.zza(obj, j, list);
            return list;
        }
        if (zzise.isAssignableFrom(zzd.getClass())) {
            ArrayList arrayList = new ArrayList(zzd.size() + i);
            arrayList.addAll(zzd);
            zzeoh.zza(obj, j, arrayList);
            zzelw = arrayList;
        } else if (zzd instanceof zzeog) {
            zzelw zzelw2 = new zzelw(zzd.size() + i);
            zzelw2.addAll((zzeog) zzd);
            zzeoh.zza(obj, j, zzelw2);
            zzelw = zzelw2;
        } else if (!(zzd instanceof zzena) || !(zzd instanceof zzell)) {
            return zzd;
        } else {
            zzell zzell = (zzell) zzd;
            if (zzell.zzbge()) {
                return zzd;
            }
            zzell zzfy = zzell.zzfy(zzd.size() + i);
            zzeoh.zza(obj, j, zzfy);
            return zzfy;
        }
        return zzelw;
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzely
    public final <E> void zza(Object obj, Object obj2, long j) {
        List zzd = zzd(obj2, j);
        List zza = zza(obj, j, zzd.size());
        int size = zza.size();
        int size2 = zzd.size();
        if (size > 0 && size2 > 0) {
            zza.addAll(zzd);
        }
        if (size > 0) {
            zzd = zza;
        }
        zzeoh.zza(obj, j, zzd);
    }
}
