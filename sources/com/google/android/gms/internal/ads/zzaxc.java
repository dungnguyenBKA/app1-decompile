package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.common.g;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import java.lang.reflect.Method;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.FutureTask;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import javax.annotation.ParametersAreNonnullByDefault;
import javax.annotation.concurrent.GuardedBy;

@ParametersAreNonnullByDefault
public final class zzaxc {
    private final AtomicReference<ExecutorService> zzeay = new AtomicReference<>(null);
    private final Object zzeaz = new Object();
    @GuardedBy("gmpAppIdLock")
    private String zzeba = null;
    @GuardedBy("gmpAppIdLock")
    private String zzebb = null;
    private final AtomicBoolean zzebc = new AtomicBoolean(false);
    private final AtomicInteger zzebd = new AtomicInteger(-1);
    private final AtomicReference<Object> zzebe = new AtomicReference<>(null);
    private final AtomicReference<Object> zzebf = new AtomicReference<>(null);
    private final ConcurrentMap<String, Method> zzebg = new ConcurrentHashMap(9);
    private final AtomicReference<zzbfu> zzebh = new AtomicReference<>(null);
    @GuardedBy("proxyReference")
    private final BlockingQueue<FutureTask<?>> zzebi = new ArrayBlockingQueue(20);
    private final Object zzebj = new Object();

    private final Method zzaf(Context context) {
        Method method = this.zzebg.get("logEventInternal");
        if (method != null) {
            return method;
        }
        try {
            Method declaredMethod = context.getClassLoader().loadClass("com.google.android.gms.measurement.AppMeasurement").getDeclaredMethod("logEventInternal", String.class, String.class, Bundle.class);
            this.zzebg.put("logEventInternal", declaredMethod);
            return declaredMethod;
        } catch (Exception unused) {
            zzh("logEventInternal", true);
            return null;
        }
    }

    private static Bundle zzk(String str, String str2) {
        Bundle bundle = new Bundle();
        try {
            bundle.putLong("_aeid", Long.parseLong(str));
        } catch (NullPointerException | NumberFormatException e) {
            String valueOf = String.valueOf(str);
            zzazk.zzc(valueOf.length() != 0 ? "Invalid event ID: ".concat(valueOf) : new String("Invalid event ID: "), e);
        }
        if ("_ac".equals(str2)) {
            bundle.putInt("_r", 1);
        }
        return bundle;
    }

    private final Method zzl(Context context, String str) {
        Method method = this.zzebg.get(str);
        if (method != null) {
            return method;
        }
        try {
            Method declaredMethod = context.getClassLoader().loadClass("com.google.android.gms.measurement.AppMeasurement").getDeclaredMethod(str, new Class[0]);
            this.zzebg.put(str, declaredMethod);
            return declaredMethod;
        } catch (Exception unused) {
            zzh(str, false);
            return null;
        }
    }

    private final Method zzm(Context context, String str) {
        Method method = this.zzebg.get(str);
        if (method != null) {
            return method;
        }
        try {
            Method declaredMethod = context.getClassLoader().loadClass("com.google.firebase.analytics.FirebaseAnalytics").getDeclaredMethod(str, Activity.class, String.class, String.class);
            this.zzebg.put(str, declaredMethod);
            return declaredMethod;
        } catch (Exception unused) {
            zzh(str, false);
            return null;
        }
    }

    private final ExecutorService zzxc() {
        if (this.zzeay.get() == null) {
            zzaba<Integer> zzaba = zzabp.zzcoj;
            this.zzeay.compareAndSet(null, new ThreadPoolExecutor(((Integer) zzwr.zzqr().zzd(zzaba)).intValue(), ((Integer) zzwr.zzqr().zzd(zzaba)).intValue(), 1, TimeUnit.MINUTES, new LinkedBlockingQueue(), zzxd()));
        }
        return this.zzeay.get();
    }

    private final ThreadFactory zzxd() {
        return new zzaxt(this);
    }

