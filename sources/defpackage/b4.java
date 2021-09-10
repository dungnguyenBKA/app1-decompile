package defpackage;

import androidx.lifecycle.i;
import androidx.lifecycle.n;
import androidx.lifecycle.o;
import androidx.lifecycle.s;
import androidx.lifecycle.t;
import androidx.lifecycle.u;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Objects;

/* renamed from: b4  reason: default package */
class b4 extends a4 {
    private final i a;
    private final b b;

    /* renamed from: b4$a */
    public static class a<D> extends n<D> {
        /* access modifiers changed from: protected */
        @Override // androidx.lifecycle.LiveData
        public void d() {
            throw null;
        }

        /* access modifiers changed from: protected */
        @Override // androidx.lifecycle.LiveData
        public void e() {
            throw null;
        }

        /* JADX DEBUG: Multi-variable search result rejected for r1v0, resolved type: androidx.lifecycle.o<? super D> */
        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.lifecycle.LiveData
        public void g(o<? super D> oVar) {
            super.g(oVar);
        }

        @Override // androidx.lifecycle.LiveData, androidx.lifecycle.n
        public void h(D d) {
            super.h(d);
        }

        public String toString() {
            StringBuilder sb = new StringBuilder(64);
            sb.append("LoaderInfo{");
            sb.append(Integer.toHexString(System.identityHashCode(this)));
            sb.append(" #");
            sb.append(0);
            sb.append(" : ");
            androidx.core.app.b.e(null, sb);
            sb.append("}}");
            return sb.toString();
        }
    }

    /* renamed from: b4$b */
    static class b extends s {
        private static final t.a c = new a();
        private f0<a> b = new f0<>(10);

        /* renamed from: b4$b$a */
        static class a implements t.a {
            a() {
            }

            @Override // androidx.lifecycle.t.a
            public <T extends s> T a(Class<T> cls) {
                return new b();
            }
        }

        b() {
        }

        static b d(u uVar) {
            return (b) new t(uVar, c).a(b.class);
        }

        /* access modifiers changed from: protected */
        @Override // androidx.lifecycle.s
        public void b() {
            if (this.b.l() <= 0) {
                this.b.b();
            } else {
                Objects.requireNonNull(this.b.m(0));
                throw null;
            }
        }

        public void c(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            if (this.b.l() > 0) {
                printWriter.print(str);
                printWriter.println("Loaders:");
                String str2 = str + "    ";
                if (this.b.l() > 0) {
                    printWriter.print(str);
                    printWriter.print("  #");
                    printWriter.print(this.b.i(0));
                    printWriter.print(": ");
                    printWriter.println(this.b.m(0).toString());
                    printWriter.print(str2);
                    printWriter.print("mId=");
                    printWriter.print(0);
                    printWriter.print(" mArgs=");
                    printWriter.println((Object) null);
                    printWriter.print(str2);
                    printWriter.print("mLoader=");
                    printWriter.println((Object) null);
                    throw null;
                }
            }
        }

        /* access modifiers changed from: package-private */
        public void e() {
            int l = this.b.l();
            for (int i = 0; i < l; i++) {
                Objects.requireNonNull(this.b.m(i));
            }
        }
    }

    b4(i iVar, u uVar) {
        this.a = iVar;
        this.b = b.d(uVar);
    }

    @Override // defpackage.a4
    @Deprecated
    public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        this.b.c(str, fileDescriptor, printWriter, strArr);
    }

    @Override // defpackage.a4
    public void c() {
        this.b.e();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("LoaderManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        androidx.core.app.b.e(this.a, sb);
        sb.append("}}");
        return sb.toString();
    }
}
