package defpackage;

/* renamed from: tf0  reason: default package */
public final class tf0 implements Comparable<tf0> {
    public static final tf0 f = new tf0(1, 4, 32);
    private final int b;
    private final int c;
    private final int d;
    private final int e;

    public tf0(int i, int i2, int i3) {
        this.c = i;
        this.d = i2;
        this.e = i3;
        if (i >= 0 && 255 >= i && i2 >= 0 && 255 >= i2 && i3 >= 0 && 255 >= i3) {
            this.b = (i << 16) + (i2 << 8) + i3;
            return;
        }
        throw new IllegalArgumentException(("Version components are out of range: " + i + '.' + i2 + '.' + i3).toString());
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // java.lang.Comparable
    public int compareTo(tf0 tf0) {
        tf0 tf02 = tf0;
        gg0.e(tf02, "other");
        return this.b - tf02.b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof tf0)) {
            obj = null;
        }
        tf0 tf0 = (tf0) obj;
        if (tf0 == null || this.b != tf0.b) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        return this.b;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.c);
        sb.append('.');
        sb.append(this.d);
        sb.append('.');
        sb.append(this.e);
        return sb.toString();
    }
}
