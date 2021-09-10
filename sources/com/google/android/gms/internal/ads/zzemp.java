package com.google.android.gms.internal.ads;

import java.util.List;
import java.util.Map;

/* access modifiers changed from: package-private */
public final class zzemp {
    static String zza(zzemo zzemo, String str) {
        StringBuilder r = ic.r("# ", str);
        zza(zzemo, r, 0);
        return r.toString();
    }

    private static final String zzib(String str) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (Character.isUpperCase(charAt)) {
                sb.append("_");
            }
            sb.append(Character.toLowerCase(charAt));
        }
        return sb.toString();
    }

    /* JADX WARNING: Code restructure failed: missing block: B:81:0x01e5, code lost:
        if (((java.lang.Boolean) r6).booleanValue() == false) goto L_0x01e7;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:87:0x01f8, code lost:
        if (((java.lang.Integer) r6).intValue() == 0) goto L_0x01e7;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:91:0x0209, code lost:
        if (((java.lang.Float) r6).floatValue() == 0.0f) goto L_0x01e7;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:95:0x021b, code lost:
        if (((java.lang.Double) r6).doubleValue() == 0.0d) goto L_0x01e7;
     */
    /* JADX WARNING: Removed duplicated region for block: B:111:0x0253  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static void zza(com.google.android.gms.internal.ads.zzemo r13, java.lang.StringBuilder r14, int r15) {
        /*
        // Method dump skipped, instructions count: 668
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzemp.zza(com.google.android.gms.internal.ads.zzemo, java.lang.StringBuilder, int):void");
    }

    static final void zza(StringBuilder sb, int i, String str, Object obj) {
        if (obj instanceof List) {
            for (Object obj2 : (List) obj) {
                zza(sb, i, str, obj2);
            }
        } else if (obj instanceof Map) {
            for (Map.Entry entry : ((Map) obj).entrySet()) {
                zza(sb, i, str, entry);
            }
        } else {
            sb.append('\n');
            int i2 = 0;
            for (int i3 = 0; i3 < i; i3++) {
                sb.append(' ');
            }
            sb.append(str);
            if (obj instanceof String) {
                sb.append(": \"");
                sb.append(zzenx.zzan(zzejr.zzhy((String) obj)));
                sb.append('\"');
            } else if (obj instanceof zzejr) {
                sb.append(": \"");
                sb.append(zzenx.zzan((zzejr) obj));
                sb.append('\"');
            } else if (obj instanceof zzelb) {
                sb.append(" {");
                zza((zzelb) obj, sb, i + 2);
                sb.append("\n");
                while (i2 < i) {
                    sb.append(' ');
                    i2++;
                }
                sb.append("}");
            } else if (obj instanceof Map.Entry) {
                sb.append(" {");
                Map.Entry entry2 = (Map.Entry) obj;
                int i4 = i + 2;
                zza(sb, i4, "key", entry2.getKey());
                zza(sb, i4, "value", entry2.getValue());
                sb.append("\n");
                while (i2 < i) {
                    sb.append(' ');
                    i2++;
                }
                sb.append("}");
            } else {
                sb.append(": ");
                sb.append(obj.toString());
            }
        }
    }
}
