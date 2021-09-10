package defpackage;

import java.io.Writer;

/* access modifiers changed from: package-private */
/* renamed from: y70  reason: default package */
public final class y70 extends Writer {
    private final Appendable b;
    private final a c = new a();

    /* renamed from: y70$a */
    static class a implements CharSequence {
        char[] b;

        a() {
        }

        public char charAt(int i) {
            return this.b[i];
        }

        public int length() {
            return this.b.length;
        }

        public CharSequence subSequence(int i, int i2) {
            return new String(this.b, i, i2 - i);
        }
    }

    y70(Appendable appendable) {
        this.b = appendable;
    }

    @Override // java.io.Closeable, java.io.Writer, java.lang.AutoCloseable
    public void close() {
    }

    @Override // java.io.Writer, java.io.Flushable
    public void flush() {
    }

    @Override // java.io.Writer
    public void write(char[] cArr, int i, int i2) {
        a aVar = this.c;
        aVar.b = cArr;
        this.b.append(aVar, i, i2 + i);
    }

    @Override // java.io.Writer
    public void write(int i) {
        this.b.append((char) i);
    }
}
