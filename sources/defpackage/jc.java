package defpackage;

import android.annotation.TargetApi;
import android.os.Build;
import android.os.StrictMode;
import com.vungle.warren.error.VungleException;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.PrintStream;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* renamed from: jc  reason: default package */
public final class jc implements Closeable {
    private final File b;
    private final File c;
    private final File d;
    private final File e;
    private final int f;
    private long g;
    private final int h;
    private long i = 0;
    private Writer j;
    private final LinkedHashMap<String, d> k = new LinkedHashMap<>(0, 0.75f, true);
    private int l;
    private long m = 0;
    final ThreadPoolExecutor n = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue(), new b(null));
    private final Callable<Void> o = new a();

    /* access modifiers changed from: package-private */
    /* renamed from: jc$a */
    public class a implements Callable<Void> {
        a() {
        }

        /* Return type fixed from 'java.lang.Object' to match base method */
        @Override // java.util.concurrent.Callable
        public Void call() {
            synchronized (jc.this) {
                if (jc.this.j == null) {
                    return null;
                }
                jc.this.x0();
                if (jc.this.q0()) {
                    jc.this.v0();
                    jc.this.l = 0;
                }
                return null;
            }
        }
    }

    /* renamed from: jc$b */
    private static final class b implements ThreadFactory {
        b(a aVar) {
        }

        public synchronized Thread newThread(Runnable runnable) {
            Thread thread;
            thread = new Thread(runnable, "glide-disk-lru-cache-thread");
            thread.setPriority(1);
            return thread;
        }
    }

    /* renamed from: jc$c */
    public final class c {
        private final d a;
        private final boolean[] b;
        private boolean c;

        c(d dVar, a aVar) {
            this.a = dVar;
            this.b = dVar.e ? null : new boolean[jc.this.h];
        }

        public void a() {
            jc.V(jc.this, this, false);
        }

        public void b() {
            if (!this.c) {
                try {
                    a();
                } catch (IOException unused) {
                }
            }
        }

        public void e() {
            jc.V(jc.this, this, true);
            this.c = true;
        }

        public File f(int i) {
            File file;
            synchronized (jc.this) {
                if (this.a.f == this) {
                    if (!this.a.e) {
                        this.b[i] = true;
                    }
                    file = this.a.d[i];
                    if (!jc.this.b.exists()) {
                        jc.this.b.mkdirs();
                    }
                } else {
                    throw new IllegalStateException();
                }
            }
            return file;
        }
    }

    /* access modifiers changed from: private */
    /* renamed from: jc$d */
    public final class d {
        private final String a;
        private final long[] b;
        File[] c;
        File[] d;
        private boolean e;
        private c f;
        private long g;

        d(String str, a aVar) {
            this.a = str;
            this.b = new long[jc.this.h];
            this.c = new File[jc.this.h];
            this.d = new File[jc.this.h];
            StringBuilder sb = new StringBuilder(str);
            sb.append('.');
            int length = sb.length();
            for (int i = 0; i < jc.this.h; i++) {
                sb.append(i);
                this.c[i] = new File(jc.this.b, sb.toString());
                sb.append(".tmp");
                this.d[i] = new File(jc.this.b, sb.toString());
                sb.setLength(length);
            }
        }

        static void i(d dVar, String[] strArr) {
            if (strArr.length == jc.this.h) {
                for (int i = 0; i < strArr.length; i++) {
                    try {
                        dVar.b[i] = Long.parseLong(strArr[i]);
                    } catch (NumberFormatException unused) {
                        dVar.k(strArr);
                        throw null;
                    }
                }
                return;
            }
            dVar.k(strArr);
            throw null;
        }

        private IOException k(String[] strArr) {
            StringBuilder q = ic.q("unexpected journal line: ");
            q.append(Arrays.toString(strArr));
            throw new IOException(q.toString());
        }

        public String j() {
            StringBuilder sb = new StringBuilder();
            long[] jArr = this.b;
            for (long j : jArr) {
                sb.append(' ');
                sb.append(j);
            }
            return sb.toString();
        }
    }

    /* renamed from: jc$e */
    public final class e {
        private final File[] a;

        e(jc jcVar, String str, long j, File[] fileArr, long[] jArr, a aVar) {
            this.a = fileArr;
        }

        public File a(int i) {
            return this.a[i];
        }
    }

    private jc(File file, int i2, int i3, long j2) {
        this.b = file;
        this.f = i2;
        this.c = new File(file, "journal");
        this.d = new File(file, "journal.tmp");
        this.e = new File(file, "journal.bkp");
        this.h = i3;
        this.g = j2;
    }

    static void V(jc jcVar, c cVar, boolean z) {
        synchronized (jcVar) {
            d dVar = cVar.a;
            if (dVar.f == cVar) {
                if (z && !dVar.e) {
                    for (int i2 = 0; i2 < jcVar.h; i2++) {
                        if (!cVar.b[i2]) {
                            cVar.a();
                            throw new IllegalStateException("Newly created entry didn't create value for index " + i2);
                        } else if (!dVar.d[i2].exists()) {
                            cVar.a();
                            return;
                        }
                    }
                }
                for (int i3 = 0; i3 < jcVar.h; i3++) {
                    File file = dVar.d[i3];
                    if (!z) {
                        m0(file);
                    } else if (file.exists()) {
                        File file2 = dVar.c[i3];
                        file.renameTo(file2);
                        long j2 = dVar.b[i3];
                        long length = file2.length();
                        dVar.b[i3] = length;
                        jcVar.i = (jcVar.i - j2) + length;
                    }
                }
                jcVar.l++;
                dVar.f = null;
                if (dVar.e || z) {
                    dVar.e = true;
                    jcVar.j.append((CharSequence) "CLEAN");
                    jcVar.j.append(' ');
                    jcVar.j.append((CharSequence) dVar.a);
                    jcVar.j.append((CharSequence) dVar.j());
                    jcVar.j.append('\n');
                    if (z) {
                        long j3 = jcVar.m;
                        jcVar.m = 1 + j3;
                        dVar.g = j3;
                    }
                } else {
                    jcVar.k.remove(dVar.a);
                    jcVar.j.append((CharSequence) "REMOVE");
                    jcVar.j.append(' ');
                    jcVar.j.append((CharSequence) dVar.a);
                    jcVar.j.append('\n');
                }
                o0(jcVar.j);
                if (jcVar.i > jcVar.g || jcVar.q0()) {
                    jcVar.n.submit(jcVar.o);
                }
                return;
            }
            throw new IllegalStateException();
        }
    }

    private void k0() {
        if (this.j == null) {
            throw new IllegalStateException("cache is closed");
        }
    }

    @TargetApi(VungleException.DB_ERROR)
    private static void l0(Writer writer) {
        if (Build.VERSION.SDK_INT < 26) {
            writer.close();
            return;
        }
        StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
        StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitUnbufferedIo().build());
        try {
            writer.close();
        } finally {
            StrictMode.setThreadPolicy(threadPolicy);
        }
    }

    private static void m0(File file) {
        if (file.exists() && !file.delete()) {
            throw new IOException();
        }
    }

    @TargetApi(VungleException.DB_ERROR)
    private static void o0(Writer writer) {
        if (Build.VERSION.SDK_INT < 26) {
            writer.flush();
            return;
        }
        StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
        StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitUnbufferedIo().build());
        try {
            writer.flush();
        } finally {
            StrictMode.setThreadPolicy(threadPolicy);
        }
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private boolean q0() {
        int i2 = this.l;
        return i2 >= 2000 && i2 >= this.k.size();
    }

    public static jc r0(File file, int i2, int i3, long j2) {
        if (j2 <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        } else if (i3 > 0) {
            File file2 = new File(file, "journal.bkp");
            if (file2.exists()) {
                File file3 = new File(file, "journal");
                if (file3.exists()) {
                    file2.delete();
                } else {
                    w0(file2, file3, false);
                }
            }
            jc jcVar = new jc(file, i2, i3, j2);
            if (jcVar.c.exists()) {
                try {
                    jcVar.t0();
                    jcVar.s0();
                    return jcVar;
                } catch (IOException e2) {
                    PrintStream printStream = System.out;
                    printStream.println("DiskLruCache " + file + " is corrupt: " + e2.getMessage() + ", removing");
                    jcVar.close();
                    lc.a(jcVar.b);
                }
            }
            file.mkdirs();
            jc jcVar2 = new jc(file, i2, i3, j2);
            jcVar2.v0();
            return jcVar2;
        } else {
            throw new IllegalArgumentException("valueCount <= 0");
        }
    }

    private void s0() {
        m0(this.d);
        Iterator<d> it = this.k.values().iterator();
        while (it.hasNext()) {
            d next = it.next();
            int i2 = 0;
            if (next.f == null) {
                while (i2 < this.h) {
                    this.i += next.b[i2];
                    i2++;
                }
            } else {
                next.f = null;
                while (i2 < this.h) {
                    m0(next.c[i2]);
                    m0(next.d[i2]);
                    i2++;
                }
                it.remove();
            }
        }
    }

    private void t0() {
        kc kcVar = new kc(new FileInputStream(this.c), lc.a);
        try {
            String S = kcVar.S();
            String S2 = kcVar.S();
            String S3 = kcVar.S();
            String S4 = kcVar.S();
            String S5 = kcVar.S();
            if (!"libcore.io.DiskLruCache".equals(S) || !"1".equals(S2) || !Integer.toString(this.f).equals(S3) || !Integer.toString(this.h).equals(S4) || !"".equals(S5)) {
                throw new IOException("unexpected journal header: [" + S + ", " + S2 + ", " + S4 + ", " + S5 + "]");
            }
            int i2 = 0;
            while (true) {
                try {
                    u0(kcVar.S());
                    i2++;
                } catch (EOFException unused) {
                    this.l = i2 - this.k.size();
                    if (kcVar.L()) {
                        v0();
                    } else {
                        this.j = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.c, true), lc.a));
                    }
                    try {
                        return;
                    } catch (RuntimeException e2) {
                        throw e2;
                    } catch (Exception unused2) {
                        return;
                    }
                }
            }
        } finally {
            try {
                kcVar.close();
            } catch (RuntimeException e3) {
                throw e3;
            } catch (Exception unused3) {
            }
        }
    }

    private void u0(String str) {
        String str2;
        int indexOf = str.indexOf(32);
        if (indexOf != -1) {
            int i2 = indexOf + 1;
            int indexOf2 = str.indexOf(32, i2);
            if (indexOf2 == -1) {
                str2 = str.substring(i2);
                if (indexOf == 6 && str.startsWith("REMOVE")) {
                    this.k.remove(str2);
                    return;
                }
            } else {
                str2 = str.substring(i2, indexOf2);
            }
            d dVar = this.k.get(str2);
            if (dVar == null) {
                dVar = new d(str2, null);
                this.k.put(str2, dVar);
            }
            if (indexOf2 != -1 && indexOf == 5 && str.startsWith("CLEAN")) {
                String[] split = str.substring(indexOf2 + 1).split(" ");
                dVar.e = true;
                dVar.f = null;
                d.i(dVar, split);
            } else if (indexOf2 == -1 && indexOf == 5 && str.startsWith("DIRTY")) {
                dVar.f = new c(dVar, null);
            } else if (indexOf2 != -1 || indexOf != 4 || !str.startsWith("READ")) {
                throw new IOException(ic.i("unexpected journal line: ", str));
            }
        } else {
            throw new IOException(ic.i("unexpected journal line: ", str));
        }
    }

    /* JADX INFO: finally extract failed */
    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private synchronized void v0() {
        Writer writer = this.j;
        if (writer != null) {
            l0(writer);
        }
        BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.d), lc.a));
        try {
            bufferedWriter.write("libcore.io.DiskLruCache");
            bufferedWriter.write("\n");
            bufferedWriter.write("1");
            bufferedWriter.write("\n");
            bufferedWriter.write(Integer.toString(this.f));
            bufferedWriter.write("\n");
            bufferedWriter.write(Integer.toString(this.h));
            bufferedWriter.write("\n");
            bufferedWriter.write("\n");
            for (d dVar : this.k.values()) {
                if (dVar.f != null) {
                    bufferedWriter.write("DIRTY " + dVar.a + '\n');
                } else {
                    bufferedWriter.write("CLEAN " + dVar.a + dVar.j() + '\n');
                }
            }
            l0(bufferedWriter);
            if (this.c.exists()) {
                w0(this.c, this.e, true);
            }
            w0(this.d, this.c, false);
            this.e.delete();
            this.j = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.c, true), lc.a));
        } catch (Throwable th) {
            l0(bufferedWriter);
            throw th;
        }
    }

    private static void w0(File file, File file2, boolean z) {
        if (z) {
            m0(file2);
        }
        if (!file.renameTo(file2)) {
            throw new IOException();
        }
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void x0() {
        while (this.i > this.g) {
            String key = this.k.entrySet().iterator().next().getKey();
            synchronized (this) {
                k0();
                d dVar = this.k.get(key);
                if (dVar != null) {
                    if (dVar.f == null) {
                        for (int i2 = 0; i2 < this.h; i2++) {
                            File file = dVar.c[i2];
                            if (file.exists()) {
                                if (!file.delete()) {
                                    throw new IOException("failed to delete " + file);
                                }
                            }
                            this.i -= dVar.b[i2];
                            dVar.b[i2] = 0;
                        }
                        this.l++;
                        this.j.append((CharSequence) "REMOVE");
                        this.j.append(' ');
                        this.j.append((CharSequence) key);
                        this.j.append('\n');
                        this.k.remove(key);
                        if (q0()) {
                            this.n.submit(this.o);
                        }
                    }
                }
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() {
        if (this.j != null) {
            Iterator it = new ArrayList(this.k.values()).iterator();
            while (it.hasNext()) {
                d dVar = (d) it.next();
                if (dVar.f != null) {
                    dVar.f.a();
                }
            }
            x0();
            l0(this.j);
            this.j = null;
        }
    }

    public c n0(String str) {
        synchronized (this) {
            k0();
            d dVar = this.k.get(str);
            if (dVar == null) {
                dVar = new d(str, null);
                this.k.put(str, dVar);
            } else if (dVar.f != null) {
                return null;
            }
            c cVar = new c(dVar, null);
            dVar.f = cVar;
            this.j.append((CharSequence) "DIRTY");
            this.j.append(' ');
            this.j.append((CharSequence) str);
            this.j.append('\n');
            o0(this.j);
            return cVar;
        }
    }

    public synchronized e p0(String str) {
        k0();
        d dVar = this.k.get(str);
        if (dVar == null) {
            return null;
        }
        if (!dVar.e) {
            return null;
        }
        for (File file : dVar.c) {
            if (!file.exists()) {
                return null;
            }
        }
        this.l++;
        this.j.append((CharSequence) "READ");
        this.j.append(' ');
        this.j.append((CharSequence) str);
        this.j.append('\n');
        if (q0()) {
            this.n.submit(this.o);
        }
        return new e(this, str, dVar.g, dVar.c, dVar.b, null);
    }
}
