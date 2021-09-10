package androidx.fragment.app;

import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.List;

public abstract class g {
    static final e c = new e();
    private e b = null;

    public abstract m a();

    public abstract void b(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr);

    public abstract Fragment c(String str);

    public abstract int d();

    public e e() {
        if (this.b == null) {
            this.b = c;
        }
        return this.b;
    }

    public abstract List<Fragment> f();

    public abstract void g();

    public abstract boolean h();

    public void i(e eVar) {
        this.b = eVar;
    }
}
