package defpackage;

import java.io.BufferedInputStream;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Writer;
import java.lang.reflect.Array;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import org.apache.http.protocol.HTTP;

/* renamed from: nl  reason: default package */
public final class nl implements Closeable {
    private final File b;
    private final File c;
    private final File d;
    private final int e;
    private final long f;
    private final int g;
    private long h = 0;
    private Writer i;
    private final LinkedHashMap<String, c> j = new LinkedHashMap<>(0, 0.75f, true);
    private int k;
    private long l = 0;
    private final ExecutorService m = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue());
    private final Callable<Void> n = new a();

    /* access modifiers changed from: package-private */
    /* renamed from: nl$a */
    public class a implements Callable<Void> {
        a() {
        }

        /* Return type fixed from 'java.lang.Object' to match base method */
        @Override // java.util.concurrent.Callable
        public Void call() {
            synchronized (nl.this) {
                if (nl.this.i == null) {
                    return null;
                }
                nl.this.A0();
                if (nl.this.s0()) {
                    nl.this.y0();
                    nl.this.k = 0;
                }
                return null;
            }
        }
    }

    /* renamed from: nl$b */
    public final class b {
        private final c a;
        private boolean b;

        b(c cVar, a aVar) {
            this.a = cVar;
        }

        public void a() {
            nl.L(nl.this, this, false);
        }

        public void d() {
            if (this.b) {
                nl.L(nl.this, this, false);
                nl.this.z0(this.a.a);
                return;
            }
            nl.L(nl.this, this, true);
        }

        public OutputStream e(int i) {
            a aVar;
            synchronized (nl.this) {
                if (this.a.d == this) {
                    aVar = new a(new FileOutputStream(this.a.k(i)), null);
                } else {
                    throw new IllegalStateException("This entry editor error");
                }
            }
            return aVar;
        }

        /* access modifiers changed from: private */
        /* renamed from: nl$b$a */
        public class a extends FilterOutputStream {
            a(OutputStream outputStream, a aVar) {
                super(outputStream);
            }

            @Override // java.io.OutputStream, java.io.Closeable, java.io.FilterOutputStream, java.lang.AutoCloseable
            public void close() {
                try {
                    ((FilterOutputStream) this).out.close();
                } catch (IOException unused) {
                    b.this.b = true;
                }
            }

            @Override // java.io.OutputStream, java.io.FilterOutputStream, java.io.Flushable
            public void flush() {
                try {
                    ((FilterOutputStream) this).out.flush();
                } catch (IOException unused) {
                    b.this.b = true;
                }
            }

            @Override // java.io.OutputStream, java.io.FilterOutputStream
            public void write(int i) {
                try {
                    ((FilterOutputStream) this).out.write(i);
                } catch (IOException unused) {
                    b.this.b = true;
                }
            }

            @Override // java.io.OutputStream, java.io.FilterOutputStream
            public void write(byte[] bArr, int i, int i2) {
                try {
                    ((FilterOutputStream) this).out.write(bArr, i, i2);
                } catch (IOException unused) {
                    b.this.b = true;
                }
            }
        }
    }

    /* access modifiers changed from: private */
    /* renamed from: nl$c */
    public final class c {
        private final String a;
        private final long[] b;
        private boolean c;
        private b d;
        private long e;

        c(String str, a aVar) {
            this.a = str;
            this.b = new long[nl.this.g];
        }

        static void i(c cVar, String[] strArr) {
            if (strArr.length == nl.this.g) {
                for (int i = 0; i < strArr.length; i++) {
                    try {
                        cVar.b[i] = Long.parseLong(strArr[i]);
                    } catch (NumberFormatException unused) {
                        cVar.m(strArr);
                        throw null;
                    }
                }
                return;
            }
            cVar.m(strArr);
            throw null;
        }

        private IOException m(String[] strArr) {
            StringBuilder q = ic.q("unexpected journal line: ");
            q.append(Arrays.toString(strArr));
            throw new IOException(q.toString());
        }

        public File j(int i) {
            File file = nl.this.b;
            return new File(file, this.a + "." + i);
        }

        public File k(int i) {
            File file = nl.this.b;
            return new File(file, this.a + "." + i + ".tmp");
        }

        public String l() {
            StringBuilder sb = new StringBuilder();
            long[] jArr = this.b;
            for (long j : jArr) {
                sb.append(' ');
                sb.append(j);
            }
            return sb.toString();
        }
    }

    /* renamed from: nl$d */
    public final class d implements Closeable {
        private final InputStream[] b;

        d(nl nlVar, String str, long j, InputStream[] inputStreamArr, a aVar) {
            this.b = inputStreamArr;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            for (InputStream inputStream : this.b) {
                nl.l0(inputStream);
            }
        }

        public InputStream j(int i) {
            return this.b[i];
        }
    }

    static {
        Charset.forName(HTTP.UTF_8);
    }

    private nl(File file, int i2, int i3, long j2) {
        this.b = file;
        this.e = i2;
        this.c = new File(file, "journal");
        this.d = new File(file, "journal.tmp");
        this.g = i3;
        this.f = j2;
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void A0() {
        while (this.h > this.f) {
            z0(this.j.entrySet().iterator().next().getKey());
        }
    }

    private void B0(String str) {
        if (str.contains(" ") || str.contains("\n") || str.contains("\r")) {
            throw new IllegalArgumentException(ic.j("keys must not contain spaces or newlines: \"", str, "\""));
        }
    }

    static void L(nl nlVar, b bVar, boolean z) {
        synchronized (nlVar) {
            c cVar = bVar.a;
            if (cVar.d == bVar) {
                if (z && !cVar.c) {
                    for (int i2 = 0; i2 < nlVar.g; i2++) {
                        if (!cVar.k(i2).exists()) {
                            bVar.a();
                            throw new IllegalStateException("edit didn't create file " + i2);
                        }
                    }
                }
                for (int i3 = 0; i3 < nlVar.g; i3++) {
                    File k2 = cVar.k(i3);
                    if (!z) {
                        o0(k2);
                    } else if (k2.exists()) {
                        File j2 = cVar.j(i3);
                        k2.renameTo(j2);
                        long j3 = cVar.b[i3];
                        long length = j2.length();
                        cVar.b[i3] = length;
                        nlVar.h = (nlVar.h - j3) + length;
                    }
                }
                nlVar.k++;
                cVar.d = null;
                if (cVar.c || z) {
                    cVar.c = true;
                    nlVar.i.write("CLEAN " + cVar.a + cVar.l() + '\n');
                    if (z) {
                        long j4 = nlVar.l;
                        nlVar.l = 1 + j4;
                        cVar.e = j4;
                    }
                } else {
                    nlVar.j.remove(cVar.a);
                    nlVar.i.write("REMOVE " + cVar.a + '\n');
                }
                if (nlVar.h > nlVar.f || nlVar.s0()) {
                    nlVar.m.submit(nlVar.n);
                }
            } else {
                throw new IllegalStateException();
            }
        }
    }

    private void k0() {
        if (this.i == null) {
            throw new IllegalStateException("cache is closed");
        }
    }

    public static void l0(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException e2) {
                throw e2;
            } catch (Exception unused) {
            }
        }
    }

    public static void n0(File file) {
        File[] listFiles = file.listFiles();
        if (listFiles != null) {
            for (File file2 : listFiles) {
                if (file2.isDirectory()) {
                    n0(file2);
                }
                if (!file2.delete()) {
                    return;
                }
            }
        }
    }

    private static void o0(File file) {
        if (file.exists() && !file.delete()) {
            throw new IOException();
        }
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private boolean s0() {
        int i2 = this.k;
        return i2 >= 2000 && i2 >= this.j.size();
    }

    public static nl t0(File file, int i2, int i3, long j2) {
        if (j2 <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        } else if (i3 > 0) {
            nl nlVar = new nl(file, i2, i3, j2);
            if (nlVar.c.exists()) {
                try {
                    nlVar.w0();
                    nlVar.u0();
                    nlVar.i = new BufferedWriter(new FileWriter(nlVar.c, true), 8192);
                    return nlVar;
                } catch (IOException unused) {
                    nlVar.close();
                    n0(nlVar.b);
                }
            }
            file.mkdirs();
            nl nlVar2 = new nl(file, i2, i3, j2);
            nlVar2.y0();
            return nlVar2;
        } else {
            throw new IllegalArgumentException("valueCount <= 0");
        }
    }

    private void u0() {
        o0(this.d);
        Iterator<c> it = this.j.values().iterator();
        while (it.hasNext()) {
            c next = it.next();
            int i2 = 0;
            if (next.d == null) {
                while (i2 < this.g) {
                    this.h += next.b[i2];
                    i2++;
                }
            } else {
                next.d = null;
                while (i2 < this.g) {
                    o0(next.j(i2));
                    o0(next.k(i2));
                    i2++;
                }
                it.remove();
            }
        }
    }

    public static String v0(InputStream inputStream) {
        StringBuilder sb = new StringBuilder(80);
        while (true) {
            int read = inputStream.read();
            if (read == -1) {
                throw new EOFException();
            } else if (read == 10) {
                int length = sb.length();
                if (length > 0) {
                    int i2 = length - 1;
                    if (sb.charAt(i2) == '\r') {
                        sb.setLength(i2);
                    }
                }
                return sb.toString();
            } else {
                sb.append((char) read);
            }
        }
    }

    private void w0() {
        BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(this.c), 8192);
        try {
            String v0 = v0(bufferedInputStream);
            String v02 = v0(bufferedInputStream);
            String v03 = v0(bufferedInputStream);
            String v04 = v0(bufferedInputStream);
            String v05 = v0(bufferedInputStream);
            if (!"libcore.io.DiskLruCache".equals(v0) || !"1".equals(v02) || !Integer.toString(this.e).equals(v03) || !Integer.toString(this.g).equals(v04) || !"".equals(v05)) {
                throw new IOException("unexpected journal header: [" + v0 + ", " + v02 + ", " + v04 + ", " + v05 + "]");
            }
            while (true) {
                try {
                    x0(v0(bufferedInputStream));
                } catch (EOFException unused) {
                    return;
                }
            }
        } finally {
            l0(bufferedInputStream);
        }
    }

    private void x0(String str) {
        String[] split = str.split(" ");
        if (split.length >= 2) {
            String str2 = split[1];
            if (!split[0].equals("REMOVE") || split.length != 2) {
                c cVar = this.j.get(str2);
                if (cVar == null) {
                    cVar = new c(str2, null);
                    this.j.put(str2, cVar);
                }
                if (split[0].equals("CLEAN") && split.length == this.g + 2) {
                    cVar.c = true;
                    cVar.d = null;
                    int length = split.length;
                    int length2 = split.length;
                    if (2 > length) {
                        throw new IllegalArgumentException();
                    } else if (2 <= length2) {
                        int i2 = length - 2;
                        int min = Math.min(i2, length2 - 2);
                        Object[] objArr = (Object[]) Array.newInstance(split.getClass().getComponentType(), i2);
                        System.arraycopy(split, 2, objArr, 0, min);
                        c.i(cVar, (String[]) objArr);
                    } else {
                        throw new ArrayIndexOutOfBoundsException();
                    }
                } else if (split[0].equals("DIRTY") && split.length == 2) {
                    cVar.d = new b(cVar, null);
                } else if (!split[0].equals("READ") || split.length != 2) {
                    throw new IOException(ic.i("unexpected journal line: ", str));
                }
            } else {
                this.j.remove(str2);
            }
        } else {
            throw new IOException(ic.i("unexpected journal line: ", str));
        }
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private synchronized void y0() {
        Writer writer = this.i;
        if (writer != null) {
            writer.close();
        }
        BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(this.d), 8192);
        bufferedWriter.write("libcore.io.DiskLruCache");
        bufferedWriter.write("\n");
        bufferedWriter.write("1");
        bufferedWriter.write("\n");
        bufferedWriter.write(Integer.toString(this.e));
        bufferedWriter.write("\n");
        bufferedWriter.write(Integer.toString(this.g));
        bufferedWriter.write("\n");
        bufferedWriter.write("\n");
        for (c cVar : this.j.values()) {
            if (cVar.d != null) {
                bufferedWriter.write("DIRTY " + cVar.a + '\n');
            } else {
                bufferedWriter.write("CLEAN " + cVar.a + cVar.l() + '\n');
            }
        }
        bufferedWriter.close();
        this.d.renameTo(this.c);
        this.i = new BufferedWriter(new FileWriter(this.c, true), 8192);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() {
        if (this.i != null) {
            Iterator it = new ArrayList(this.j.values()).iterator();
            while (it.hasNext()) {
                c cVar = (c) it.next();
                if (cVar.d != null) {
                    b bVar = cVar.d;
                    L(nl.this, bVar, false);
                }
            }
            A0();
            this.i.close();
            this.i = null;
        }
    }

    public synchronized void flush() {
        k0();
        A0();
        this.i.flush();
    }

    public void m0() {
        close();
        n0(this.b);
    }

    public b p0(String str) {
        synchronized (this) {
            k0();
            B0(str);
            c cVar = this.j.get(str);
            if (cVar == null) {
                cVar = new c(str, null);
                this.j.put(str, cVar);
            } else if (cVar.d != null) {
                return null;
            }
            b bVar = new b(cVar, null);
            cVar.d = bVar;
            Writer writer = this.i;
            writer.write("DIRTY " + str + '\n');
            this.i.flush();
            return bVar;
        }
    }

    public synchronized d q0(String str) {
        k0();
        B0(str);
        c cVar = this.j.get(str);
        if (cVar == null) {
            return null;
        }
        if (!cVar.c) {
            return null;
        }
        InputStream[] inputStreamArr = new InputStream[this.g];
        for (int i2 = 0; i2 < this.g; i2++) {
            try {
                inputStreamArr[i2] = new FileInputStream(cVar.j(i2));
            } catch (FileNotFoundException unused) {
                return null;
            }
        }
        this.k++;
        this.i.append((CharSequence) ("READ " + str + '\n'));
        if (s0()) {
            this.m.submit(this.n);
        }
        return new d(this, str, cVar.e, inputStreamArr, null);
    }

    public boolean r0() {
        return this.i == null;
    }

    public synchronized boolean z0(String str) {
        k0();
        B0(str);
        c cVar = this.j.get(str);
        if (cVar != null) {
            if (cVar.d == null) {
                for (int i2 = 0; i2 < this.g; i2++) {
                    File j2 = cVar.j(i2);
                    if (j2.exists()) {
                        if (!j2.delete()) {
                            throw new IOException("failed to delete " + j2);
                        }
                    }
                    this.h -= cVar.b[i2];
                    cVar.b[i2] = 0;
                }
                this.k++;
                this.i.append((CharSequence) ("REMOVE " + str + '\n'));
                this.j.remove(str);
                if (s0()) {
                    this.m.submit(this.n);
                }
                return true;
            }
        }
        return false;
    }
}
