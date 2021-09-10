package defpackage;

import android.util.Log;
import com.bumptech.glide.load.g;
import java.io.IOException;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* renamed from: ce  reason: default package */
public final class ce extends Exception {
    private static final StackTraceElement[] g = new StackTraceElement[0];
    private final List<Throwable> b;
    private g c;
    private com.bumptech.glide.load.a d;
    private Class<?> e;
    private String f;

    public ce(String str) {
        List<Throwable> emptyList = Collections.emptyList();
        this.f = str;
        setStackTrace(g);
        this.b = emptyList;
    }

    private void a(Throwable th, List<Throwable> list) {
        if (th instanceof ce) {
            for (Throwable th2 : ((ce) th).b) {
                a(th2, list);
            }
            return;
        }
        list.add(th);
    }

    private static void b(List<Throwable> list, Appendable appendable) {
        try {
            c(list, appendable);
        } catch (IOException e2) {
            throw new RuntimeException(e2);
        }
    }

    private static void c(List<Throwable> list, Appendable appendable) {
        int size = list.size();
        int i = 0;
        while (i < size) {
            int i2 = i + 1;
            appendable.append("Cause (").append(String.valueOf(i2)).append(" of ").append(String.valueOf(size)).append("): ");
            Throwable th = list.get(i);
            if (th instanceof ce) {
                ((ce) th).f(appendable);
            } else {
                d(th, appendable);
            }
            i = i2;
        }
    }

    private static void d(Throwable th, Appendable appendable) {
        try {
            appendable.append(th.getClass().toString()).append(": ").append(th.getMessage()).append('\n');
        } catch (IOException unused) {
            throw new RuntimeException(th);
        }
    }

    private void f(Appendable appendable) {
        d(this, appendable);
        b(this.b, new a(appendable));
    }

    public void e(String str) {
        ArrayList arrayList = new ArrayList();
        a(this, arrayList);
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            StringBuilder q = ic.q("Root cause (");
            int i2 = i + 1;
            q.append(i2);
            q.append(" of ");
            q.append(size);
            q.append(")");
            Log.i(str, q.toString(), (Throwable) arrayList.get(i));
            i = i2;
        }
    }

    public Throwable fillInStackTrace() {
        return this;
    }

    /* access modifiers changed from: package-private */
    public void g(g gVar, com.bumptech.glide.load.a aVar) {
        this.c = gVar;
        this.d = aVar;
        this.e = null;
    }

    public String getMessage() {
        String str;
        String str2;
        StringBuilder sb = new StringBuilder(71);
        sb.append(this.f);
        String str3 = "";
        if (this.e != null) {
            StringBuilder q = ic.q(", ");
            q.append(this.e);
            str = q.toString();
        } else {
            str = str3;
        }
        sb.append(str);
        if (this.d != null) {
            StringBuilder q2 = ic.q(", ");
            q2.append(this.d);
            str2 = q2.toString();
        } else {
            str2 = str3;
        }
        sb.append(str2);
        if (this.c != null) {
            StringBuilder q3 = ic.q(", ");
            q3.append(this.c);
            str3 = q3.toString();
        }
        sb.append(str3);
        ArrayList arrayList = new ArrayList();
        a(this, arrayList);
        if (arrayList.isEmpty()) {
            return sb.toString();
        }
        if (arrayList.size() == 1) {
            sb.append("\nThere was 1 cause:");
        } else {
            sb.append("\nThere were ");
            sb.append(arrayList.size());
            sb.append(" causes:");
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Throwable th = (Throwable) it.next();
            sb.append('\n');
            sb.append(th.getClass().getName());
            sb.append('(');
            sb.append(th.getMessage());
            sb.append(')');
        }
        sb.append("\n call GlideException#logRootCauses(String) for more detail");
        return sb.toString();
    }

    /* access modifiers changed from: package-private */
    public void h(g gVar, com.bumptech.glide.load.a aVar, Class<?> cls) {
        this.c = gVar;
        this.d = aVar;
        this.e = cls;
    }

    public void printStackTrace() {
        f(System.err);
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintStream printStream) {
        f(printStream);
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintWriter printWriter) {
        f(printWriter);
    }

    /* access modifiers changed from: private */
    /* renamed from: ce$a */
    public static final class a implements Appendable {
        private final Appendable b;
        private boolean c = true;

        a(Appendable appendable) {
            this.b = appendable;
        }

        @Override // java.lang.Appendable
        public Appendable append(char c2) {
            boolean z = false;
            if (this.c) {
                this.c = false;
                this.b.append("  ");
            }
            if (c2 == '\n') {
                z = true;
            }
            this.c = z;
            this.b.append(c2);
            return this;
        }

        @Override // java.lang.Appendable
        public Appendable append(CharSequence charSequence) {
            if (charSequence == null) {
                charSequence = "";
            }
            append(charSequence, 0, charSequence.length());
            return this;
        }

        @Override // java.lang.Appendable
        public Appendable append(CharSequence charSequence, int i, int i2) {
            if (charSequence == null) {
                charSequence = "";
            }
            boolean z = false;
            if (this.c) {
                this.c = false;
                this.b.append("  ");
            }
            if (charSequence.length() > 0 && charSequence.charAt(i2 - 1) == '\n') {
                z = true;
            }
            this.c = z;
            this.b.append(charSequence, i, i2);
            return this;
        }
    }

    public ce(String str, Throwable th) {
        List<Throwable> singletonList = Collections.singletonList(th);
        this.f = str;
        setStackTrace(g);
        this.b = singletonList;
    }

    public ce(String str, List<Throwable> list) {
        this.f = str;
        setStackTrace(g);
        this.b = list;
    }
}
