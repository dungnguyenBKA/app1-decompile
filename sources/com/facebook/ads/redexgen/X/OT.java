package com.facebook.ads.redexgen.X;

import androidx.annotation.Nullable;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;

public final class OT {
    public static final Map<String, WeakReference<OS>> A00 = new HashMap();

    public static int A00() {
        return A00.size();
    }

    public static OS A01(XJ xj, AnonymousClass16 r5, int i, OQ oq) {
        OS os = new OS(xj, r5, C1122br.A01(xj.A00()), i);
        os.A0Y(oq);
        os.A0W();
        A00.put(r5.A0Y(), new WeakReference<>(os));
        return os;
    }

    @Nullable
    public static OS A02(String str) {
        WeakReference<OS> weakReference = A00.get(str);
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    public static void A03(String str) {
        A00.remove(str);
    }
}
