package defpackage;

import java.io.Writer;

/* renamed from: i2  reason: default package */
public class i2 extends Writer {
    private final String b;
    private StringBuilder c = new StringBuilder(128);

    public i2(String str) {
        this.b = str;
    }

    private void j() {
        if (this.c.length() > 0) {
            this.c.toString();
            StringBuilder sb = this.c;
            sb.delete(0, sb.length());
        }
    }

    @Override // java.io.Closeable, java.io.Writer, java.lang.AutoCloseable
    public void close() {
        j();
    }

    @Override // java.io.Writer, java.io.Flushable
    public void flush() {
        j();
    }

    @Override // java.io.Writer
    public void write(char[] cArr, int i, int i2) {
        for (int i3 = 0; i3 < i2; i3++) {
            char c2 = cArr[i + i3];
            if (c2 == '\n') {
                j();
            } else {
                this.c.append(c2);
            }
        }
    }
}
