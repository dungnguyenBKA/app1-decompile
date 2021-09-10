package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import androidx.core.app.b;
import java.io.FileDescriptor;
import java.io.PrintWriter;

public abstract class f<E> extends c {
    private final Activity b;
    private final Context c;
    private final Handler d;
    private final int e;
    final h f = new h();

    f(FragmentActivity fragmentActivity) {
        Handler handler = new Handler();
        this.b = fragmentActivity;
        b.l(fragmentActivity, "context == null");
        this.c = fragmentActivity;
        b.l(handler, "handler == null");
        this.d = handler;
        this.e = 0;
    }

    /* access modifiers changed from: package-private */
    public Activity c() {
        return this.b;
    }

    /* access modifiers changed from: package-private */
    public Context d() {
        return this.c;
    }

    /* access modifiers changed from: package-private */
    public Handler e() {
        return this.d;
    }

    /* access modifiers changed from: package-private */
    public abstract void f(Fragment fragment);

    public abstract void g(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr);

    public abstract E h();

    public abstract LayoutInflater i();

    public abstract int j();

    public abstract boolean k();

    public abstract boolean l(Fragment fragment);

    public abstract boolean m(String str);

    public abstract void n(Fragment fragment, @SuppressLint({"UnknownNullness"}) Intent intent, int i, Bundle bundle);

    public abstract void o();
}
