package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import java.util.concurrent.atomic.AtomicReference;

public final class zzdkd {
    public static <T> void zza(AtomicReference<T> atomicReference, zzdkc<T> zzdkc) {
        T t = atomicReference.get();
        if (t != null) {
            try {
                zzdkc.zzp(t);
            } catch (RemoteException e) {
                zzazk.zze("#007 Could not call remote method.", e);
            }
        }
    }
}
