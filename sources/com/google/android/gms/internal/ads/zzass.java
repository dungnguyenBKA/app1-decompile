package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.Looper;
import android.text.TextUtils;
import com.google.ads.mediation.facebook.FacebookAdapter;
import com.google.android.gms.common.d;
import com.google.android.gms.common.g;
import com.vungle.warren.VungleApiClient;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.Objects;
import java.util.WeakHashMap;
import java.util.concurrent.ExecutorService;
import javax.annotation.ParametersAreNonnullByDefault;

@ParametersAreNonnullByDefault
public final class zzass implements zzasw {
    private static final Object lock = new Object();
    private static zzasw zzdtt;
    private static zzasw zzdtu;
    private final Context zzcmf;
    private final Object zzdtv;
    private final WeakHashMap<Thread, Boolean> zzdtw;
    private final zzazn zzdtx;
    private final ExecutorService zzyy;

    private zzass(Context context) {
        this(context, zzazn.zzaab());
    }

    public static zzasw zzc(Context context, zzazn zzazn) {
        synchronized (lock) {
            if (zzdtu == null) {
                if (zzadr.zzdeu.get().booleanValue()) {
                    if (!((Boolean) zzwr.zzqr().zzd(zzabp.zzczf)).booleanValue()) {
                        zzass zzass = new zzass(context, zzazn);
                        Thread thread = Looper.getMainLooper().getThread();
                        if (thread != null) {
                            synchronized (zzass.zzdtv) {
                                zzass.zzdtw.put(thread, Boolean.TRUE);
                            }
                            thread.setUncaughtExceptionHandler(new zzasx(zzass, thread.getUncaughtExceptionHandler()));
                        }
                        Thread.setDefaultUncaughtExceptionHandler(new zzasu(zzass, Thread.getDefaultUncaughtExceptionHandler()));
                        zzdtu = zzass;
                    }
                }
                zzdtu = new zzasz();
            }
        }
        return zzdtu;
    }

