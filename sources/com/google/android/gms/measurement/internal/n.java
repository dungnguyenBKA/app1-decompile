package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.text.TextUtils;
import java.util.Iterator;
import java.util.Objects;

public final class n {
    final String a;
    final String b;
    final String c;
    final long d;
    final long e;
    final zzaq f;

    n(j4 j4Var, String str, String str2, String str3, long j, long j2, Bundle bundle) {
        zzaq zzaq;
        com.google.android.gms.common.internal.n.e(str2);
        com.google.android.gms.common.internal.n.e(str3);
        this.a = str2;
        this.b = str3;
        this.c = true == TextUtils.isEmpty(str) ? null : str;
        this.d = j;
        this.e = j2;
        if (j2 != 0 && j2 > j) {
            j4Var.c().q().b("Event created with reverse previous/current timestamps. appId", i3.w(str2));
        }
        if (!bundle.isEmpty()) {
            Bundle bundle2 = new Bundle(bundle);
            Iterator<String> it = bundle2.keySet().iterator();
            while (it.hasNext()) {
                String next = it.next();
                if (next == null) {
                    j4Var.c().n().a("Param name can't be null");
                    it.remove();
                } else {
                    Object r = j4Var.E().r(next, bundle2.get(next));
                    if (r == null) {
                        j4Var.c().q().b("Param value can't be null", j4Var.F().p(next));
                        it.remove();
                    } else {
                        j4Var.E().y(bundle2, next, r);
                    }
                }
            }
            zzaq = new zzaq(bundle2);
        } else {
            zzaq = new zzaq(new Bundle());
        }
        this.f = zzaq;
    }

    /* access modifiers changed from: package-private */
    public final n a(j4 j4Var, long j) {
        return new n(j4Var, this.c, this.a, this.b, this.d, j, this.f);
    }

    public final String toString() {
        String str = this.a;
        String str2 = this.b;
        String valueOf = String.valueOf(this.f);
        int length = String.valueOf(str).length();
        StringBuilder sb = new StringBuilder(length + 33 + String.valueOf(str2).length() + valueOf.length());
        sb.append("Event{appId='");
        sb.append(str);
        sb.append("', name='");
        sb.append(str2);
        sb.append("', params=");
        sb.append(valueOf);
        sb.append('}');
        return sb.toString();
    }

    private n(j4 j4Var, String str, String str2, String str3, long j, long j2, zzaq zzaq) {
        com.google.android.gms.common.internal.n.e(str2);
        com.google.android.gms.common.internal.n.e(str3);
        Objects.requireNonNull(zzaq, "null reference");
        this.a = str2;
        this.b = str3;
        this.c = true == TextUtils.isEmpty(str) ? null : str;
        this.d = j;
        this.e = j2;
        if (j2 != 0 && j2 > j) {
            j4Var.c().q().c("Event created with reverse previous/current timestamps. appId, name", i3.w(str2), i3.w(str3));
        }
        this.f = zzaq;
    }
}
