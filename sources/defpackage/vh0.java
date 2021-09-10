package defpackage;

import java.util.Date;
import javax.annotation.Nullable;
import org.apache.http.HttpHeaders;

/* renamed from: vh0  reason: default package */
public final class vh0 {
    @Nullable
    public final jh0 a;
    @Nullable
    public final lh0 b;

    /* renamed from: vh0$a */
    public static class a {
        final long a;
        final jh0 b;
        final lh0 c;
        private Date d;
        private String e;
        private Date f;
        private String g;
        private Date h;
        private long i;
        private long j;
        private String k;
        private int l = -1;

        public a(long j2, jh0 jh0, lh0 lh0) {
            this.a = j2;
            this.b = jh0;
            this.c = lh0;
            if (lh0 != null) {
                this.i = lh0.o0();
                this.j = lh0.m0();
                ch0 b0 = lh0.b0();
                int f2 = b0.f();
                for (int i2 = 0; i2 < f2; i2++) {
                    String d2 = b0.d(i2);
                    String g2 = b0.g(i2);
                    if ("Date".equalsIgnoreCase(d2)) {
                        this.d = hi0.b(g2);
                        this.e = g2;
                    } else if (HttpHeaders.EXPIRES.equalsIgnoreCase(d2)) {
                        this.h = hi0.b(g2);
                    } else if (HttpHeaders.LAST_MODIFIED.equalsIgnoreCase(d2)) {
                        this.f = hi0.b(g2);
                        this.g = g2;
                    } else if (HttpHeaders.ETAG.equalsIgnoreCase(d2)) {
                        this.k = g2;
                    } else if (HttpHeaders.AGE.equalsIgnoreCase(d2)) {
                        this.l = ii0.c(g2, -1);
                    }
                }
            }
        }

        /* JADX WARN: Type inference failed for: r3v0, types: [jh0, lh0] */
        /* JADX WARN: Type inference failed for: r3v3 */
        /* JADX WARN: Type inference failed for: r3v11 */
        /* JADX WARN: Type inference failed for: r3v12 */
        /* JADX WARN: Type inference failed for: r3v13 */
        /* JADX WARN: Type inference failed for: r3v20 */
        /* JADX WARNING: Code restructure failed: missing block: B:38:0x00c8, code lost:
            if (r2 > 0) goto L_0x00fa;
         */
        /* JADX WARNING: Removed duplicated region for block: B:95:0x01d5  */
        /* JADX WARNING: Removed duplicated region for block: B:99:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
        /* JADX WARNING: Unknown variable types count: 1 */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public defpackage.vh0 a() {
            /*
            // Method dump skipped, instructions count: 487
            */
            throw new UnsupportedOperationException("Method not decompiled: defpackage.vh0.a.a():vh0");
        }
    }

    vh0(jh0 jh0, lh0 lh0) {
        this.a = jh0;
        this.b = lh0;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:28:0x0056, code lost:
        if (r3.o().a() == false) goto L_0x0059;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static boolean a(defpackage.lh0 r3, defpackage.jh0 r4) {
        /*
        // Method dump skipped, instructions count: 122
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.vh0.a(lh0, jh0):boolean");
    }
}
