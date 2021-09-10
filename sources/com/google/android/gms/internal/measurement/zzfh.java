package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.StrictMode;
import java.util.Iterator;
import java.util.Map;

public final class zzfh implements zzer {
    private static final Map<String, zzfh> zza = new x();
    private final SharedPreferences zzb;
    private final SharedPreferences.OnSharedPreferenceChangeListener zzc;

    static zzfh zza(Context context, String str) {
        zzfh zzfh;
        if (!zzej.zza()) {
            synchronized (zzfh.class) {
                zzfh = zza.get(null);
                if (zzfh == null) {
                    StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
                    try {
                        throw null;
                    } catch (Throwable th) {
                        StrictMode.setThreadPolicy(allowThreadDiskReads);
                        throw th;
                    }
                }
            }
            return zzfh;
        }
        throw null;
    }

    static synchronized void zzb() {
        synchronized (zzfh.class) {
            Map<String, zzfh> map = zza;
            Iterator<zzfh> it = map.values().iterator();
            if (!it.hasNext()) {
                map.clear();
            } else {
                SharedPreferences sharedPreferences = it.next().zzb;
                throw null;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzer
    public final Object zze(String str) {
        throw null;
    }
}
