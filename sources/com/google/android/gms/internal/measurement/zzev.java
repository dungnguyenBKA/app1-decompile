package com.google.android.gms.internal.measurement;

import android.net.Uri;
import java.util.Map;
import javax.annotation.Nullable;

public final class zzev {
    private final Map<String, Map<String, String>> zza;

    zzev(Map<String, Map<String, String>> map) {
        this.zza = map;
    }

    @Nullable
    public final String zza(@Nullable Uri uri, @Nullable String str, @Nullable String str2, String str3) {
        Map<String, String> map;
        String str4;
        if (uri == null || (map = this.zza.get(uri.toString())) == null) {
            return null;
        }
        String valueOf = String.valueOf(str3);
        if (valueOf.length() != 0) {
            str4 = "".concat(valueOf);
        } else {
            str4 = new String("");
        }
        return map.get(str4);
    }
}
