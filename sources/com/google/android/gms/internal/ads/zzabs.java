package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Environment;
import android.text.TextUtils;
import java.io.File;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.annotation.ParametersAreNonnullByDefault;

@ParametersAreNonnullByDefault
@Deprecated
public final class zzabs {
    private Context context;
    private File file;
    private String zzbrp;
    private BlockingQueue<zzacc> zzdaq = new ArrayBlockingQueue(100);
    private LinkedHashMap<String, String> zzdar = new LinkedHashMap<>();
    private Map<String, zzabw> zzdas = new HashMap();
    private String zzdat;
    private final HashSet<String> zzdau = new HashSet<>(Arrays.asList("noop", "activeViewPingSent", "viewabilityChanged", "visibilityChanged"));
    private AtomicBoolean zzdav;

    public final void zza(Context context2, String str, String str2, Map<String, String> map) {
        File externalStorageDirectory;
        this.context = context2;
        this.zzbrp = str;
        this.zzdat = str2;
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        this.zzdav = atomicBoolean;
        atomicBoolean.set(zzade.zzddf.get().booleanValue());
        if (this.zzdav.get() && (externalStorageDirectory = Environment.getExternalStorageDirectory()) != null) {
            this.file = new File(externalStorageDirectory, "sdk_csi_data.txt");
        }
        for (Map.Entry<String, String> entry : map.entrySet()) {
            this.zzdar.put(entry.getKey(), entry.getValue());
        }
        zzazp.zzeic.execute(new zzabv(this));
        Map<String, zzabw> map2 = this.zzdas;
        zzabw zzabw = zzabw.zzdaz;
        map2.put("action", zzabw);
        this.zzdas.put("ad_format", zzabw);
        this.zzdas.put("e", zzabw.zzdba);
    }

    public final zzabw zzcq(String str) {
        zzabw zzabw = this.zzdas.get(str);
        if (zzabw != null) {
            return zzabw;
        }
        return zzabw.zzday;
    }

    public final void zzcr(String str) {
        if (!this.zzdau.contains(str)) {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            linkedHashMap.put("sdkVersion", this.zzbrp);
            linkedHashMap.put("ue", str);
            zza(zza(this.zzdar, linkedHashMap), (zzacf) null);
        }
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void zzsi() {
        while (true) {
            try {
                zzacc take = this.zzdaq.take();
                zzacf zzsn = take.zzsn();
                if (zzsn != null && !TextUtils.isEmpty(zzsn.zzsr())) {
                    zza(zza(this.zzdar, take.zzso()), zzsn);
                }
            } catch (InterruptedException e) {
                zzazk.zzd("CsiReporter:reporter interrupted", e);
                return;
            }
        }
    }

    public final boolean zza(zzacc zzacc) {
        return this.zzdaq.offer(zzacc);
    }

    /* JADX WARNING: Removed duplicated region for block: B:38:0x00a8 A[SYNTHETIC, Splitter:B:38:0x00a8] */
    /* JADX WARNING: Removed duplicated region for block: B:43:0x00b3 A[SYNTHETIC, Splitter:B:43:0x00b3] */
    /* JADX WARNING: Removed duplicated region for block: B:54:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final void zza(java.util.Map<java.lang.String, java.lang.String> r5, com.google.android.gms.internal.ads.zzacf r6) {
        /*
        // Method dump skipped, instructions count: 205
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzabs.zza(java.util.Map, com.google.android.gms.internal.ads.zzacf):void");
    }

    /* access modifiers changed from: package-private */
    public final Map<String, String> zza(Map<String, String> map, Map<String, String> map2) {
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        if (map2 == null) {
            return linkedHashMap;
        }
        for (Map.Entry<String, String> entry : map2.entrySet()) {
            String key = entry.getKey();
            String str = (String) linkedHashMap.get(key);
            linkedHashMap.put(key, zzcq(key).zzf(str, entry.getValue()));
        }
        return linkedHashMap;
    }
}
