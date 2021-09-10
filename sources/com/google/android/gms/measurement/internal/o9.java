package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.zzcw;
import com.google.android.gms.internal.measurement.zzcx;
import com.google.android.gms.internal.measurement.zzcy;
import com.google.android.gms.internal.measurement.zzcz;
import com.google.android.gms.internal.measurement.zzdp;
import com.google.android.gms.internal.measurement.zzdq;
import com.google.android.gms.internal.measurement.zzdr;
import com.google.android.gms.internal.measurement.zzds;
import com.google.android.gms.internal.measurement.zzlo;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* access modifiers changed from: package-private */
public final class o9 {
    private String a;
    private boolean b;
    private zzdq c;
    private BitSet d;
    private BitSet e;
    private Map<Integer, Long> f;
    private Map<Integer, List<Long>> g;
    final /* synthetic */ t9 h;

    /* synthetic */ o9(t9 t9Var, String str) {
        this.h = t9Var;
        this.a = str;
        this.b = true;
        this.d = new BitSet();
        this.e = new BitSet();
        this.f = new x();
        this.g = new x();
    }

    /* synthetic */ o9(t9 t9Var, String str, zzdq zzdq, BitSet bitSet, BitSet bitSet2, Map map, Map map2) {
        this.h = t9Var;
        this.a = str;
        this.d = bitSet;
        this.e = bitSet2;
        this.f = map;
        this.g = new x();
        for (Integer num : ((x) map2).keySet()) {
            ArrayList arrayList = new ArrayList();
            arrayList.add((Long) ((e0) map2).get(num));
            this.g.put(num, arrayList);
        }
        this.b = false;
        this.c = zzdq;
    }

    /* access modifiers changed from: package-private */
    public final void a(r9 r9Var) {
        int a2 = r9Var.a();
        Boolean bool = r9Var.c;
        if (bool != null) {
            this.e.set(a2, bool.booleanValue());
        }
        Boolean bool2 = r9Var.d;
        if (bool2 != null) {
            this.d.set(a2, bool2.booleanValue());
        }
        if (r9Var.e != null) {
            Map<Integer, Long> map = this.f;
            Integer valueOf = Integer.valueOf(a2);
            Long l = map.get(valueOf);
            long longValue = r9Var.e.longValue() / 1000;
            if (l == null || longValue > l.longValue()) {
                this.f.put(valueOf, Long.valueOf(longValue));
            }
        }
        if (r9Var.f != null) {
            Map<Integer, List<Long>> map2 = this.g;
            Integer valueOf2 = Integer.valueOf(a2);
            List<Long> list = map2.get(valueOf2);
            if (list == null) {
                list = new ArrayList<>();
                this.g.put(valueOf2, list);
            }
            if (r9Var.b()) {
                list.clear();
            }
            zzlo.zzb();
            e x = this.h.a.x();
            String str = this.a;
            u2<Boolean> u2Var = v2.b0;
            if (x.u(str, u2Var) && r9Var.c()) {
                list.clear();
            }
            zzlo.zzb();
            if (this.h.a.x().u(this.a, u2Var)) {
                Long valueOf3 = Long.valueOf(r9Var.f.longValue() / 1000);
                if (!list.contains(valueOf3)) {
                    list.add(valueOf3);
                    return;
                }
                return;
            }
            list.add(Long.valueOf(r9Var.f.longValue() / 1000));
        }
    }

    /* access modifiers changed from: package-private */
    public final zzcx b(int i) {
        ArrayList arrayList;
        List list;
        zzcw zzh = zzcx.zzh();
        zzh.zza(i);
        zzh.zzd(this.b);
        zzdq zzdq = this.c;
        if (zzdq != null) {
            zzh.zzc(zzdq);
        }
        zzdp zzk = zzdq.zzk();
        zzk.zzc(d9.C(this.d));
        zzk.zza(d9.C(this.e));
        Map<Integer, Long> map = this.f;
        if (map == null) {
            arrayList = null;
        } else {
            ArrayList arrayList2 = new ArrayList(map.size());
            for (Integer num : this.f.keySet()) {
                int intValue = num.intValue();
                Long l = this.f.get(Integer.valueOf(intValue));
                if (l != null) {
                    zzcy zze = zzcz.zze();
                    zze.zza(intValue);
                    zze.zzb(l.longValue());
                    arrayList2.add((zzcz) zze.zzaA());
                }
            }
            arrayList = arrayList2;
        }
        if (arrayList != null) {
            zzk.zze(arrayList);
        }
        Map<Integer, List<Long>> map2 = this.g;
        if (map2 == null) {
            list = Collections.emptyList();
        } else {
            ArrayList arrayList3 = new ArrayList(map2.size());
            for (Integer num2 : this.g.keySet()) {
                zzdr zzf = zzds.zzf();
                zzf.zza(num2.intValue());
                List<Long> list2 = this.g.get(num2);
                if (list2 != null) {
                    Collections.sort(list2);
                    zzf.zzb(list2);
                }
                arrayList3.add((zzds) zzf.zzaA());
            }
            list = arrayList3;
        }
        zzk.zzg(list);
        zzh.zzb(zzk);
        return (zzcx) zzh.zzaA();
    }
}
