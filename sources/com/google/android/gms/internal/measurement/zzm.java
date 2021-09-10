package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.util.Log;
import com.google.ads.ADRequestList;
import java.util.concurrent.atomic.AtomicReference;

public final class zzm extends zzr {
    private final AtomicReference<Bundle> zza = new AtomicReference<>();
    private boolean zzb;

    public static final <T> T zze(Bundle bundle, Class<T> cls) {
        Object obj;
        if (bundle == null || (obj = bundle.get(ADRequestList.ORDER_R)) == null) {
            return null;
        }
        try {
            return cls.cast(obj);
        } catch (ClassCastException e) {
            Log.w("AM", String.format("Unexpected object type. Expected, Received: %s, %s", cls.getCanonicalName(), obj.getClass().getCanonicalName()), e);
            throw e;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzs
    public final void zzb(Bundle bundle) {
        synchronized (this.zza) {
            try {
                this.zza.set(bundle);
                this.zzb = true;
                this.zza.notify();
            } catch (Throwable th) {
                this.zza.notify();
                throw th;
            }
        }
    }

    public final String zzc(long j) {
        return (String) zze(zzd(j), String.class);
    }

    public final Bundle zzd(long j) {
        Bundle bundle;
        synchronized (this.zza) {
            if (!this.zzb) {
                try {
                    this.zza.wait(j);
                } catch (InterruptedException unused) {
                    return null;
                }
            }
            bundle = this.zza.get();
        }
        return bundle;
    }
}
