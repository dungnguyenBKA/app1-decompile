package defpackage;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayDeque;
import java.util.Queue;

/* renamed from: bl  reason: default package */
public class bl extends InputStream {
    private static final Queue<bl> d = new ArrayDeque(0);
    private InputStream b;
    private IOException c;

    static {
        int i = hl.c;
    }

    bl() {
    }

    public static bl o(InputStream inputStream) {
        bl poll;
        Queue<bl> queue = d;
        synchronized (queue) {
            poll = queue.poll();
        }
        if (poll == null) {
            poll = new bl();
        }
        poll.b = inputStream;
        return poll;
    }

    public void L() {
        this.c = null;
        this.b = null;
        Queue<bl> queue = d;
        synchronized (queue) {
            queue.offer(this);
        }
    }

    @Override // java.io.InputStream
    public int available() {
        return this.b.available();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable, java.io.InputStream
    public void close() {
        this.b.close();
    }

    public IOException j() {
        return this.c;
    }

    public void mark(int i) {
        this.b.mark(i);
    }

    public boolean markSupported() {
        return this.b.markSupported();
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) {
        try {
            return this.b.read(bArr);
        } catch (IOException e) {
            this.c = e;
            return -1;
        }
    }

    @Override // java.io.InputStream
    public synchronized void reset() {
        this.b.reset();
    }

    @Override // java.io.InputStream
    public long skip(long j) {
        try {
            return this.b.skip(j);
        } catch (IOException e) {
            this.c = e;
            return 0;
        }
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) {
        try {
            return this.b.read(bArr, i, i2);
        } catch (IOException e) {
            this.c = e;
            return -1;
        }
    }

    @Override // java.io.InputStream
    public int read() {
        try {
            return this.b.read();
        } catch (IOException e) {
            this.c = e;
            return -1;
        }
    }
}
