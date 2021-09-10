package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.util.Pair;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.ads.AdError;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.d;
import com.google.android.gms.common.e;
import com.google.android.gms.common.f;
import com.google.android.gms.common.g;
import com.google.android.gms.internal.ads.zzcf;
import com.vungle.warren.AdLoader;
import dalvik.system.DexClassLoader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

public class zzfc {
    private static final String TAG = "zzfc";
    protected Context context;
    private volatile boolean zzxf;
    private zzfa zzyp;
    private ExecutorService zzyy;
    private DexClassLoader zzyz;
    private zzek zzza;
    private byte[] zzzb;
    private volatile AdvertisingIdClient zzzc = null;
    private Future zzzd;
    private boolean zzze;
    private volatile zzcf.zza zzzf;
    private Future zzzg;
    private zzdw zzzh;
    private boolean zzzi;
    private boolean zzzj;
    private Map<Pair<String, String>, zzgl> zzzk;
    private boolean zzzl;

    private zzfc(Context context2) {
        boolean z = false;
        this.zzxf = false;
        this.zzzd = null;
        this.zzzf = null;
        this.zzzg = null;
        this.zzzi = false;
        this.zzzj = false;
        this.zzzl = false;
        Context applicationContext = context2.getApplicationContext();
        z = applicationContext != null ? true : z;
        this.zzze = z;
        this.context = z ? applicationContext : context2;
        this.zzzk = new HashMap();
        if (this.zzyp == null) {
            this.zzyp = new zzfa(this.context);
        }
    }

