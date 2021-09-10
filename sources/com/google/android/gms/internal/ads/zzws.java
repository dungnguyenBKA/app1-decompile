package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;

/* access modifiers changed from: package-private */
public abstract class zzws<T> {
    private static final zzxy zzcju = zzqw();

    zzws() {
    }

    private static zzxy zzqw() {
        try {
            Object newInstance = zzwc.class.getClassLoader().loadClass("com.google.android.gms.ads.internal.ClientApi").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
            if (!(newInstance instanceof IBinder)) {
                zzazk.zzex("ClientApi class is not an instance of IBinder.");
                return null;
            }
            IBinder iBinder = (IBinder) newInstance;
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IClientApi");
            if (queryLocalInterface instanceof zzxy) {
                return (zzxy) queryLocalInterface;
            }
            return new zzya(iBinder);
        } catch (Exception unused) {
            zzazk.zzex("Failed to instantiate ClientApi class.");
            return null;
        }
    }

    private final T zzqx() {
        zzxy zzxy = zzcju;
        if (zzxy == null) {
            zzazk.zzex("ClientApi class cannot be loaded.");
            return null;
        }
        try {
            return zza(zzxy);
        } catch (RemoteException e) {
            zzazk.zzd("Cannot invoke local loader using ClientApi class.", e);
            return null;
        }
    }

    private final T zzqy() {
        try {
            return zzqk();
        } catch (RemoteException e) {
            zzazk.zzd("Cannot invoke remote loader.", e);
            return null;
        }
    }

    /* access modifiers changed from: protected */
    public abstract T zza(zzxy zzxy);

    /* JADX WARNING: Removed duplicated region for block: B:19:0x004f  */
    /* JADX WARNING: Removed duplicated region for block: B:23:0x005c  */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x00ac  */
    /* JADX WARNING: Removed duplicated region for block: B:39:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final T zzd(android.content.Context r10, boolean r11) {
        /*
        // Method dump skipped, instructions count: 177
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzws.zzd(android.content.Context, boolean):java.lang.Object");
    }

    /* access modifiers changed from: protected */
    public abstract T zzqj();

    /* access modifiers changed from: protected */
    public abstract T zzqk();
}
