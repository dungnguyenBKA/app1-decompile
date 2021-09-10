package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import android.os.ParcelFileDescriptor;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzr;
import java.util.HashMap;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;

public final class zzajb implements zzu {
    private final Context context;
    private volatile zzaiq zzdir;

    public zzajb(Context context2) {
        this.context = context2;
    }

    /* access modifiers changed from: private */
    public final void disconnect() {
        if (this.zzdir != null) {
            this.zzdir.disconnect();
            Binder.flushPendingCommands();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzu
    public final zzz zza(zzab<?> zzab) {
        zzait zzh = zzait.zzh(zzab);
        long b = zzr.zzky().b();
        try {
            zzbaa zzbaa = new zzbaa();
            this.zzdir = new zzaiq(this.context, zzr.zzlf().zzzp(), new zzajf(this, zzbaa), new zzaje(this, zzbaa));
            this.zzdir.checkAvailabilityAndConnect();
            zzaja zzaja = new zzaja(this, zzh);
            zzdzv zzdzv = zzazp.zzeic;
            zzdzw zza = zzdzk.zza(zzdzk.zzb(zzbaa, zzaja, zzdzv), (long) ((Integer) zzwr.zzqr().zzd(zzabp.zzcuo)).intValue(), TimeUnit.MILLISECONDS, zzazp.zzeif);
            zza.addListener(new zzajc(this), zzdzv);
            ParcelFileDescriptor parcelFileDescriptor = (ParcelFileDescriptor) zza.get();
            long b2 = zzr.zzky().b() - b;
            StringBuilder sb = new StringBuilder(52);
            sb.append("Http assets remote cache took ");
            sb.append(b2);
            sb.append("ms");
            zzd.zzeb(sb.toString());
            zzaiv zzaiv = (zzaiv) new zzatp(parcelFileDescriptor).zza(zzaiv.CREATOR);
            if (zzaiv == null) {
                return null;
            }
            if (zzaiv.zzdip) {
                throw new zzap(zzaiv.zzchg);
            } else if (zzaiv.zzdin.length != zzaiv.zzdio.length) {
                return null;
            } else {
                HashMap hashMap = new HashMap();
                int i = 0;
                while (true) {
                    String[] strArr = zzaiv.zzdin;
                    if (i >= strArr.length) {
                        return new zzz(zzaiv.statusCode, zzaiv.data, hashMap, zzaiv.zzak, zzaiv.zzal);
                    }
                    hashMap.put(strArr[i], zzaiv.zzdio[i]);
                    i++;
                }
            }
        } catch (InterruptedException | ExecutionException unused) {
            StringBuilder sb2 = new StringBuilder(52);
            sb2.append("Http assets remote cache took ");
            sb2.append(zzr.zzky().b() - b);
            sb2.append("ms");
            zzd.zzeb(sb2.toString());
            return null;
        } catch (Throwable th) {
            long b3 = zzr.zzky().b() - b;
            StringBuilder sb3 = new StringBuilder(52);
            sb3.append("Http assets remote cache took ");
            sb3.append(b3);
            sb3.append("ms");
            zzd.zzeb(sb3.toString());
            throw th;
        }
    }
}
