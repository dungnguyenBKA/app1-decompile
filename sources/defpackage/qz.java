package defpackage;

import java.io.ByteArrayInputStream;
import java.io.InputStream;

/* access modifiers changed from: package-private */
/* renamed from: qz  reason: default package */
public class qz implements y00 {
    private final byte[] a;

    qz(String str, String str2, byte[] bArr) {
        this.a = bArr;
    }

    @Override // defpackage.y00
    public String a() {
        return "logs";
    }

    @Override // defpackage.y00
    public InputStream b() {
        byte[] bArr = this.a;
        if (bArr == null || bArr.length == 0) {
            return null;
        }
        return new ByteArrayInputStream(this.a);
    }

    /* JADX WARNING: Removed duplicated region for block: B:28:0x003a  */
    /* JADX WARNING: Removed duplicated region for block: B:30:? A[RETURN, SYNTHETIC] */
    @Override // defpackage.y00
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public defpackage.i20.c.b c() {
        /*
            r4 = this;
            byte[] r0 = r4.a
            if (r0 == 0) goto L_0x000a
            int r0 = r0.length
            if (r0 != 0) goto L_0x0008
            goto L_0x000a
        L_0x0008:
            r0 = 0
            goto L_0x000b
        L_0x000a:
            r0 = 1
        L_0x000b:
            r1 = 0
            if (r0 == 0) goto L_0x000f
            goto L_0x0036
        L_0x000f:
            java.io.ByteArrayOutputStream r0 = new java.io.ByteArrayOutputStream     // Catch:{ IOException -> 0x0036 }
            r0.<init>()     // Catch:{ IOException -> 0x0036 }
            java.util.zip.GZIPOutputStream r2 = new java.util.zip.GZIPOutputStream     // Catch:{ all -> 0x0031 }
            r2.<init>(r0)     // Catch:{ all -> 0x0031 }
            byte[] r3 = r4.a     // Catch:{ all -> 0x002c }
            r2.write(r3)     // Catch:{ all -> 0x002c }
            r2.finish()     // Catch:{ all -> 0x002c }
            byte[] r3 = r0.toByteArray()     // Catch:{ all -> 0x002c }
            r2.close()
            r0.close()
            goto L_0x0037
        L_0x002c:
            r3 = move-exception
            r2.close()     // Catch:{ all -> 0x0030 }
        L_0x0030:
            throw r3
        L_0x0031:
            r2 = move-exception
            r0.close()     // Catch:{ all -> 0x0035 }
        L_0x0035:
            throw r2
        L_0x0036:
            r3 = r1
        L_0x0037:
            if (r3 != 0) goto L_0x003a
            goto L_0x004a
        L_0x003a:
            i20$c$b$a r0 = defpackage.i20.c.b.a()
            r0.b(r3)
            java.lang.String r1 = "logs_file"
            r0.c(r1)
            i20$c$b r1 = r0.a()
        L_0x004a:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.qz.c():i20$c$b");
    }
}
