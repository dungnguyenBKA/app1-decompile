package defpackage;

import android.content.Context;
import androidx.core.app.b;
import com.camerasideas.collagemaker.filter.a;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;

/* renamed from: sq  reason: default package */
public class sq {
    public static final List<String> a = Arrays.asList("gc1000", "powervr sgx 544mp");

    /* JADX WARNING: Code restructure failed: missing block: B:49:0x00ae, code lost:
        if (r6 != null) goto L_0x00b0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:50:0x00b0, code lost:
        r6.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:65:0x00d6, code lost:
        if (r6 != null) goto L_0x00b0;
     */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x0095 A[SYNTHETIC, Splitter:B:37:0x0095] */
    /* JADX WARNING: Removed duplicated region for block: B:44:0x00a3 A[Catch:{ IOException -> 0x0099, all -> 0x00dd }] */
    /* JADX WARNING: Removed duplicated region for block: B:47:0x00ab A[SYNTHETIC, Splitter:B:47:0x00ab] */
    /* JADX WARNING: Removed duplicated region for block: B:54:0x00ba A[SYNTHETIC, Splitter:B:54:0x00ba] */
    /* JADX WARNING: Removed duplicated region for block: B:60:0x00c8  */
    /* JADX WARNING: Removed duplicated region for block: B:63:0x00d0  */
    /* JADX WARNING: Removed duplicated region for block: B:70:0x00e1 A[SYNTHETIC, Splitter:B:70:0x00e1] */
    /* JADX WARNING: Removed duplicated region for block: B:75:0x00e9 A[Catch:{ IOException -> 0x00e5 }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static java.lang.String a(java.lang.String r6, java.io.File r7) {
        /*
        // Method dump skipped, instructions count: 243
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.sq.a(java.lang.String, java.io.File):java.lang.String");
    }

    public static boolean b(Context context) {
        String string = context.getSharedPreferences("cloudsetting", 0).getString("imageFilterBlackList", null);
        if (string == null || string.equals("")) {
            return c2.s(a.b);
        }
        try {
            if (c2.t((HashSet) b.u(string))) {
                em.h("FilterUtils", "In BlackList");
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public static boolean c(Context context) {
        String string = context.getSharedPreferences("cloudsetting", 0).getString("imageFilterWhiteList", null);
        if (string == null || string.equals("")) {
            return c2.s(a.a);
        }
        try {
            if (c2.t((HashSet) b.u(string))) {
                em.h("FilterUtils", "In WhiteList");
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    /* JADX WARNING: Removed duplicated region for block: B:25:0x00a7  */
    /* JADX WARNING: Removed duplicated region for block: B:30:0x00b2  */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x00b5 A[SYNTHETIC, Splitter:B:32:0x00b5] */
    /* JADX WARNING: Removed duplicated region for block: B:44:0x00cf A[Catch:{ Exception -> 0x0157 }] */
    /* JADX WARNING: Removed duplicated region for block: B:64:0x014b A[SYNTHETIC, Splitter:B:64:0x014b] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    static void d(org.json.JSONArray r19, android.content.Context r20) {
        /*
        // Method dump skipped, instructions count: 376
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.sq.d(org.json.JSONArray, android.content.Context):void");
    }
}
