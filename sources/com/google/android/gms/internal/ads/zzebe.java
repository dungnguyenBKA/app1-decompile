package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

public final class zzebe {
    private static final CopyOnWriteArrayList<zzebb> zzibo = new CopyOnWriteArrayList<>();

    public static zzebb zzhp(String str) {
        Iterator<zzebb> it = zzibo.iterator();
        while (it.hasNext()) {
            zzebb next = it.next();
            if (next.zzhn(str)) {
                return next;
            }
        }
        String valueOf = String.valueOf(str);
        throw new GeneralSecurityException(valueOf.length() != 0 ? "No KMS client does support: ".concat(valueOf) : new String("No KMS client does support: "));
    }
}
