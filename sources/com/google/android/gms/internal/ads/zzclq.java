package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzr;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class zzclq {
    private boolean enabled = true;
    private final Executor executor;
    private final zzazn zzboz;
    private final Context zzcmf;
    private final Executor zzfsj;
    private final ScheduledExecutorService zzfth;
    private boolean zzgmr = false;
    private boolean zzgms = false;
    private final long zzgmt;
    private final zzbaa<Boolean> zzgmu = new zzbaa<>();
    private final WeakReference<Context> zzgmv;
    private final zzcin zzgmw;
    private final zzcla zzgmx;
    private Map<String, zzajh> zzgmy = new ConcurrentHashMap();
    private final zzbxg zzgmz;

    public zzclq(Executor executor2, Context context, WeakReference<Context> weakReference, Executor executor3, zzcin zzcin, ScheduledExecutorService scheduledExecutorService, zzcla zzcla, zzazn zzazn, zzbxg zzbxg) {
        this.zzgmw = zzcin;
        this.zzcmf = context;
        this.zzgmv = weakReference;
        this.executor = executor3;
        this.zzfth = scheduledExecutorService;
        this.zzfsj = executor2;
        this.zzgmx = zzcla;
        this.zzboz = zzazn;
        this.zzgmz = zzbxg;
        this.zzgmt = zzr.zzky().b();
        zza("com.google.android.gms.ads.MobileAds", false, "", 0);
    }

    /* access modifiers changed from: private */
    public final void zza(String str, boolean z, String str2, int i) {
        this.zzgmy.put(str, new zzajh(str, z, i, str2));
    }

    private final synchronized zzdzw<String> zzard() {
        String zzxy = zzr.zzkv().zzxs().zzyn().zzxy();
        if (!TextUtils.isEmpty(zzxy)) {
            return zzdzk.zzag(zzxy);
        }
        zzbaa zzbaa = new zzbaa();
        zzr.zzkv().zzxs().zzb(new zzclr(this, zzbaa));
        return zzbaa;
    }

    /* access modifiers changed from: private */
    public final void zzgh(String str) {
        try {
            ArrayList arrayList = new ArrayList();
            JSONObject jSONObject = new JSONObject(str).getJSONObject("initializer_settings").getJSONObject("config");
            for (Iterator<String> keys = jSONObject.keys(); keys.hasNext(); keys = keys) {
                String next = keys.next();
                Object obj = new Object();
                zzbaa zzbaa = new zzbaa();
                zzdzw zza = zzdzk.zza(zzbaa, ((Long) zzwr.zzqr().zzd(zzabp.zzcrk)).longValue(), TimeUnit.SECONDS, this.zzfth);
                this.zzgmx.zzgf(next);
                this.zzgmz.zzft(next);
                long b = zzr.zzky().b();
                zza.addListener(new zzclt(this, obj, zzbaa, next, b), this.executor);
                arrayList.add(zza);
                zzclz zzclz = new zzclz(this, obj, next, b, zzbaa);
                JSONObject optJSONObject = jSONObject.optJSONObject(next);
                ArrayList arrayList2 = new ArrayList();
                if (optJSONObject != null) {
                    try {
                        JSONArray jSONArray = optJSONObject.getJSONArray("data");
                        for (int i = 0; i < jSONArray.length(); i++) {
                            JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                            String optString = jSONObject2.optString("format", "");
                            JSONObject optJSONObject2 = jSONObject2.optJSONObject("data");
                            Bundle bundle = new Bundle();
                            if (optJSONObject2 != null) {
                                Iterator<String> keys2 = optJSONObject2.keys();
                                while (keys2.hasNext()) {
                                    String next2 = keys2.next();
                                    bundle.putString(next2, optJSONObject2.optString(next2, ""));
                                }
                            }
                            arrayList2.add(new zzajr(optString, bundle));
                        }
                    } catch (JSONException unused) {
                    }
                }
                zza(next, false, "", 0);
                try {
                    this.zzfsj.execute(new zzclv(this, this.zzgmw.zzd(next, new JSONObject()), zzclz, arrayList2, next));
                } catch (zzdnt unused2) {
                    try {
                        zzclz.onInitializationFailed("Failed to create Adapter.");
                    } catch (RemoteException e) {
                        zzazk.zzc("", e);
                    }
                }
            }
            zzdzk.zzj(arrayList).zzb(new zzclw(this), this.executor);
        } catch (JSONException e2) {
            zzd.zza("Malformed CLD response", e2);
        }
    }

    public final void disable() {
        this.enabled = false;
    }

    public final void zzarb() {
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcri)).booleanValue() && !zzadn.zzdeg.get().booleanValue()) {
            if (this.zzboz.zzehz >= ((Integer) zzwr.zzqr().zzd(zzabp.zzcrj)).intValue() && this.enabled) {
                if (!this.zzgmr) {
                    synchronized (this) {
                        if (!this.zzgmr) {
                            this.zzgmx.zzaqy();
                            this.zzgmz.zzamm();
                            this.zzgmu.addListener(new zzcls(this), this.executor);
                            this.zzgmr = true;
                            zzdzw<String> zzard = zzard();
                            this.zzfth.schedule(new zzclu(this), ((Long) zzwr.zzqr().zzd(zzabp.zzcrl)).longValue(), TimeUnit.SECONDS);
                            zzdzk.zza(zzard, new zzclx(this), this.executor);
                            return;
                        }
                        return;
                    }
                }
                return;
            }
        }
        if (!this.zzgmr) {
            zza("com.google.android.gms.ads.MobileAds", true, "", 0);
            this.zzgmu.set(Boolean.FALSE);
            this.zzgmr = true;
        }
    }

    public final List<zzajh> zzarc() {
        ArrayList arrayList = new ArrayList();
        for (String str : this.zzgmy.keySet()) {
            zzajh zzajh = this.zzgmy.get(str);
            arrayList.add(new zzajh(str, zzajh.zzdiu, zzajh.zzdiv, zzajh.description));
        }
        return arrayList;
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ Object zzare() {
        this.zzgmu.set(Boolean.TRUE);
        return null;
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void zzarf() {
        synchronized (this) {
            if (!this.zzgms) {
                zza("com.google.android.gms.ads.MobileAds", false, "Timeout.", (int) (zzr.zzky().b() - this.zzgmt));
                this.zzgmu.setException(new Exception());
            }
        }
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void zzarg() {
        this.zzgmx.zzaqz();
        this.zzgmz.zzamn();
    }

    public final void zzb(zzajk zzajk) {
        this.zzgmu.addListener(new zzclp(this, zzajk), this.zzfsj);
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void zzc(zzajk zzajk) {
        try {
            zzajk.zze(zzarc());
        } catch (RemoteException e) {
            zzazk.zzc("", e);
        }
    }

    /* access modifiers changed from: package-private */
    /* JADX WARNING: Can't wrap try/catch for region: R(3:7|8|9) */
    /* JADX WARNING: Code restructure failed: missing block: B:10:0x0035, code lost:
        r2 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:11:0x0036, code lost:
        com.google.android.gms.internal.ads.zzazk.zzc("", r2);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:12:0x003b, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:8:?, code lost:
        r4 = new java.lang.StringBuilder(java.lang.String.valueOf(r5).length() + 74);
        r4.append("Failed to initialize adapter. ");
        r4.append(r5);
        r4.append(" does not implement the initialize() method.");
        r3.onInitializationFailed(r4.toString());
     */
    /* JADX WARNING: Code restructure failed: missing block: B:9:0x0034, code lost:
        return;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing exception handler attribute for start block: B:7:0x0011 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final /* synthetic */ void zza(com.google.android.gms.internal.ads.zzdog r2, com.google.android.gms.internal.ads.zzajj r3, java.util.List r4, java.lang.String r5) {
        /*
            r1 = this;
            java.lang.ref.WeakReference<android.content.Context> r0 = r1.zzgmv     // Catch:{ zzdnt -> 0x0011 }
            java.lang.Object r0 = r0.get()     // Catch:{ zzdnt -> 0x0011 }
            android.content.Context r0 = (android.content.Context) r0     // Catch:{ zzdnt -> 0x0011 }
            if (r0 == 0) goto L_0x000b
            goto L_0x000d
        L_0x000b:
            android.content.Context r0 = r1.zzcmf     // Catch:{ zzdnt -> 0x0011 }
        L_0x000d:
            r2.zza(r0, r3, r4)     // Catch:{ zzdnt -> 0x0011 }
            return
        L_0x0011:
            java.lang.String r2 = java.lang.String.valueOf(r5)     // Catch:{ RemoteException -> 0x0035 }
            int r2 = r2.length()     // Catch:{ RemoteException -> 0x0035 }
            int r2 = r2 + 74
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch:{ RemoteException -> 0x0035 }
            r4.<init>(r2)     // Catch:{ RemoteException -> 0x0035 }
            java.lang.String r2 = "Failed to initialize adapter. "
            r4.append(r2)     // Catch:{ RemoteException -> 0x0035 }
            r4.append(r5)     // Catch:{ RemoteException -> 0x0035 }
            java.lang.String r2 = " does not implement the initialize() method."
            r4.append(r2)     // Catch:{ RemoteException -> 0x0035 }
            java.lang.String r2 = r4.toString()     // Catch:{ RemoteException -> 0x0035 }
            r3.onInitializationFailed(r2)     // Catch:{ RemoteException -> 0x0035 }
            return
        L_0x0035:
            r2 = move-exception
            java.lang.String r3 = ""
            com.google.android.gms.internal.ads.zzazk.zzc(r3, r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzclq.zza(com.google.android.gms.internal.ads.zzdog, com.google.android.gms.internal.ads.zzajj, java.util.List, java.lang.String):void");
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void zza(Object obj, zzbaa zzbaa, String str, long j) {
        synchronized (obj) {
            if (!zzbaa.isDone()) {
                zza(str, false, "Timeout.", (int) (zzr.zzky().b() - j));
                this.zzgmx.zzs(str, "timeout");
                this.zzgmz.zzm(str, "timeout");
                zzbaa.set(Boolean.FALSE);
            }
        }
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void zza(zzbaa zzbaa) {
        this.executor.execute(new zzcly(this, zzbaa));
    }
}