    private static boolean zzz(Context context) {
        if (!((Boolean) zzwr.zzqr().zzd(zzabp.zzcok)).booleanValue()) {
            return false;
        }
        if (DynamiteModule.a(context, ModuleDescriptor.MODULE_ID) < ((Integer) zzwr.zzqr().zzd(zzabp.zzcol)).intValue()) {
            return false;
        }
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcom)).booleanValue()) {
            try {
                context.getClassLoader().loadClass("com.google.firebase.analytics.FirebaseAnalytics");
                return false;
            } catch (ClassNotFoundException unused) {
            }
        }
        return true;
    }

    public final void setConsent(Bundle bundle) {
        zza("setConsent", new zzaxf(bundle));
    }

    public final void zza(Context context, zzaao zzaao) {
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcop)).booleanValue() && zzy(context) && zzz(context)) {
            synchronized (this.zzebj) {
            }
        }
    }

    public final String zzaa(Context context) {
        if (!zzy(context)) {
            return "";
        }
        if (zzz(context)) {
            return (String) zza("getCurrentScreenNameOrScreenClass", "", zzaxn.zzebl);
        }
        if (!zza(context, "com.google.android.gms.measurement.AppMeasurement", this.zzebe, true)) {
            return "";
        }
        try {
            String str = (String) zzl(context, "getCurrentScreenName").invoke(this.zzebe.get(), new Object[0]);
            if (str == null) {
                str = (String) zzl(context, "getCurrentScreenClass").invoke(this.zzebe.get(), new Object[0]);
            }
            if (str != null) {
                return str;
            }
            return "";
        } catch (Exception unused) {
            zzh("getCurrentScreenName", false);
            return "";
        }
    }

    public final String zzab(Context context) {
        if (!zzy(context)) {
            return null;
        }
        synchronized (this.zzeaz) {
            String str = this.zzeba;
            if (str != null) {
                return str;
            }
            if (zzz(context)) {
                this.zzeba = (String) zza("getGmpAppId", this.zzeba, zzaxp.zzebl);
            } else {
                this.zzeba = (String) zza("getGmpAppId", context);
            }
            return this.zzeba;
        }
    }

    public final String zzac(Context context) {
        if (!zzy(context)) {
            return null;
        }
        long longValue = ((Long) zzwr.zzqr().zzd(zzabp.zzcoi)).longValue();
        if (zzz(context)) {
            if (longValue >= 0) {
                return (String) zzxc().submit(new zzaxr(this)).get(longValue, TimeUnit.MILLISECONDS);
            }
            try {
                return (String) zza("getAppInstanceId", (Object) null, zzaxo.zzebl);
            } catch (TimeoutException unused) {
                return "TIME_OUT";
            } catch (Exception unused2) {
                return null;
            }
        } else if (longValue < 0) {
            return (String) zza("getAppInstanceId", context);
        } else {
            try {
                return (String) zzxc().submit(new zzaxq(this, context)).get(longValue, TimeUnit.MILLISECONDS);
            } catch (TimeoutException unused3) {
                return "TIME_OUT";
            } catch (Exception unused4) {
                return null;
            }
        }
    }

    public final String zzad(Context context) {
        if (!zzy(context)) {
            return null;
        }
        if (zzz(context)) {
            Long l = (Long) zza("getAdEventId", (Object) null, zzaxe.zzebl);
            if (l != null) {
                return Long.toString(l.longValue());
            }
            return null;
        }
        Object zza = zza("generateEventId", context);
        if (zza != null) {
            return zza.toString();
        }
        return null;
    }

    public final String zzae(Context context) {
        if (!zzy(context)) {
            return null;
        }
        synchronized (this.zzeaz) {
            String str = this.zzebb;
            if (str != null) {
                return str;
            }
            if (zzz(context)) {
                this.zzebb = (String) zza("getAppIdOrigin", this.zzebb, zzaxh.zzebl);
            } else {
                this.zzebb = "fa";
            }
            return this.zzebb;
        }
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ String zzag(Context context) {
        return (String) zza("getAppInstanceId", context);
    }

    public final void zzd(Context context, String str) {
        if (zzy(context)) {
            if (zzz(context)) {
                zza("beginAdUnitExposure", new zzaxl(str));
            } else {
                zza(context, str, "beginAdUnitExposure");
            }
        }
    }

    public final void zze(Context context, String str) {
        if (zzy(context)) {
            if (zzz(context)) {
                zza("endAdUnitExposure", new zzaxk(str));
            } else {
                zza(context, str, "endAdUnitExposure");
            }
        }
    }

    @Deprecated
    public final void zzf(Context context, String str) {
        if (!zzy(context) || !(context instanceof Activity)) {
            return;
        }
        if (zzz(context)) {
            zza("setScreenName", new zzaxm(context, str));
        } else if (zza(context, "com.google.firebase.analytics.FirebaseAnalytics", this.zzebf, false)) {
            Method zzm = zzm(context, "setCurrentScreen");
            try {
                zzm.invoke(this.zzebf.get(), (Activity) context, str, context.getPackageName());
            } catch (Exception unused) {
                zzh("setCurrentScreen", false);
            }
        }
    }

    public final void zzg(Context context, String str) {
        zza(context, "_ac", str, (Bundle) null);
    }

    public final void zzh(Context context, String str) {
        zza(context, "_ai", str, (Bundle) null);
    }

    public final void zzi(Context context, String str) {
        zza(context, "_aq", str, (Bundle) null);
    }

    public final void zzj(Context context, String str) {
        zza(context, "_aa", str, (Bundle) null);
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ String zzxe() {
        return (String) zza("getAppInstanceId", (Object) null, zzaxi.zzebl);
    }

    public final boolean zzy(Context context) {
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcod)).booleanValue() && !this.zzebc.get()) {
            if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcon)).booleanValue()) {
                return true;
            }
            if (this.zzebd.get() == -1) {
                zzwr.zzqn();
                if (!zzaza.zzf(context, g.GOOGLE_PLAY_SERVICES_VERSION_CODE)) {
                    zzwr.zzqn();
                    if (zzaza.zzbo(context)) {
                        zzazk.zzex("Google Play Service is out of date, the Google Mobile Ads SDK will not integrate with Firebase. Admob/Firebase integration requires updated Google Play Service.");
                        this.zzebd.set(0);
                    }
                }
                this.zzebd.set(1);
            }
            if (this.zzebd.get() == 1) {
                return true;
            }
        }
        return false;
    }

    private final void zzh(String str, boolean z) {
        if (!this.zzebc.get()) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 30);
            sb.append("Invoke Firebase method ");
            sb.append(str);
            sb.append(" error.");
            zzazk.zzex(sb.toString());
            if (z) {
                zzazk.zzex("The Google Mobile Ads SDK will not integrate with Firebase. Admob/Firebase integration requires the latest Firebase SDK jar, but Firebase SDK is either missing or out of date");
                this.zzebc.set(true);
            }
        }
    }

    private final Method zzk(Context context, String str) {
        Method method = this.zzebg.get(str);
        if (method != null) {
            return method;
        }
        try {
            Method declaredMethod = context.getClassLoader().loadClass("com.google.android.gms.measurement.AppMeasurement").getDeclaredMethod(str, String.class);
            this.zzebg.put(str, declaredMethod);
            return declaredMethod;
        } catch (Exception unused) {
            zzh(str, false);
            return null;
        }
    }

    public final void zza(Context context, zzvl zzvl) {
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcop)).booleanValue() && zzy(context) && zzz(context)) {
            synchronized (this.zzebj) {
            }
        }
    }

    public final void zza(Context context, String str, String str2, String str3, int i) {
        if (zzy(context)) {
            Bundle bundle = new Bundle();
            bundle.putString("_ai", str2);
            bundle.putString("reward_type", str3);
            bundle.putInt("reward_value", i);
            zza(context, "_ar", str, bundle);
            StringBuilder sb = new StringBuilder(String.valueOf(str3).length() + 75);
            sb.append("Log a Firebase reward video event, reward type: ");
            sb.append(str3);
            sb.append(", reward value: ");
            sb.append(i);
            zzd.zzeb(sb.toString());
        }
    }

    private final void zza(Context context, String str, String str2, Bundle bundle) {
        if (zzy(context)) {
            Bundle zzk = zzk(str2, str);
            if (bundle != null) {
                zzk.putAll(bundle);
            }
            if (zzz(context)) {
                zza("logEventInternal", new zzaxg(str, zzk));
            } else if (zza(context, "com.google.android.gms.measurement.AppMeasurement", this.zzebe, true)) {
                Method zzaf = zzaf(context);
                try {
                    zzaf.invoke(this.zzebe.get(), "am", str, zzk);
                } catch (Exception unused) {
                    zzh("logEventInternal", true);
                }
            }
        }
    }

    private final void zza(Context context, String str, String str2) {
        if (zza(context, "com.google.android.gms.measurement.AppMeasurement", this.zzebe, true)) {
            Method zzk = zzk(context, str2);
            try {
                zzk.invoke(this.zzebe.get(), str);
                StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 37 + String.valueOf(str).length());
                sb.append("Invoke Firebase method ");
                sb.append(str2);
                sb.append(", Ad Unit Id: ");
                sb.append(str);
                zzd.zzeb(sb.toString());
            } catch (Exception unused) {
                zzh(str2, false);
            }
        }
    }

    private final Object zza(String str, Context context) {
        if (!zza(context, "com.google.android.gms.measurement.AppMeasurement", this.zzebe, true)) {
            return null;
        }
        try {
            return zzl(context, str).invoke(this.zzebe.get(), new Object[0]);
        } catch (Exception unused) {
            zzh(str, true);
            return null;
        }
    }

    private final boolean zza(Context context, String str, AtomicReference<Object> atomicReference, boolean z) {
        if (atomicReference.get() == null) {
            try {
                atomicReference.compareAndSet(null, context.getClassLoader().loadClass(str).getDeclaredMethod("getInstance", Context.class).invoke(null, context));
            } catch (Exception unused) {
                zzh("getInstance", z);
                return false;
            }
        }
        return true;
    }

    private final void zza(String str, zzaxv zzaxv) {
        synchronized (this.zzebh) {
            FutureTask<?> futureTask = new FutureTask<>(new zzaxj(this, zzaxv, str), null);
            if (this.zzebh.get() != null) {
                futureTask.run();
            } else {
                this.zzebi.offer(futureTask);
            }
        }
    }

    private final <T> T zza(String str, T t, zzaxs<T> zzaxs) {
        synchronized (this.zzebh) {
            if (this.zzebh.get() != null) {
                try {
                    return zzaxs.zza(this.zzebh.get());
                } catch (Exception unused) {
                    zzh(str, false);
                }
            }
            return t;
        }
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void zza(zzaxv zzaxv, String str) {
        if (this.zzebh.get() != null) {
            try {
                zzaxv.zzb(this.zzebh.get());
            } catch (Exception unused) {
                zzh(str, false);
            }
        }
    }
}
