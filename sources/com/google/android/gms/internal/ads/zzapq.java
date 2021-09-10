package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.mediation.rtb.RtbAdapter;

public class zzapq {
    public static zzapk zzdo(String str) {
        try {
            return new zzapt((RtbAdapter) Class.forName(str, false, zzapq.class.getClassLoader()).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
        } catch (Throwable unused) {
            throw new RemoteException();
        }
    }
}
