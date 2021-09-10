package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.zzdb;
import com.google.android.gms.internal.measurement.zzdj;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

/* access modifiers changed from: package-private */
public final class a9 {
    zzdj a;
    List<Long> b;
    List<zzdb> c;
    long d;
    final /* synthetic */ b9 e;

    /* synthetic */ a9(b9 b9Var) {
        this.e = b9Var;
    }

    public final boolean a(long j, zzdb zzdb) {
        Objects.requireNonNull(zzdb, "null reference");
        if (this.c == null) {
            this.c = new ArrayList();
        }
        if (this.b == null) {
            this.b = new ArrayList();
        }
        if (this.c.size() > 0 && ((this.c.get(0).zzf() / 1000) / 60) / 60 != ((zzdb.zzf() / 1000) / 60) / 60) {
            return false;
        }
        long zzbw = this.d + ((long) zzdb.zzbw());
        this.e.U();
        if (zzbw >= ((long) Math.max(0, v2.i.b(null).intValue()))) {
            return false;
        }
        this.d = zzbw;
        this.c.add(zzdb);
        this.b.add(Long.valueOf(j));
        int size = this.c.size();
        this.e.U();
        if (size >= Math.max(1, v2.j.b(null).intValue())) {
            return false;
        }
        return true;
    }
}