    public static zzfc zza(Context context2, String str, String str2, boolean z) {
        zzfc zzfc = new zzfc(context2);
        try {
            zzfc.zzyy = Executors.newCachedThreadPool(new zzfb());
            zzfc.zzxf = z;
            if (z) {
                zzfc.zzzd = zzfc.zzyy.submit(new zzfe(zzfc));
            }
            zzfc.zzyy.execute(new zzfg(zzfc));
            try {
                d c = d.c();
                Context context3 = zzfc.context;
                Objects.requireNonNull(c);
                zzfc.zzzi = g.getApkVersion(context3) > 0;
                zzfc.zzzj = c.d(zzfc.context) == 0;
            } catch (Throwable unused) {
            }
            zzfc.zza(0, true);
            if (zzfh.isMainThread()) {
                if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcsi)).booleanValue()) {
                    throw new IllegalStateException("Task Context initialization must not be called from the UI thread.");
                }
            }
            zzek zzek = new zzek(null);
            zzfc.zzza = zzek;
            try {
                zzfc.zzzb = zzek.zzao(str);
                try {
                    File cacheDir = zzfc.context.getCacheDir();
                    if (cacheDir == null) {
                        cacheDir = zzfc.context.getDir("dex", 0);
                        if (cacheDir == null) {
                            throw new zzev();
                        }
                    }
                    File file = new File(String.format("%s/%s.jar", cacheDir, "1608138930680"));
                    if (!file.exists()) {
                        byte[] zza = zzfc.zzza.zza(zzfc.zzzb, str2);
                        file.createNewFile();
                        FileOutputStream fileOutputStream = new FileOutputStream(file);
                        fileOutputStream.write(zza, 0, zza.length);
                        fileOutputStream.close();
                    }
                    zzfc.zzb(cacheDir, "1608138930680");
                    try {
                        zzfc.zzyz = new DexClassLoader(file.getAbsolutePath(), cacheDir.getAbsolutePath(), null, zzfc.context.getClassLoader());
                        zzc(file);
                        zzfc.zza(cacheDir, "1608138930680");
                        zzap(String.format("%s/%s.dex", cacheDir, "1608138930680"));
                        zzfc.zzzh = new zzdw(zzfc);
                        zzfc.zzzl = true;
                        return zzfc;
                    } catch (Throwable th) {
                        zzc(file);
                        zzfc.zza(cacheDir, "1608138930680");
                        zzap(String.format("%s/%s.dex", cacheDir, "1608138930680"));
                        throw th;
                    }
                } catch (FileNotFoundException e) {
                    throw new zzev(e);
                } catch (IOException e2) {
                    throw new zzev(e2);
                } catch (zzej e3) {
                    throw new zzev(e3);
                } catch (NullPointerException e4) {
                    throw new zzev(e4);
                }
            } catch (zzej e5) {
                throw new zzev(e5);
            }
        } catch (zzev unused2) {
        }
    }

    private static void zzap(String str) {
        zzc(new File(str));
    }

    /* JADX WARNING: Can't wrap try/catch for region: R(3:46|47|48) */
    /* JADX WARNING: Can't wrap try/catch for region: R(8:31|32|33|34|35|36|37|38) */
    /* JADX WARNING: Code restructure failed: missing block: B:47:?, code lost:
        r5.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:48:0x00d5, code lost:
        return false;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:53:0x00da, code lost:
        r0 = null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:72:?, code lost:
        r10.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:76:?, code lost:
        r0.close();
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing exception handler attribute for start block: B:36:0x00c5 */
    /* JADX WARNING: Missing exception handler attribute for start block: B:46:0x00d2 */
    /* JADX WARNING: Removed duplicated region for block: B:54:? A[ExcHandler: zzej | IOException | NoSuchAlgorithmException (unused java.lang.Throwable), SYNTHETIC, Splitter:B:23:0x005f] */
    /* JADX WARNING: Removed duplicated region for block: B:60:0x00e1 A[SYNTHETIC, Splitter:B:60:0x00e1] */
    /* JADX WARNING: Removed duplicated region for block: B:64:0x00e8 A[SYNTHETIC, Splitter:B:64:0x00e8] */
    /* JADX WARNING: Removed duplicated region for block: B:71:0x00ef A[SYNTHETIC, Splitter:B:71:0x00ef] */
    /* JADX WARNING: Removed duplicated region for block: B:75:0x00f6 A[SYNTHETIC, Splitter:B:75:0x00f6] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final boolean zzb(java.io.File r10, java.lang.String r11) {
        /*
        // Method dump skipped, instructions count: 250
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfc.zzb(java.io.File, java.lang.String):boolean");
    }

    private static void zzc(File file) {
        if (!file.exists()) {
            String.format("File %s not found. No need for deletion", file.getAbsolutePath());
            return;
        }
        file.delete();
    }

    /* access modifiers changed from: private */
    public final void zzcq() {
        try {
            if (this.zzzc == null && this.zzze) {
                AdvertisingIdClient advertisingIdClient = new AdvertisingIdClient(this.context);
                advertisingIdClient.start();
                this.zzzc = advertisingIdClient;
            }
        } catch (e | f | IOException unused) {
            this.zzzc = null;
        }
    }

    private final zzcf.zza zzcr() {
        try {
            PackageInfo packageInfo = this.context.getPackageManager().getPackageInfo(this.context.getPackageName(), 0);
            Context context2 = this.context;
            return zzdti.zzj(context2, context2.getPackageName(), Integer.toString(packageInfo.versionCode));
        } catch (Throwable unused) {
            return null;
        }
    }

    public final Context getContext() {
        return this.context;
    }

    public final boolean isInitialized() {
        return this.zzzl;
    }

    public final int zzbu() {
        return this.zzzh != null ? zzdw.zzbu() : RecyclerView.UNDEFINED_DURATION;
    }

    public final boolean zzcf() {
        return this.zzyp.zzcf();
    }

    public final ExecutorService zzcg() {
        return this.zzyy;
    }

    public final DexClassLoader zzch() {
        return this.zzyz;
    }

    public final zzek zzci() {
        return this.zzza;
    }

    public final byte[] zzcj() {
        return this.zzzb;
    }

    public final boolean zzck() {
        return this.zzzi;
    }

    public final zzdw zzcl() {
        return this.zzzh;
    }

    public final boolean zzcm() {
        return this.zzzj;
    }

    /* access modifiers changed from: package-private */
    public final zzfa zzcn() {
        return this.zzyp;
    }

    public final zzcf.zza zzco() {
        return this.zzzf;
    }

    public final Future zzcp() {
        return this.zzzg;
    }

    public final AdvertisingIdClient zzcs() {
        if (!this.zzxf) {
            return null;
        }
        if (this.zzzc != null) {
            return this.zzzc;
        }
        Future future = this.zzzd;
        if (future != null) {
            try {
                future.get(AdLoader.RETRY_DELAY, TimeUnit.MILLISECONDS);
                this.zzzd = null;
            } catch (InterruptedException | ExecutionException unused) {
            } catch (TimeoutException unused2) {
                this.zzzd.cancel(true);
            }
        }
        return this.zzzc;
    }

    /* access modifiers changed from: package-private */
    public final zzcf.zza zzb(int i, boolean z) {
        if (i > 0 && z) {
            try {
                Thread.sleep((long) (i * AdError.NETWORK_ERROR_CODE));
            } catch (InterruptedException unused) {
            }
        }
        return zzcr();
    }

    /* JADX WARNING: Can't wrap try/catch for region: R(10:20|21|22|23|24|25|26|27|28|30) */
    /* JADX WARNING: Code restructure failed: missing block: B:35:0x00cd, code lost:
        r10 = null;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing exception handler attribute for start block: B:26:0x00c0 */
    /* JADX WARNING: Removed duplicated region for block: B:36:? A[ExcHandler: zzej | IOException | NoSuchAlgorithmException (unused java.lang.Throwable), SYNTHETIC, Splitter:B:20:0x0056] */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x00d4 A[SYNTHETIC, Splitter:B:42:0x00d4] */
    /* JADX WARNING: Removed duplicated region for block: B:46:0x00db A[SYNTHETIC, Splitter:B:46:0x00db] */
    /* JADX WARNING: Removed duplicated region for block: B:54:0x00e5 A[SYNTHETIC, Splitter:B:54:0x00e5] */
    /* JADX WARNING: Removed duplicated region for block: B:58:0x00ec A[SYNTHETIC, Splitter:B:58:0x00ec] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final void zza(java.io.File r10, java.lang.String r11) {
        /*
        // Method dump skipped, instructions count: 243
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfc.zza(java.io.File, java.lang.String):void");
    }

    public final boolean zza(String str, String str2, Class<?>... clsArr) {
        if (this.zzzk.containsKey(new Pair(str, str2))) {
            return false;
        }
        this.zzzk.put(new Pair<>(str, str2), new zzgl(this, str, str2, clsArr));
        return true;
    }

    public final Method zza(String str, String str2) {
        zzgl zzgl = this.zzzk.get(new Pair(str, str2));
        if (zzgl == null) {
            return null;
        }
        return zzgl.zzdb();
    }

    /* access modifiers changed from: package-private */
    public final void zza(int i, boolean z) {
        if (this.zzzj) {
            Future<?> submit = this.zzyy.submit(new zzfd(this, i, z));
            if (i == 0) {
                this.zzzg = submit;
            }
        }
    }

    /* access modifiers changed from: private */
    public static boolean zza(int i, zzcf.zza zza) {
        if (i >= 4) {
            return false;
        }
        if (zza != null && zza.zzai() && !zza.zzaf().equals("0000000000000000000000000000000000000000000000000000000000000000") && zza.zzan() && zza.zzao().zzbg() && zza.zzao().zzbh() != -2) {
            return false;
        }
        return true;
    }
}
