package com.google.android.gms.internal.measurement;

import android.os.Binder;

public final /* synthetic */ class zzep {
    public static <V> V zza(zzeq<V> zzeq) {
        long clearCallingIdentity;
        try {
            return zzeq.zza();
        } catch (SecurityException unused) {
            clearCallingIdentity = Binder.clearCallingIdentity();
            V zza = zzeq.zza();
            Binder.restoreCallingIdentity(clearCallingIdentity);
            return zza;
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(clearCallingIdentity);
            throw th;
        }
    }
}
