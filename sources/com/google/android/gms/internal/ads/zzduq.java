package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.util.Base64;
import android.view.MotionEvent;
import android.view.View;
import com.facebook.ads.AdError;
import com.google.android.gms.internal.ads.zzcf;
import com.vungle.warren.ui.JavascriptBridge;
import java.util.HashMap;
import java.util.Map;

/* access modifiers changed from: package-private */
public final class zzduq implements zzdte {
    private final Object zzhuh;
    private final zzdup zzhui;
    private final zzdvb zzhuj;
    private final zzdsy zzvs;

    zzduq(Object obj, zzdup zzdup, zzdvb zzdvb, zzdsy zzdsy) {
        this.zzhuh = obj;
        this.zzhui = zzdup;
        this.zzhuj = zzdvb;
        this.zzvs = zzdsy;
    }

    private final synchronized byte[] zzc(Map<String, String> map, Map<String, Object> map2) {
        long currentTimeMillis = System.currentTimeMillis();
        try {
        } catch (Exception e) {
            this.zzvs.zza(2007, System.currentTimeMillis() - currentTimeMillis, e);
            return null;
        }
        return (byte[]) this.zzhuh.getClass().getDeclaredMethod("xss", Map.class, Map.class).invoke(this.zzhuh, null, map2);
    }

    private static String zzj(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        return Base64.encodeToString(((zzcf.zzf) ((zzelb) zzcf.zzf.zzbl().zza(zzcm.DG).zzi(zzejr.zzt(bArr)).zzbiw())).toByteArray(), 11);
    }

    public final synchronized void close() {
        try {
            long currentTimeMillis = System.currentTimeMillis();
            this.zzhuh.getClass().getDeclaredMethod(JavascriptBridge.MraidHandler.CLOSE_ACTION, new Class[0]).invoke(this.zzhuh, new Object[0]);
            this.zzvs.zzh(AdError.MEDIATION_ERROR_CODE, System.currentTimeMillis() - currentTimeMillis);
        } catch (Exception e) {
            throw new zzduz((int) AdError.INTERNAL_ERROR_2003, e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdte
    public final synchronized String zza(Context context, String str, String str2, View view, Activity activity) {
        Map<String, Object> zzce;
        zzce = this.zzhuj.zzce();
        zzce.put("f", "c");
        zzce.put("ctx", context);
        zzce.put("cs", str2);
        zzce.put("aid", null);
        zzce.put("view", view);
        zzce.put("act", activity);
        return zzj(zzc(null, zzce));
    }

    /* access modifiers changed from: package-private */
    public final zzdup zzayo() {
        return this.zzhui;
    }

    /* access modifiers changed from: package-private */
    public final synchronized boolean zzayp() {
        try {
        } catch (Exception e) {
            throw new zzduz((int) AdError.INTERNAL_ERROR_CODE, e);
        }
        return ((Boolean) this.zzhuh.getClass().getDeclaredMethod("init", new Class[0]).invoke(this.zzhuh, new Object[0])).booleanValue();
    }

    public final synchronized int zzayq() {
        try {
        } catch (Exception e) {
            throw new zzduz((int) AdError.INTERNAL_ERROR_2006, e);
        }
        return ((Integer) this.zzhuh.getClass().getDeclaredMethod("lcs", new Class[0]).invoke(this.zzhuh, new Object[0])).intValue();
    }

    @Override // com.google.android.gms.internal.ads.zzdte
    public final synchronized String zzb(Context context, String str, View view, Activity activity) {
        Map<String, Object> zzcd;
        zzcd = this.zzhuj.zzcd();
        zzcd.put("f", "v");
        zzcd.put("ctx", context);
        zzcd.put("aid", null);
        zzcd.put("view", view);
        zzcd.put("act", activity);
        return zzj(zzc(null, zzcd));
    }

    @Override // com.google.android.gms.internal.ads.zzdte
    public final synchronized String zzs(Context context, String str) {
        Map<String, Object> zzcc;
        zzcc = this.zzhuj.zzcc();
        zzcc.put("f", "q");
        zzcc.put("ctx", context);
        zzcc.put("aid", null);
        return zzj(zzc(null, zzcc));
    }

    @Override // com.google.android.gms.internal.ads.zzdte
    public final synchronized void zza(String str, MotionEvent motionEvent) {
        try {
            long currentTimeMillis = System.currentTimeMillis();
            HashMap hashMap = new HashMap();
            hashMap.put("aid", null);
            hashMap.put("evt", motionEvent);
            this.zzhuh.getClass().getDeclaredMethod("he", Map.class).invoke(this.zzhuh, hashMap);
            this.zzvs.zzh(3003, System.currentTimeMillis() - currentTimeMillis);
        } catch (Exception e) {
            throw new zzduz(2005, e);
        }
    }
}
