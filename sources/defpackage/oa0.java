package defpackage;

import android.view.View;
import android.view.ViewParent;
import androidx.core.app.b;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Objects;

/* renamed from: oa0  reason: default package */
public class oa0 {
    private final HashMap<View, String> a = new HashMap<>();
    private final HashMap<View, a> b = new HashMap<>();
    private final HashMap<String, View> c = new HashMap<>();
    private final HashSet<View> d = new HashSet<>();
    private final HashSet<String> e = new HashSet<>();
    private final HashSet<String> f = new HashSet<>();
    private final HashMap<String, String> g = new HashMap<>();
    private boolean h;

    /* renamed from: oa0$a */
    public static class a {
        private final x90 a;
        private final ArrayList<String> b;

        public x90 a() {
            return this.a;
        }

        public ArrayList<String> b() {
            return this.b;
        }
    }

    public String a(View view) {
        if (this.a.size() == 0) {
            return null;
        }
        String str = this.a.get(view);
        if (str != null) {
            this.a.remove(view);
        }
        return str;
    }

    public String b(String str) {
        return this.g.get(str);
    }

    public HashSet<String> c() {
        return this.e;
    }

    public View d(String str) {
        return this.c.get(str);
    }

    public a e(View view) {
        a aVar = this.b.get(view);
        if (aVar != null) {
            this.b.remove(view);
        }
        return aVar;
    }

    public HashSet<String> f() {
        return this.f;
    }

    public wa0 g(View view) {
        return this.d.contains(view) ? wa0.PARENT_VIEW : this.h ? wa0.OBSTRUCTION_VIEW : wa0.UNDERLYING_VIEW;
    }

    public void h() {
        String str;
        v90 a2 = v90.a();
        if (a2 != null) {
            for (u90 u90 : a2.e()) {
                View f2 = u90.f();
                if (u90.g()) {
                    String h2 = u90.h();
                    if (f2 != null) {
                        if (!f2.hasWindowFocus()) {
                            str = "noWindowFocus";
                        } else {
                            HashSet hashSet = new HashSet();
                            View view = f2;
                            while (true) {
                                if (view == null) {
                                    this.d.addAll(hashSet);
                                    str = null;
                                    break;
                                }
                                String x = b.x(view);
                                if (x != null) {
                                    str = x;
                                    break;
                                }
                                hashSet.add(view);
                                ViewParent parent = view.getParent();
                                view = parent instanceof View ? (View) parent : null;
                            }
                        }
                        if (str == null) {
                            this.e.add(h2);
                            this.a.put(f2, h2);
                            Iterator<x90> it = u90.e().iterator();
                            if (it.hasNext()) {
                                Objects.requireNonNull(it.next());
                                throw null;
                            }
                        } else {
                            this.f.add(h2);
                            this.c.put(h2, f2);
                            this.g.put(h2, str);
                        }
                    } else {
                        this.f.add(h2);
                        this.g.put(h2, "noAdView");
                    }
                }
            }
        }
    }

    public void i() {
        this.a.clear();
        this.b.clear();
        this.c.clear();
        this.d.clear();
        this.e.clear();
        this.f.clear();
        this.g.clear();
        this.h = false;
    }

    public void j() {
        this.h = true;
    }
}
