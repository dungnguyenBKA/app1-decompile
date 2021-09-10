package defpackage;

import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;

/* renamed from: ng0  reason: default package */
public final class ng0 {
    private final boolean a;
    private final boolean b;
    private final int c;
    private final int d;
    private final boolean e;
    private final boolean f;
    private final boolean g;
    private final int h;
    private final int i;
    private final boolean j;
    private final boolean k;
    private final boolean l;
    @Nullable
    String m;

    static {
        TimeUnit.SECONDS.toSeconds((long) Integer.MAX_VALUE);
    }

    private ng0(boolean z, boolean z2, int i2, int i3, boolean z3, boolean z4, boolean z5, int i4, int i5, boolean z6, boolean z7, boolean z8, @Nullable String str) {
        this.a = z;
        this.b = z2;
        this.c = i2;
        this.d = i3;
        this.e = z3;
        this.f = z4;
        this.g = z5;
        this.h = i4;
        this.i = i5;
        this.j = z6;
        this.k = z7;
        this.l = z8;
        this.m = str;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: CFG modification limit reached, blocks count: 191
        	at jadx.core.dex.visitors.blocksmaker.BlockProcessor.processBlocksTree(BlockProcessor.java:72)
        	at jadx.core.dex.visitors.blocksmaker.BlockProcessor.visit(BlockProcessor.java:46)
        */
    public static defpackage.ng0 j(defpackage.ch0 r22) {
        /*
        // Method dump skipped, instructions count: 350
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ng0.j(ch0):ng0");
    }

    public boolean a() {
        return this.e;
    }

    public boolean b() {
        return this.f;
    }

    public int c() {
        return this.c;
    }

    public int d() {
        return this.h;
    }

    public int e() {
        return this.i;
    }

    public boolean f() {
        return this.g;
    }

    public boolean g() {
        return this.a;
    }

    public boolean h() {
        return this.b;
    }

    public boolean i() {
        return this.j;
    }

    public String toString() {
        String str = this.m;
        if (str == null) {
            StringBuilder sb = new StringBuilder();
            if (this.a) {
                sb.append("no-cache, ");
            }
            if (this.b) {
                sb.append("no-store, ");
            }
            if (this.c != -1) {
                sb.append("max-age=");
                sb.append(this.c);
                sb.append(", ");
            }
            if (this.d != -1) {
                sb.append("s-maxage=");
                sb.append(this.d);
                sb.append(", ");
            }
            if (this.e) {
                sb.append("private, ");
            }
            if (this.f) {
                sb.append("public, ");
            }
            if (this.g) {
                sb.append("must-revalidate, ");
            }
            if (this.h != -1) {
                sb.append("max-stale=");
                sb.append(this.h);
                sb.append(", ");
            }
            if (this.i != -1) {
                sb.append("min-fresh=");
                sb.append(this.i);
                sb.append(", ");
            }
            if (this.j) {
                sb.append("only-if-cached, ");
            }
            if (this.k) {
                sb.append("no-transform, ");
            }
            if (this.l) {
                sb.append("immutable, ");
            }
            if (sb.length() == 0) {
                str = "";
            } else {
                sb.delete(sb.length() - 2, sb.length());
                str = sb.toString();
            }
            this.m = str;
        }
        return str;
    }
}
