package com.google.android.gms.ads.internal.util;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.zzabp;
import com.google.android.gms.internal.ads.zzazk;
import com.google.android.gms.internal.ads.zzdzw;
import com.google.android.gms.internal.ads.zzwr;
import java.util.HashMap;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import javax.annotation.concurrent.GuardedBy;

public final class zzam {
    private final Object a = new Object();
    @GuardedBy("lock")
    private String b = "";
    @GuardedBy("lock")
    private String c = "";
    @GuardedBy("lock")
    private boolean d = false;
    private String e = "";

    private final void a(Context context, String str, boolean z, boolean z2) {
        if (!(context instanceof Activity)) {
            zzazk.zzew("Can not create dialog without Activity Context");
        } else {
            zzj.zzeen.post(new h(context, str, z, z2));
        }
    }

    private final void b(Context context, String str, String str2, String str3) {
        Uri.Builder buildUpon = c(context, (String) zzwr.zzqr().zzd(zzabp.zzcuz), str3, str).buildUpon();
        buildUpon.appendQueryParameter("debugData", str2);
        zzr.zzkr();
        zzj.zzb(context, str, buildUpon.build().toString());
    }

    private final Uri c(Context context, String str, String str2, String str3) {
        String str4;
        Uri.Builder buildUpon = Uri.parse(str).buildUpon();
        synchronized (this.a) {
            if (TextUtils.isEmpty(this.b)) {
                zzr.zzkr();
                String zzr = zzj.zzr(context, "debug_signals_id.txt");
                this.b = zzr;
                if (TextUtils.isEmpty(zzr)) {
                    zzr.zzkr();
                    this.b = zzj.zzyy();
                    zzr.zzkr();
                    zzj.zzc(context, "debug_signals_id.txt", this.b);
                }
            }
            str4 = this.b;
        }
        buildUpon.appendQueryParameter("linkedDeviceId", str4);
        buildUpon.appendQueryParameter("adSlotPath", str2);
        buildUpon.appendQueryParameter("afmaVersion", str3);
        return buildUpon.build();
    }

    private static String d(Context context, String str, String str2) {
        HashMap hashMap = new HashMap();
        hashMap.put("User-Agent", zzr.zzkr().zzq(context, str2));
        zzdzw<String> zzb = new zzay(context).zzb(str, hashMap);
        try {
            return zzb.get((long) ((Integer) zzwr.zzqr().zzd(zzabp.zzcva)).intValue(), TimeUnit.MILLISECONDS);
        } catch (TimeoutException e2) {
            String valueOf = String.valueOf(str);
            zzazk.zzc(valueOf.length() != 0 ? "Timeout while retriving a response from: ".concat(valueOf) : new String("Timeout while retriving a response from: "), e2);
            zzb.cancel(true);
            return null;
        } catch (InterruptedException e3) {
            String valueOf2 = String.valueOf(str);
            zzazk.zzc(valueOf2.length() != 0 ? "Interrupted while retriving a response from: ".concat(valueOf2) : new String("Interrupted while retriving a response from: "), e3);
            zzb.cancel(true);
            return null;
        } catch (Exception e4) {
            String valueOf3 = String.valueOf(str);
            zzazk.zzc(valueOf3.length() != 0 ? "Error retriving a response from: ".concat(valueOf3) : new String("Error retriving a response from: "), e4);
            return null;
        }
    }

    private final void e(Context context, String str, String str2) {
        zzr.zzkr();
        zzj.zzb(context, c(context, (String) zzwr.zzqr().zzd(zzabp.zzcuw), str, str2));
    }

    /* JADX WARNING: Removed duplicated region for block: B:19:0x0052 A[ADDED_TO_REGION] */
    /* JADX WARNING: Removed duplicated region for block: B:25:0x0069  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void zza(android.content.Context r5, java.lang.String r6, java.lang.String r7, java.lang.String r8) {
        /*
        // Method dump skipped, instructions count: 109
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.util.zzam.zza(android.content.Context, java.lang.String, java.lang.String, java.lang.String):void");
    }

    public final boolean zzb(Context context, String str, String str2, String str3) {
        if (TextUtils.isEmpty(str2) || !zzr.zzlb().zzzm()) {
            return false;
        }
        zzazk.zzdy("Sending troubleshooting signals to the server.");
        b(context, str, str2, str3);
        return true;
    }

    /* JADX WARNING: Removed duplicated region for block: B:19:0x0052  */
    /* JADX WARNING: Removed duplicated region for block: B:21:0x0058  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void zze(android.content.Context r6, java.lang.String r7, java.lang.String r8) {
        /*
        // Method dump skipped, instructions count: 149
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.util.zzam.zze(android.content.Context, java.lang.String, java.lang.String):void");
    }

    public final String zzzl() {
        String str;
        synchronized (this.a) {
            str = this.c;
        }
        return str;
    }

    public final boolean zzzm() {
        boolean z;
        synchronized (this.a) {
            z = this.d;
        }
        return z;
    }
}
