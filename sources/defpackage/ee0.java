package defpackage;

import java.io.PrintStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;

/* renamed from: ee0  reason: default package */
public final class ee0 extends RuntimeException {
    private final List<Throwable> b;
    private final String c;
    private Throwable d;

    /* renamed from: ee0$a */
    static final class a extends RuntimeException {
        a() {
        }

        public String getMessage() {
            return "Chain of Causes for CompositeException In Order Received =>";
        }
    }

    /* access modifiers changed from: package-private */
    /* renamed from: ee0$b */
    public static abstract class b {
        b() {
        }

        /* access modifiers changed from: package-private */
        public abstract void a(Object obj);
    }

    /* access modifiers changed from: package-private */
    /* renamed from: ee0$c */
    public static final class c extends b {
        private final PrintStream a;

        c(PrintStream printStream) {
            this.a = printStream;
        }

        /* access modifiers changed from: package-private */
        @Override // defpackage.ee0.b
        public void a(Object obj) {
            this.a.println(obj);
        }
    }

    /* renamed from: ee0$d */
    static final class d extends b {
        private final PrintWriter a;

        d(PrintWriter printWriter) {
            this.a = printWriter;
        }

        /* access modifiers changed from: package-private */
        @Override // defpackage.ee0.b
        public void a(Object obj) {
            this.a.println(obj);
        }
    }

    public ee0(Iterable<? extends Throwable> iterable) {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        ArrayList arrayList = new ArrayList();
        if (iterable != null) {
            for (Throwable th : iterable) {
                if (th instanceof ee0) {
                    linkedHashSet.addAll(((ee0) th).b);
                } else if (th != null) {
                    linkedHashSet.add(th);
                } else {
                    linkedHashSet.add(new NullPointerException("Throwable was null!"));
                }
            }
        } else {
            linkedHashSet.add(new NullPointerException("errors was null"));
        }
        if (!linkedHashSet.isEmpty()) {
            arrayList.addAll(linkedHashSet);
            List<Throwable> unmodifiableList = Collections.unmodifiableList(arrayList);
            this.b = unmodifiableList;
            this.c = unmodifiableList.size() + " exceptions occurred. ";
            return;
        }
        throw new IllegalArgumentException("errors is empty");
    }

    private void a(StringBuilder sb, Throwable th, String str) {
        sb.append(str);
        sb.append(th);
        sb.append('\n');
        StackTraceElement[] stackTrace = th.getStackTrace();
        for (StackTraceElement stackTraceElement : stackTrace) {
            sb.append("\t\tat ");
            sb.append(stackTraceElement);
            sb.append('\n');
        }
        if (th.getCause() != null) {
            sb.append("\tCaused by: ");
            a(sb, th.getCause(), "");
        }
    }

    private void b(b bVar) {
        StringBuilder sb = new StringBuilder(128);
        sb.append(this);
        sb.append('\n');
        StackTraceElement[] stackTrace = getStackTrace();
        for (StackTraceElement stackTraceElement : stackTrace) {
            sb.append("\tat ");
            sb.append(stackTraceElement);
            sb.append('\n');
        }
        int i = 1;
        for (Throwable th : this.b) {
            sb.append("  ComposedException ");
            sb.append(i);
            sb.append(" :\n");
            a(sb, th, "\t");
            i++;
        }
        bVar.a(sb.toString());
    }

    public synchronized Throwable getCause() {
        if (this.d == null) {
            a aVar = new a();
            HashSet hashSet = new HashSet();
            Iterator<Throwable> it = this.b.iterator();
            Throwable th = aVar;
            while (it.hasNext()) {
                Throwable next = it.next();
                if (!hashSet.contains(next)) {
                    hashSet.add(next);
                    ArrayList arrayList = new ArrayList();
                    Throwable cause = next.getCause();
                    if (cause != null) {
                        if (cause != next) {
                            while (true) {
                                arrayList.add(cause);
                                Throwable cause2 = cause.getCause();
                                if (cause2 == null) {
                                    break;
                                } else if (cause2 == cause) {
                                    break;
                                } else {
                                    cause = cause2;
                                }
                            }
                        }
                    }
                    Iterator it2 = arrayList.iterator();
                    while (it2.hasNext()) {
                        Throwable th2 = (Throwable) it2.next();
                        if (hashSet.contains(th2)) {
                            next = new RuntimeException("Duplicate found in causal chain so cropping to prevent loop ...");
                        } else {
                            hashSet.add(th2);
                        }
                    }
                    try {
                        th.initCause(next);
                    } catch (Throwable unused) {
                    }
                    Throwable cause3 = th.getCause();
                    if (!(cause3 == null || this.d == cause3)) {
                        while (true) {
                            Throwable cause4 = cause3.getCause();
                            if (cause4 == null || cause4 == cause3) {
                                th = cause3;
                            } else {
                                cause3 = cause4;
                            }
                        }
                        th = cause3;
                    }
                }
            }
            this.d = aVar;
        }
        return this.d;
    }

    public String getMessage() {
        return this.c;
    }

    public void printStackTrace() {
        printStackTrace(System.err);
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintStream printStream) {
        b(new c(printStream));
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintWriter printWriter) {
        b(new d(printWriter));
    }
}
