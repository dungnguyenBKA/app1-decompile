package androidx.fragment.app;

import androidx.lifecycle.f;
import java.util.ArrayList;

public abstract class m {
    ArrayList<a> a = new ArrayList<>();
    int b;
    int c;
    int d;
    int e;
    int f;
    int g;
    boolean h;
    boolean i = true;
    String j;
    int k;
    CharSequence l;
    int m;
    CharSequence n;
    ArrayList<String> o;
    ArrayList<String> p;
    boolean q = false;

    /* access modifiers changed from: package-private */
    public static final class a {
        int a;
        Fragment b;
        int c;
        int d;
        int e;
        int f;
        f.b g;
        f.b h;

        a() {
        }

        a(int i, Fragment fragment) {
            this.a = i;
            this.b = fragment;
            f.b bVar = f.b.RESUMED;
            this.g = bVar;
            this.h = bVar;
        }
    }

    public m b(int i2, Fragment fragment, String str) {
        h(i2, fragment, str, 1);
        return this;
    }

    public m c(Fragment fragment, String str) {
        h(0, fragment, str, 1);
        return this;
    }

    /* access modifiers changed from: package-private */
    public void d(a aVar) {
        this.a.add(aVar);
        aVar.c = this.b;
        aVar.d = this.c;
        aVar.e = this.d;
        aVar.f = this.e;
    }

    public m e(String str) {
        if (this.i) {
            this.h = true;
            this.j = str;
            return this;
        }
        throw new IllegalStateException("This FragmentTransaction is not allowed to be added to the back stack.");
    }

    public abstract int f();

    public abstract int g();

    /* access modifiers changed from: package-private */
    public abstract void h(int i2, Fragment fragment, String str, int i3);

    public abstract m i(Fragment fragment);

    public abstract m j(Fragment fragment);

    public m k(int i2, Fragment fragment, String str) {
        if (i2 != 0) {
            h(i2, fragment, str, 2);
            return this;
        }
        throw new IllegalArgumentException("Must use non-zero containerViewId");
    }

    public m l(int i2, int i3) {
        this.b = i2;
        this.c = i3;
        this.d = 0;
        this.e = 0;
        return this;
    }

    public abstract m m(Fragment fragment);
}
