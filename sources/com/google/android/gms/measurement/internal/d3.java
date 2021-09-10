package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.common.internal.n;
import java.util.ArrayList;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

public final class d3 extends e5 {
    protected static final AtomicReference<String[]> c = new AtomicReference<>();
    protected static final AtomicReference<String[]> d = new AtomicReference<>();
    protected static final AtomicReference<String[]> e = new AtomicReference<>();

    d3(j4 j4Var) {
        super(j4Var);
    }

    private static final String t(String str, String[] strArr, String[] strArr2, AtomicReference<String[]> atomicReference) {
        String str2;
        Objects.requireNonNull(atomicReference, "null reference");
        n.a(strArr.length == strArr2.length);
        for (int i = 0; i < strArr.length; i++) {
            if (h9.F(str, strArr[i])) {
                synchronized (atomicReference) {
                    String[] strArr3 = atomicReference.get();
                    if (strArr3 == null) {
                        strArr3 = new String[strArr2.length];
                        atomicReference.set(strArr3);
                    }
                    str2 = strArr3[i];
                    if (str2 == null) {
                        str2 = strArr2[i] + "(" + strArr[i] + ")";
                        strArr3[i] = str2;
                    }
                }
                return str2;
            }
        }
        return str;
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.measurement.internal.e5
    public final boolean h() {
        return false;
    }

    /* access modifiers changed from: protected */
    public final boolean n() {
        this.a.zzas();
        return this.a.I() && Log.isLoggable(this.a.c().y(), 3);
    }

    /* access modifiers changed from: protected */
    public final String o(String str) {
        if (str == null) {
            return null;
        }
        if (!n()) {
            return str;
        }
        return t(str, g5.c, g5.a, c);
    }

    /* access modifiers changed from: protected */
    public final String p(String str) {
        if (str == null) {
            return null;
        }
        if (!n()) {
            return str;
        }
        return t(str, h5.b, h5.a, d);
    }

    /* access modifiers changed from: protected */
    public final String q(String str) {
        if (str == null) {
            return null;
        }
        if (!n()) {
            return str;
        }
        if (str.startsWith("_exp_")) {
            return ic.j("experiment_id(", str, ")");
        }
        return t(str, i5.b, i5.a, e);
    }

    /* access modifiers changed from: protected */
    public final String r(Bundle bundle) {
        String str;
        if (bundle == null) {
            return null;
        }
        if (!n()) {
            return bundle.toString();
        }
        StringBuilder q = ic.q("Bundle[{");
        for (String str2 : bundle.keySet()) {
            if (q.length() != 8) {
                q.append(", ");
            }
            q.append(p(str2));
            q.append("=");
            Object obj = bundle.get(str2);
            if (obj instanceof Bundle) {
                str = s(new Object[]{obj});
            } else if (obj instanceof Object[]) {
                str = s((Object[]) obj);
            } else if (obj instanceof ArrayList) {
                str = s(((ArrayList) obj).toArray());
            } else {
                str = String.valueOf(obj);
            }
            q.append(str);
        }
        q.append("}]");
        return q.toString();
    }

    /* access modifiers changed from: protected */
    public final String s(Object[] objArr) {
        String str;
        if (objArr == null) {
            return "[]";
        }
        StringBuilder q = ic.q("[");
        for (Object obj : objArr) {
            if (obj instanceof Bundle) {
                str = r((Bundle) obj);
            } else {
                str = String.valueOf(obj);
            }
            if (str != null) {
                if (q.length() != 1) {
                    q.append(", ");
                }
                q.append(str);
            }
        }
        q.append("]");
        return q.toString();
    }
}
