package com.google.android.gms.internal.measurement;

import android.content.Context;
import java.util.Collection;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import javax.annotation.Nullable;

public abstract class zzfg<T> {
    public static final /* synthetic */ int zzc = 0;
    private static final Object zzd = new Object();
    @Nullable
    private static volatile zzff zze = null;
    private static volatile boolean zzf = false;
    private static final AtomicReference<Collection<zzfg<?>>> zzg = new AtomicReference<>();
    private static final zzfi zzh = new zzfi(zzez.zza);
    private static final AtomicInteger zzj = new AtomicInteger();
    final zzfe zza;
    final String zzb;
    private final T zzi;
    private volatile int zzk = -1;
    private volatile T zzl;
    private final boolean zzm;

    /* JADX DEBUG: Multi-variable search result rejected for r3v0, resolved type: java.lang.Object */
    /* JADX WARN: Multi-variable type inference failed */
    /* synthetic */ zzfg(zzfe zzfe, String str, Object obj, boolean z, zzfa zzfa) {
        if (zzfe.zzb != null) {
            this.zza = zzfe;
            this.zzb = str;
            this.zzi = obj;
            this.zzm = true;
            return;
        }
        throw new IllegalArgumentException("Must pass a valid SharedPreferences file name or ContentProvider URI");
    }

    @Deprecated
    public static void zzb(Context context) {
        synchronized (zzd) {
            zzff zzff = zze;
            Context applicationContext = context.getApplicationContext();
            if (applicationContext != null) {
                context = applicationContext;
            }
            if (zzff == null || zzff.zza() != context) {
                zzen.zzd();
                zzfh.zzb();
                zzeu.zzc();
                zze = new zzek(context, zzfs.zza(new zzey(context)));
                zzj.incrementAndGet();
            }
        }
    }

    static void zzc() {
        zzj.incrementAndGet();
    }

    /* access modifiers changed from: package-private */
    public abstract T zza(Object obj);

    public final String zzd() {
        String str = this.zza.zzd;
        return this.zzb;
    }

    /* JADX WARNING: Removed duplicated region for block: B:34:0x00ae  */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x00af  */
    /* JADX WARNING: Removed duplicated region for block: B:43:0x00e1  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final T zze() {
        /*
        // Method dump skipped, instructions count: 271
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzfg.zze():java.lang.Object");
    }
}
