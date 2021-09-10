package com.google.android.gms.ads.identifier;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.RemoteException;
import android.os.SystemClock;
import android.util.Log;
import com.google.android.gms.common.d;
import com.google.android.gms.common.e;
import com.google.android.gms.common.g;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.internal.ads_identifier.zze;
import com.google.android.gms.internal.ads_identifier.zzf;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Objects;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import javax.annotation.ParametersAreNonnullByDefault;
import javax.annotation.concurrent.GuardedBy;

@ParametersAreNonnullByDefault
public class AdvertisingIdClient {
    @GuardedBy("this")
    private final Context mContext;
    @GuardedBy("this")
    private com.google.android.gms.common.a zze;
    @GuardedBy("this")
    private zze zzf;
    @GuardedBy("this")
    private boolean zzg;
    private final Object zzh;
    @GuardedBy("mAutoDisconnectTaskLock")
    private a zzi;
    private final boolean zzj;
    private final long zzk;

    public static final class Info {
        private final String zzq;
        private final boolean zzr;

        public Info(String str, boolean z) {
            this.zzq = str;
            this.zzr = z;
        }

        public final String getId() {
            return this.zzq;
        }

        public final boolean isLimitAdTrackingEnabled() {
            return this.zzr;
        }

        public final String toString() {
            String str = this.zzq;
            boolean z = this.zzr;
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 7);
            sb.append("{");
            sb.append(str);
            sb.append("}");
            sb.append(z);
            return sb.toString();
        }
    }

    /* access modifiers changed from: package-private */
    public static class a extends Thread {
        private WeakReference<AdvertisingIdClient> b;
        private long c;
        CountDownLatch d = new CountDownLatch(1);
        boolean e = false;

        public a(AdvertisingIdClient advertisingIdClient, long j) {
            this.b = new WeakReference<>(advertisingIdClient);
            this.c = j;
            start();
        }

        public final void run() {
            AdvertisingIdClient advertisingIdClient;
            try {
                if (!this.d.await(this.c, TimeUnit.MILLISECONDS) && (advertisingIdClient = this.b.get()) != null) {
                    advertisingIdClient.finish();
                    this.e = true;
                }
            } catch (InterruptedException unused) {
                AdvertisingIdClient advertisingIdClient2 = this.b.get();
                if (advertisingIdClient2 != null) {
                    advertisingIdClient2.finish();
                    this.e = true;
                }
            }
        }
    }

    public AdvertisingIdClient(Context context) {
        this(context, 30000, false, false);
    }

    private AdvertisingIdClient(Context context, long j, boolean z, boolean z2) {
        Context applicationContext;
        this.zzh = new Object();
        Objects.requireNonNull(context, "null reference");
        if (z && (applicationContext = context.getApplicationContext()) != null) {
            context = applicationContext;
        }
        this.mContext = context;
        this.zzg = false;
        this.zzk = j;
        this.zzj = z2;
    }

    public static Info getAdvertisingIdInfo(Context context) {
        zzb zzb = new zzb(context);
        boolean z = zzb.getBoolean("gads:ad_id_app_context:enabled", false);
        float a2 = zzb.a("gads:ad_id_app_context:ping_ratio");
        String b = zzb.b("gads:ad_id_use_shared_preference:experiment_id", "");
        AdvertisingIdClient advertisingIdClient = new AdvertisingIdClient(context, -1, z, zzb.getBoolean("gads:ad_id_use_persistent_service:enabled", false));
        try {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            advertisingIdClient.zza(false);
            Info info = advertisingIdClient.getInfo();
            advertisingIdClient.zza(info, z, a2, SystemClock.elapsedRealtime() - elapsedRealtime, b, null);
            advertisingIdClient.finish();
            return info;
        } catch (Throwable th) {
            advertisingIdClient.finish();
            throw th;
        }
    }

    public static boolean getIsAdIdFakeForDebugLogging(Context context) {
        zzb zzb = new zzb(context);
        AdvertisingIdClient advertisingIdClient = new AdvertisingIdClient(context, -1, zzb.getBoolean("gads:ad_id_app_context:enabled", false), zzb.getBoolean("com.google.android.gms.ads.identifier.service.PERSISTENT_START", false));
        try {
            advertisingIdClient.zza(false);
            return advertisingIdClient.zzb();
        } finally {
            advertisingIdClient.finish();
        }
    }

    public static void setShouldSkipGmsCoreVersionCheck(boolean z) {
    }

    private static com.google.android.gms.common.a zza(Context context, boolean z) {
        try {
            context.getPackageManager().getPackageInfo("com.android.vending", 0);
            int e = d.c().e(context, g.GOOGLE_PLAY_SERVICES_VERSION_CODE);
            if (e == 0 || e == 2) {
                String str = z ? "com.google.android.gms.ads.identifier.service.PERSISTENT_START" : "com.google.android.gms.ads.identifier.service.START";
                com.google.android.gms.common.a aVar = new com.google.android.gms.common.a();
                Intent intent = new Intent(str);
                intent.setPackage("com.google.android.gms");
                try {
                    if (com.google.android.gms.common.stats.a.b().a(context, intent, aVar, 1)) {
                        return aVar;
                    }
                    throw new IOException("Connection failure");
                } catch (Throwable th) {
                    throw new IOException(th);
                }
            } else {
                throw new IOException("Google Play services not available");
            }
        } catch (PackageManager.NameNotFoundException unused) {
            throw new e(9);
        }
    }

    private static zze zza(Context context, com.google.android.gms.common.a aVar) {
        try {
            return zzf.zza(aVar.a(10000, TimeUnit.MILLISECONDS));
        } catch (InterruptedException unused) {
            throw new IOException("Interrupted exception");
        } catch (Throwable th) {
            throw new IOException(th);
        }
    }

    private final void zza() {
        synchronized (this.zzh) {
            a aVar = this.zzi;
            if (aVar != null) {
                aVar.d.countDown();
                try {
                    this.zzi.join();
                } catch (InterruptedException unused) {
                }
            }
            if (this.zzk > 0) {
                this.zzi = new a(this, this.zzk);
            }
        }
    }

    private final void zza(boolean z) {
        n.g("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            if (this.zzg) {
                finish();
            }
            com.google.android.gms.common.a zza = zza(this.mContext, this.zzj);
            this.zze = zza;
            this.zzf = zza(this.mContext, zza);
            this.zzg = true;
            if (z) {
                zza();
            }
        }
    }

    private final boolean zza(Info info, boolean z, float f, long j, String str, Throwable th) {
        if (Math.random() > ((double) f)) {
            return false;
        }
        HashMap hashMap = new HashMap();
        String str2 = "1";
        hashMap.put("app_context", z ? str2 : "0");
        if (info != null) {
            if (!info.isLimitAdTrackingEnabled()) {
                str2 = "0";
            }
            hashMap.put("limit_ad_tracking", str2);
        }
        if (!(info == null || info.getId() == null)) {
            hashMap.put("ad_id_size", Integer.toString(info.getId().length()));
        }
        if (th != null) {
            hashMap.put("error", th.getClass().getName());
        }
        if (str != null && !str.isEmpty()) {
            hashMap.put("experiment_id", str);
        }
        hashMap.put("tag", "AdvertisingIdClient");
        hashMap.put("time_spent", Long.toString(j));
        new a(hashMap).start();
        return true;
    }

    private final boolean zzb() {
        boolean zzc;
        n.g("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            if (!this.zzg) {
                synchronized (this.zzh) {
                    a aVar = this.zzi;
                    if (aVar == null || !aVar.e) {
                        throw new IOException("AdvertisingIdClient is not connected.");
                    }
                }
                try {
                    zza(false);
                    if (!this.zzg) {
                        throw new IOException("AdvertisingIdClient cannot reconnect.");
                    }
                } catch (Exception e) {
                    throw new IOException("AdvertisingIdClient cannot reconnect.", e);
                }
            }
            Objects.requireNonNull(this.zze, "null reference");
            Objects.requireNonNull(this.zzf, "null reference");
            try {
                zzc = this.zzf.zzc();
            } catch (RemoteException e2) {
                Log.i("AdvertisingIdClient", "GMS remote exception ", e2);
                throw new IOException("Remote exception");
            }
        }
        zza();
        return zzc;
    }

    /* access modifiers changed from: protected */
    public void finalize() {
        finish();
        super.finalize();
    }

    public final void finish() {
        n.g("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            if (this.mContext != null && this.zze != null) {
                try {
                    if (this.zzg) {
                        com.google.android.gms.common.stats.a.b().c(this.mContext, this.zze);
                    }
                } catch (Throwable th) {
                    Log.i("AdvertisingIdClient", "AdvertisingIdClient unbindService failed.", th);
                }
                this.zzg = false;
                this.zzf = null;
                this.zze = null;
            }
        }
    }

    public Info getInfo() {
        Info info;
        n.g("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            if (!this.zzg) {
                synchronized (this.zzh) {
                    a aVar = this.zzi;
                    if (aVar == null || !aVar.e) {
                        throw new IOException("AdvertisingIdClient is not connected.");
                    }
                }
                try {
                    zza(false);
                    if (!this.zzg) {
                        throw new IOException("AdvertisingIdClient cannot reconnect.");
                    }
                } catch (Exception e) {
                    throw new IOException("AdvertisingIdClient cannot reconnect.", e);
                }
            }
            Objects.requireNonNull(this.zze, "null reference");
            Objects.requireNonNull(this.zzf, "null reference");
            try {
                info = new Info(this.zzf.getId(), this.zzf.zzb(true));
            } catch (RemoteException e2) {
                Log.i("AdvertisingIdClient", "GMS remote exception ", e2);
                throw new IOException("Remote exception");
            }
        }
        zza();
        return info;
    }

    public void start() {
        zza(true);
    }
}
