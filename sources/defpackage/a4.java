package defpackage;

import androidx.lifecycle.i;
import androidx.lifecycle.v;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* renamed from: a4  reason: default package */
public abstract class a4 {
    public static <T extends i & v> a4 b(T t) {
        return new b4(t, t.getViewModelStore());
    }

    @Deprecated
    public abstract void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr);

    public abstract void c();
}
