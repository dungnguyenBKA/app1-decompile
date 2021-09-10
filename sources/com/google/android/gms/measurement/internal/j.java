package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.content.res.Resources;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import androidx.core.app.b;
import java.io.File;
import java.util.Objects;

public final class j {
    static u9 a;

    /* JADX INFO: finally extract failed */
    /* JADX WARNING: Code restructure failed: missing block: B:8:0x0027, code lost:
        if (r0 == false) goto L_0x003f;
     */
    /* JADX WARNING: Removed duplicated region for block: B:16:0x003c  */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x007f  */
    /* JADX WARNING: Removed duplicated region for block: B:30:0x00ba A[LOOP:1: B:30:0x00ba->B:35:0x00cc, LOOP_START, PHI: r13 
      PHI: (r13v1 int) = (r13v0 int), (r13v2 int) binds: [B:29:0x00b8, B:35:0x00cc] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARNING: Removed duplicated region for block: B:38:0x00d5  */
    /* JADX WARNING: Removed duplicated region for block: B:48:0x00f9  */
    /* JADX WARNING: Removed duplicated region for block: B:58:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    static void a(com.google.android.gms.measurement.internal.i3 r14, android.database.sqlite.SQLiteDatabase r15, java.lang.String r16, java.lang.String r17, java.lang.String r18, java.lang.String[] r19) {
        /*
        // Method dump skipped, instructions count: 263
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.j.a(com.google.android.gms.measurement.internal.i3, android.database.sqlite.SQLiteDatabase, java.lang.String, java.lang.String, java.lang.String, java.lang.String[]):void");
    }

    public static String b(Context context, String str, String str2) {
        Objects.requireNonNull(context, "null reference");
        Resources resources = context.getResources();
        if (TextUtils.isEmpty(str2)) {
            str2 = b.S0(context);
        }
        return b.V0("google_app_id", resources, str2);
    }

    static void c(i3 i3Var, SQLiteDatabase sQLiteDatabase) {
        if (i3Var != null) {
            File file = new File(sQLiteDatabase.getPath());
            if (!file.setReadable(false, false)) {
                i3Var.q().a("Failed to turn off database read permission");
            }
            if (!file.setWritable(false, false)) {
                i3Var.q().a("Failed to turn off database write permission");
            }
            if (!file.setReadable(true, true)) {
                i3Var.q().a("Failed to turn on database read permission for owner");
            }
            if (!file.setWritable(true, true)) {
                i3Var.q().a("Failed to turn on database write permission for owner");
                return;
            }
            return;
        }
        throw new IllegalArgumentException("Monitor must not be null");
    }

    public static String d(String str, String[] strArr, String[] strArr2) {
        int min = Math.min(strArr.length, strArr2.length);
        for (int i = 0; i < min; i++) {
            String str2 = strArr[i];
            if ((str == null && str2 == null) || (str != null && str.equals(str2))) {
                return strArr2[i];
            }
        }
        return null;
    }
}
