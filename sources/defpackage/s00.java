package defpackage;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;

/* access modifiers changed from: package-private */
/* renamed from: s00  reason: default package */
public class s00 implements y00 {
    private final File a;
    private final String b;
    private final String c;

    s00(String str, String str2, File file) {
        this.b = str;
        this.c = str2;
        this.a = file;
    }

    @Override // defpackage.y00
    public String a() {
        return this.c;
    }

    @Override // defpackage.y00
    public InputStream b() {
        if (this.a.exists() && this.a.isFile()) {
            try {
                return new FileInputStream(this.a);
            } catch (FileNotFoundException unused) {
            }
        }
        return null;
    }

    /* JADX WARNING: Removed duplicated region for block: B:37:0x0051  */
    /* JADX WARNING: Removed duplicated region for block: B:40:? A[RETURN, SYNTHETIC] */
    @Override // defpackage.y00
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public defpackage.i20.c.b c() {
        /*
            r7 = this;
            r0 = 8192(0x2000, float:1.14794E-41)
            byte[] r0 = new byte[r0]
            r1 = 0
            java.io.InputStream r2 = r7.b()     // Catch:{ IOException -> 0x004e }
            java.io.ByteArrayOutputStream r3 = new java.io.ByteArrayOutputStream     // Catch:{ all -> 0x0047 }
            r3.<init>()     // Catch:{ all -> 0x0047 }
            java.util.zip.GZIPOutputStream r4 = new java.util.zip.GZIPOutputStream     // Catch:{ all -> 0x0042 }
            r4.<init>(r3)     // Catch:{ all -> 0x0042 }
            if (r2 != 0) goto L_0x0021
            r4.close()     // Catch:{ all -> 0x0042 }
            r3.close()
            if (r2 == 0) goto L_0x004e
            r2.close()
            goto L_0x004e
        L_0x0021:
            int r5 = r2.read(r0)     // Catch:{ all -> 0x003d }
            if (r5 <= 0) goto L_0x002c
            r6 = 0
            r4.write(r0, r6, r5)     // Catch:{ all -> 0x003d }
            goto L_0x0021
        L_0x002c:
            r4.finish()     // Catch:{ all -> 0x003d }
            byte[] r0 = r3.toByteArray()     // Catch:{ all -> 0x003d }
            r4.close()
            r3.close()
            r2.close()
            goto L_0x004f
        L_0x003d:
            r0 = move-exception
            r4.close()     // Catch:{ all -> 0x0041 }
        L_0x0041:
            throw r0
        L_0x0042:
            r0 = move-exception
            r3.close()     // Catch:{ all -> 0x0046 }
        L_0x0046:
            throw r0
        L_0x0047:
            r0 = move-exception
            if (r2 == 0) goto L_0x004d
            r2.close()     // Catch:{ all -> 0x004d }
        L_0x004d:
            throw r0
        L_0x004e:
            r0 = r1
        L_0x004f:
            if (r0 == 0) goto L_0x0061
            i20$c$b$a r1 = defpackage.i20.c.b.a()
            r1.b(r0)
            java.lang.String r0 = r7.b
            r1.c(r0)
            i20$c$b r1 = r1.a()
        L_0x0061:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.s00.c():i20$c$b");
    }
}
