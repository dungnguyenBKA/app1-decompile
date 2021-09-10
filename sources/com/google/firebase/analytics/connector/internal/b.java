package com.google.firebase.analytics.connector.internal;

import android.os.Bundle;
import com.google.android.gms.measurement.internal.i5;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public final class b {
    private static final Set<String> a = new HashSet(Arrays.asList("_in", "_xa", "_xu", "_aq", "_aa", "_ai", "_ac", "campaign_details", "_ug", "_iapx", "_exp_set", "_exp_clear", "_exp_activate", "_exp_timeout", "_exp_expire"));
    private static final List<String> b = Arrays.asList("_e", "_f", "_iap", "_s", "_au", "_ui", "_cd");
    private static final List<String> c = Arrays.asList("auto", "app", "am");
    private static final List<String> d = Arrays.asList("_r", "_dbg");
    private static final List<String> e;
    private static final List<String> f = Arrays.asList("^_ltv_[A-Z]{3}$", "^_cc[1-5]{1}$");
    public static final /* synthetic */ int g = 0;

    static {
        String[][] strArr = {i5.a, i5.b};
        int i = 0;
        for (int i2 = 0; i2 < 2; i2++) {
            i += strArr[i2].length;
        }
        Object[] copyOf = Arrays.copyOf(strArr[0], i);
        int length = strArr[0].length;
        for (int i3 = 1; i3 < 2; i3++) {
            String[] strArr2 = strArr[i3];
            System.arraycopy(strArr2, 0, copyOf, length, strArr2.length);
            length += strArr2.length;
        }
        e = Arrays.asList((String[]) copyOf);
    }

    public static boolean a(String str) {
        return !c.contains(str);
    }

    public static boolean b(String str, Bundle bundle) {
        if (b.contains(str)) {
            return false;
        }
        if (bundle == null) {
            return true;
        }
        for (String str2 : d) {
            if (bundle.containsKey(str2)) {
                return false;
            }
        }
        return true;
    }

    public static boolean c(String str) {
        return !a.contains(str);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:45:0x008b, code lost:
        if (r1.equals("fiam") == false) goto L_0x00bf;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:56:0x00bc, code lost:
        if (r1.equals("frc") == false) goto L_0x00bf;
     */
    /* JADX WARNING: Removed duplicated region for block: B:26:0x004d A[Catch:{ IOException | ClassNotFoundException -> 0x0056 }] */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x0052 A[Catch:{ IOException | ClassNotFoundException -> 0x0056 }] */
    /* JADX WARNING: Removed duplicated region for block: B:60:0x00c4 A[RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:61:0x00c5  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static boolean d(defpackage.vy.c r7) {
        /*
        // Method dump skipped, instructions count: 273
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.analytics.connector.internal.b.d(vy$c):boolean");
    }

    /* JADX WARNING: Removed duplicated region for block: B:32:0x0066  */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x0077  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static boolean e(java.lang.String r4, java.lang.String r5, android.os.Bundle r6) {
        /*
        // Method dump skipped, instructions count: 125
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.analytics.connector.internal.b.e(java.lang.String, java.lang.String, android.os.Bundle):boolean");
    }
}
