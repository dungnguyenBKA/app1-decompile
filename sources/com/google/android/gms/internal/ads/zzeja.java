package com.google.android.gms.internal.ads;

import java.io.PrintWriter;

public final class zzeja {
    private static final zzeiz zzild;
    private static final int zzile;

    static final class zza extends zzeiz {
        zza() {
        }

        @Override // com.google.android.gms.internal.ads.zzeiz
        public final void zza(Throwable th, PrintWriter printWriter) {
            th.printStackTrace(printWriter);
        }

        @Override // com.google.android.gms.internal.ads.zzeiz
        public final void zza(Throwable th, Throwable th2) {
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:18:0x0064  */
    static {
        /*
        // Method dump skipped, instructions count: 107
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzeja.<clinit>():void");
    }

    public static void zza(Throwable th, Throwable th2) {
        zzild.zza(th, th2);
    }

    private static Integer zzbfx() {
        try {
            return (Integer) Class.forName("android.os.Build$VERSION").getField("SDK_INT").get(null);
        } catch (Exception e) {
            System.err.println("Failed to retrieve value from android.os.Build$VERSION.SDK_INT due to the following exception.");
            e.printStackTrace(System.err);
            return null;
        }
    }

    public static void zza(Throwable th, PrintWriter printWriter) {
        zzild.zza(th, printWriter);
    }
}