    public static zzasw zzq(Context context) {
        synchronized (lock) {
            if (zzdtt == null) {
                if (zzadr.zzdeu.get().booleanValue()) {
                    if (!((Boolean) zzwr.zzqr().zzd(zzabp.zzczf)).booleanValue()) {
                        zzdtt = new zzass(context);
                    }
                }
                zzdtt = new zzasz();
            }
        }
        return zzdtt;
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Code restructure failed: missing block: B:15:0x0039, code lost:
        if (r3 == false) goto L_0x003d;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void zza(java.lang.Thread r10, java.lang.Throwable r11) {
        /*
            r9 = this;
            r10 = 1
            r0 = 0
            if (r11 == 0) goto L_0x003c
            r1 = r11
            r2 = 0
            r3 = 0
        L_0x0007:
            if (r1 == 0) goto L_0x0037
            java.lang.StackTraceElement[] r4 = r1.getStackTrace()
            int r5 = r4.length
            r6 = 0
        L_0x000f:
            if (r6 >= r5) goto L_0x0032
            r7 = r4[r6]
            java.lang.String r8 = r7.getClassName()
            boolean r8 = com.google.android.gms.internal.ads.zzaza.zzer(r8)
            if (r8 == 0) goto L_0x001e
            r2 = 1
        L_0x001e:
            java.lang.Class<com.google.android.gms.internal.ads.zzass> r8 = com.google.android.gms.internal.ads.zzass.class
            java.lang.String r8 = r8.getName()
            java.lang.String r7 = r7.getClassName()
            boolean r7 = r8.equals(r7)
            if (r7 == 0) goto L_0x002f
            r3 = 1
        L_0x002f:
            int r6 = r6 + 1
            goto L_0x000f
        L_0x0032:
            java.lang.Throwable r1 = r1.getCause()
            goto L_0x0007
        L_0x0037:
            if (r2 == 0) goto L_0x003c
            if (r3 != 0) goto L_0x003c
            goto L_0x003d
        L_0x003c:
            r10 = 0
        L_0x003d:
            if (r10 == 0) goto L_0x0046
            r10 = 1065353216(0x3f800000, float:1.0)
            java.lang.String r0 = ""
            r9.zza(r11, r0, r10)
        L_0x0046:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzass.zza(java.lang.Thread, java.lang.Throwable):void");
    }

    private zzass(Context context, zzazn zzazn) {
        this.zzdtv = new Object();
        this.zzdtw = new WeakHashMap<>();
        this.zzyy = zzdvd.zzayx().zzel(zzdvm.zzhvh);
        this.zzcmf = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        this.zzdtx = zzazn;
    }

    @Override // com.google.android.gms.internal.ads.zzasw
    public final void zza(Throwable th, String str) {
        zza(th, str, 1.0f);
    }

    @Override // com.google.android.gms.internal.ads.zzasw
    public final void zza(Throwable th, String str, float f) {
        if (zzaza.zzd(th) != null) {
            String name = th.getClass().getName();
            StringWriter stringWriter = new StringWriter();
            zzeja.zza(th, new PrintWriter(stringWriter));
            String stringWriter2 = stringWriter.toString();
            int i = 0;
            int i2 = 1;
            boolean z = Math.random() < ((double) f);
            if (f > 0.0f) {
                i2 = (int) (1.0f / f);
            }
            if (z) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(zza(name, stringWriter2, str, i2).toString());
                int size = arrayList.size();
                while (i < size) {
                    Object obj = arrayList.get(i);
                    i++;
                    this.zzyy.execute(new zzasv(new zzazo(), (String) obj));
                }
            }
        }
    }

    private final Uri.Builder zza(String str, String str2, String str3, int i) {
        boolean z;
        String str4;
        try {
            z = yv.a(this.zzcmf).f();
        } catch (Throwable th) {
            zzazk.zzc("Error fetching instant app info", th);
            z = false;
        }
        try {
            str4 = this.zzcmf.getPackageName();
        } catch (Throwable unused) {
            zzazk.zzex("Cannot obtain package name, proceeding.");
            str4 = VungleApiClient.ConnectionTypeDetail.UNKNOWN;
        }
        Uri.Builder appendQueryParameter = new Uri.Builder().scheme("https").path("//pagead2.googlesyndication.com/pagead/gen_204").appendQueryParameter("is_aia", Boolean.toString(z)).appendQueryParameter(FacebookAdapter.KEY_ID, "gmob-apps-report-exception").appendQueryParameter("os", Build.VERSION.RELEASE).appendQueryParameter("api", String.valueOf(Build.VERSION.SDK_INT));
        String str5 = Build.MANUFACTURER;
        String str6 = Build.MODEL;
        if (!str6.startsWith(str5)) {
            str6 = ic.e(str6.length() + ic.m(str5, 1), str5, " ", str6);
        }
        Uri.Builder appendQueryParameter2 = appendQueryParameter.appendQueryParameter("device", str6).appendQueryParameter("js", this.zzdtx.zzbrp).appendQueryParameter("appid", str4).appendQueryParameter("exceptiontype", str).appendQueryParameter("stacktrace", str2).appendQueryParameter("eids", TextUtils.join(",", zzabp.zzsc())).appendQueryParameter("exceptionkey", str3).appendQueryParameter("cl", "350251165").appendQueryParameter("rc", "dev").appendQueryParameter("sampling_rate", Integer.toString(i)).appendQueryParameter("pb_tm", String.valueOf(zzadr.zzdes.get()));
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcqw)).booleanValue()) {
            d c = d.c();
            Context context = this.zzcmf;
            Objects.requireNonNull(c);
            appendQueryParameter2.appendQueryParameter("gmscv", String.valueOf(g.getApkVersion(context))).appendQueryParameter("lite", this.zzdtx.zzeib ? "1" : "0");
        }
        return appendQueryParameter2;
    }
}
