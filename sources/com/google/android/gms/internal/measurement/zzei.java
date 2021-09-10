package com.google.android.gms.internal.measurement;

import android.net.Uri;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.regex.Pattern;

public final class zzei {
    public static final Uri zza = Uri.parse("content://com.google.android.gsf.gservices");
    public static final Uri zzb = Uri.parse("content://com.google.android.gsf.gservices/prefix");
    public static final Pattern zzc = Pattern.compile("^(1|true|t|on|yes|y)$", 2);
    public static final Pattern zzd = Pattern.compile("^(0|false|f|off|no|n)$", 2);
    static HashMap<String, String> zze;
    static final HashMap<String, Boolean> zzf = new HashMap<>();
    static final HashMap<String, Integer> zzg = new HashMap<>();
    static final HashMap<String, Long> zzh = new HashMap<>();
    static final HashMap<String, Float> zzi = new HashMap<>();
    static final String[] zzj = new String[0];
    private static final AtomicBoolean zzk = new AtomicBoolean();
    private static Object zzl;
    private static boolean zzm;

    /* JADX WARNING: Code restructure failed: missing block: B:19:0x0070, code lost:
        r11 = r11.query(com.google.android.gms.internal.measurement.zzei.zza, null, null, new java.lang.String[]{r12}, null);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:20:0x007e, code lost:
        if (r11 != null) goto L_0x0081;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:21:0x0080, code lost:
        return null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:24:0x0085, code lost:
        if (r11.moveToFirst() != false) goto L_0x008e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:25:0x0087, code lost:
        zzc(r0, r12, null);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:27:0x008d, code lost:
        return null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:28:0x008e, code lost:
        r13 = r11.getString(1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:29:0x0092, code lost:
        if (r13 == null) goto L_0x009b;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:31:0x0098, code lost:
        if (r13.equals(null) == false) goto L_0x009b;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:32:0x009a, code lost:
        r13 = null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:33:0x009b, code lost:
        zzc(r0, r12, r13);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:34:0x009e, code lost:
        if (r13 != null) goto L_0x00a1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:35:0x00a1, code lost:
        r3 = r13;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:36:0x00a2, code lost:
        r11.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:37:0x00a5, code lost:
        return r3;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:38:0x00a6, code lost:
        r12 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:39:0x00a7, code lost:
        r11.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:40:0x00aa, code lost:
        throw r12;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.lang.String zza(android.content.ContentResolver r11, java.lang.String r12, java.lang.String r13) {
        /*
        // Method dump skipped, instructions count: 174
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzei.zza(android.content.ContentResolver, java.lang.String, java.lang.String):java.lang.String");
    }

    private static void zzc(Object obj, String str, String str2) {
        synchronized (zzei.class) {
            if (obj == zzl) {
                zze.put(str, str2);
            }
        }
    }
}
