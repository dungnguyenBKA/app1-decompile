package defpackage;

import com.bumptech.glide.load.d;
import java.io.InputStream;

/* renamed from: fg  reason: default package */
public class fg implements d<InputStream> {
    private final oe a;

    public fg(oe oeVar) {
        this.a = oeVar;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, java.io.File, com.bumptech.glide.load.i] */
    /* JADX WARNING: Removed duplicated region for block: B:20:0x0036  */
    /* JADX WARNING: Removed duplicated region for block: B:26:0x0042 A[SYNTHETIC, Splitter:B:26:0x0042] */
    @Override // com.bumptech.glide.load.d
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean a(java.io.InputStream r4, java.io.File r5, com.bumptech.glide.load.i r6) {
        /*
            r3 = this;
            java.io.InputStream r4 = (java.io.InputStream) r4
            oe r6 = r3.a
            java.lang.Class<byte[]> r0 = byte[].class
            r1 = 65536(0x10000, float:9.18355E-41)
            java.lang.Object r6 = r6.e(r1, r0)
            byte[] r6 = (byte[]) r6
            r0 = 0
            r1 = 0
            java.io.FileOutputStream r2 = new java.io.FileOutputStream     // Catch:{ IOException -> 0x002e }
            r2.<init>(r5)     // Catch:{ IOException -> 0x002e }
        L_0x0015:
            int r5 = r4.read(r6)     // Catch:{ IOException -> 0x002a, all -> 0x0028 }
            r1 = -1
            if (r5 == r1) goto L_0x0020
            r2.write(r6, r0, r5)     // Catch:{ IOException -> 0x002a, all -> 0x0028 }
            goto L_0x0015
        L_0x0020:
            r2.close()     // Catch:{ IOException -> 0x002a, all -> 0x0028 }
            r0 = 1
            r2.close()     // Catch:{ IOException -> 0x0039 }
            goto L_0x0039
        L_0x0028:
            r4 = move-exception
            goto L_0x0040
        L_0x002a:
            r1 = r2
            goto L_0x002e
        L_0x002c:
            r4 = move-exception
            goto L_0x003f
        L_0x002e:
            java.lang.String r4 = "StreamEncoder"
            r5 = 3
            android.util.Log.isLoggable(r4, r5)     // Catch:{ all -> 0x002c }
            if (r1 == 0) goto L_0x0039
            r1.close()
        L_0x0039:
            oe r4 = r3.a
            r4.d(r6)
            return r0
        L_0x003f:
            r2 = r1
        L_0x0040:
            if (r2 == 0) goto L_0x0045
            r2.close()     // Catch:{ IOException -> 0x0045 }
        L_0x0045:
            oe r5 = r3.a
            r5.d(r6)
            goto L_0x004c
        L_0x004b:
            throw r4
        L_0x004c:
            goto L_0x004b
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.fg.a(java.lang.Object, java.io.File, com.bumptech.glide.load.i):boolean");
    }
}
