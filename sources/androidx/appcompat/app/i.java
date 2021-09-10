package androidx.appcompat.app;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.MenuInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.Toolbar;
import defpackage.k;
import java.lang.ref.WeakReference;
import java.util.Iterator;

public abstract class i {
    private static final z<WeakReference<i>> b = new z<>(0);
    private static final Object c = new Object();
    public static final /* synthetic */ int d = 0;

    i() {
    }

    static void l(i iVar) {
        synchronized (c) {
            v(iVar);
            b.add(new WeakReference<>(iVar));
        }
    }

    static void m(i iVar) {
        synchronized (c) {
            v(iVar);
        }
    }

    private static void v(i iVar) {
        synchronized (c) {
            Iterator<WeakReference<i>> it = b.iterator();
            while (it.hasNext()) {
                i iVar2 = it.next().get();
                if (iVar2 == iVar || iVar2 == null) {
                    it.remove();
                }
            }
        }
    }

    public abstract void A(Toolbar toolbar);

    public void B(int i) {
    }

    public abstract void C(CharSequence charSequence);

    public abstract k D(k.a aVar);

    public abstract void c(View view, ViewGroup.LayoutParams layoutParams);

    public void d(Context context) {
    }

    public abstract <T extends View> T e(int i);

    public abstract a f();

    public int g() {
        return -100;
    }

    public abstract MenuInflater h();

    public abstract ActionBar i();

    public abstract void j();

    public abstract void k();

    public abstract void n(Configuration configuration);

    public abstract void o(Bundle bundle);

    public abstract void p();

    public abstract void q(Bundle bundle);

    public abstract void r();

    public abstract void s(Bundle bundle);

    public abstract void t();

    public abstract void u();

    public abstract boolean w(int i);

    public abstract void x(int i);

    public abstract void y(View view);

    public abstract void z(View view, ViewGroup.LayoutParams layoutParams);
}
