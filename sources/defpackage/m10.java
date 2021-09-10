package defpackage;

import java.io.File;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.Locale;
import org.apache.http.protocol.HTTP;

/* access modifiers changed from: package-private */
/* renamed from: m10  reason: default package */
public class m10 implements i10 {
    private static final Charset d = Charset.forName(HTTP.UTF_8);
    private final File a;
    private final int b;
    private k10 c;

    /* access modifiers changed from: private */
    /* renamed from: m10$a */
    public static class a {
        public final byte[] a;
        public final int b;

        a(byte[] bArr, int i) {
            this.a = bArr;
            this.b = i;
        }
    }

    m10(File file, int i) {
        this.a = file;
        this.b = i;
    }

    private void f() {
        if (this.c == null) {
            try {
                this.c = new k10(this.a);
            } catch (IOException e) {
                az f = az.f();
                StringBuilder q = ic.q("Could not open log file: ");
                q.append(this.a);
                f.e(q.toString(), e);
            }
        }
    }

    @Override // defpackage.i10
    public void a() {
        sz.a(this.c, "There was a problem closing the Crashlytics log file.");
        this.c = null;
    }

    @Override // defpackage.i10
    public String b() {
        byte[] c2 = c();
        if (c2 != null) {
            return new String(c2, d);
        }
        return null;
    }

    /* JADX WARNING: Removed duplicated region for block: B:12:0x003d A[RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:13:0x003e  */
    @Override // defpackage.i10
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public byte[] c() {
        /*
            r7 = this;
            java.io.File r0 = r7.a
            boolean r0 = r0.exists()
            r1 = 0
            r2 = 0
            if (r0 != 0) goto L_0x000c
        L_0x000a:
            r4 = r1
            goto L_0x003b
        L_0x000c:
            r7.f()
            k10 r0 = r7.c
            if (r0 != 0) goto L_0x0014
            goto L_0x000a
        L_0x0014:
            r3 = 1
            int[] r3 = new int[r3]
            r3[r2] = r2
            int r0 = r0.p0()
            byte[] r0 = new byte[r0]
            k10 r4 = r7.c     // Catch:{ IOException -> 0x002a }
            l10 r5 = new l10     // Catch:{ IOException -> 0x002a }
            r5.<init>(r7, r0, r3)     // Catch:{ IOException -> 0x002a }
            r4.i0(r5)     // Catch:{ IOException -> 0x002a }
            goto L_0x0034
        L_0x002a:
            r4 = move-exception
            az r5 = defpackage.az.f()
            java.lang.String r6 = "A problem occurred while reading the Crashlytics log file."
            r5.e(r6, r4)
        L_0x0034:
            m10$a r4 = new m10$a
            r3 = r3[r2]
            r4.<init>(r0, r3)
        L_0x003b:
            if (r4 != 0) goto L_0x003e
            return r1
        L_0x003e:
            int r0 = r4.b
            byte[] r1 = new byte[r0]
            byte[] r3 = r4.a
            java.lang.System.arraycopy(r3, r2, r1, r2, r0)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.m10.c():byte[]");
    }

    @Override // defpackage.i10
    public void d() {
        sz.a(this.c, "There was a problem closing the Crashlytics log file.");
        this.c = null;
        this.a.delete();
    }

    @Override // defpackage.i10
    public void e(long j, String str) {
        f();
        if (this.c != null) {
            if (str == null) {
                str = "null";
            }
            try {
                int i = this.b / 4;
                if (str.length() > i) {
                    str = "..." + str.substring(str.length() - i);
                }
                this.c.S(String.format(Locale.US, "%d %s%n", Long.valueOf(j), str.replaceAll("\r", " ").replaceAll("\n", " ")).getBytes(d));
                while (!this.c.j0() && this.c.p0() > this.b) {
                    this.c.m0();
                }
            } catch (IOException e) {
                az.f().e("There was a problem writing to the Crashlytics log.", e);
            }
        }
    }
}
