package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzhi;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

final class zzhj<T extends zzhi<T>> {
    private static final zzhj zzd = new zzhj(true);
    final zzjs<T, Object> zza = new zzjl(16);
    private boolean zzb;
    private boolean zzc;

    private zzhj() {
    }

    public static <T extends zzhi<T>> zzhj<T> zza() {
        throw null;
    }

    /* JADX WARNING: Removed duplicated region for block: B:26:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static final void zzd(T r4, java.lang.Object r5) {
        /*
        // Method dump skipped, instructions count: 140
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzhj.zzd(com.google.android.gms.internal.measurement.zzhi, java.lang.Object):void");
    }

    public final /* bridge */ /* synthetic */ Object clone() {
        zzhj zzhj = new zzhj();
        for (int i = 0; i < this.zza.zzc(); i++) {
            Map.Entry<T, Object> zzd2 = this.zza.zzd(i);
            zzhj.zzc(zzd2.getKey(), zzd2.getValue());
        }
        for (Map.Entry<T, Object> entry : this.zza.zze()) {
            zzhj.zzc(entry.getKey(), entry.getValue());
        }
        zzhj.zzc = this.zzc;
        return zzhj;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzhj)) {
            return false;
        }
        return this.zza.equals(((zzhj) obj).zza);
    }

    public final int hashCode() {
        return this.zza.hashCode();
    }

    public final void zzb() {
        if (!this.zzb) {
            this.zza.zza();
            this.zzb = true;
        }
    }

    public final void zzc(T t, Object obj) {
        if (!t.zzc()) {
            zzd(t, obj);
        } else if (obj instanceof List) {
            ArrayList arrayList = new ArrayList();
            arrayList.addAll((List) obj);
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                zzd(t, arrayList.get(i));
            }
            obj = arrayList;
        } else {
            throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
        }
        if (obj instanceof zzie) {
            this.zzc = true;
        }
        this.zza.put(t, obj);
    }

    private zzhj(boolean z) {
        zzb();
        zzb();
    }
}
