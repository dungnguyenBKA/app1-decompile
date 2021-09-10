package com.google.android.gms.internal.ads;

import java.util.logging.Logger;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* access modifiers changed from: package-private */
public final class zzdwh {
    private static final Logger logger = Logger.getLogger(zzdwh.class.getName());
    private static final zzdwi zzhvy = new zza();

    private static final class zza {
        private zza() {
        }
    }

    private zzdwh() {
    }

    static String emptyToNull(@NullableDecl String str) {
        if (zzhl(str)) {
            return null;
        }
        return str;
    }

    static boolean zzhl(@NullableDecl String str) {
        return str == null || str.isEmpty();
    }

    static String zzhm(@NullableDecl String str) {
        return str == null ? "" : str;
    }
}
