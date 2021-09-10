package com.airbnb.lottie;

import android.graphics.Rect;
import java.util.HashSet;
import java.util.List;
import java.util.Map;

public class e {
    private final p a = new p();
    private final HashSet<String> b = new HashSet<>();
    private Map<String, List<ca>> c;
    private Map<String, h> d;
    private Map<String, m8> e;
    private List<r8> f;
    private f0<n8> g;
    private b0<ca> h;
    private List<ca> i;
    private Rect j;
    private float k;
    private float l;
    private float m;
    private boolean n;
    private int o = 0;

    public void a(String str) {
        zb.b(str);
        this.b.add(str);
    }

    public Rect b() {
        return this.j;
    }

    public f0<n8> c() {
        return this.g;
    }

    public float d() {
        return (float) ((long) ((e() / this.m) * 1000.0f));
    }

    public float e() {
        return this.l - this.k;
    }

    public float f() {
        return this.l;
    }

    public Map<String, m8> g() {
        return this.e;
    }

    public float h() {
        return this.m;
    }

    public Map<String, h> i() {
        return this.d;
    }

    public List<ca> j() {
        return this.i;
    }

    public int k() {
        return this.o;
    }

    public p l() {
        return this.a;
    }

    public List<ca> m(String str) {
        return this.c.get(str);
    }

    public float n() {
        return this.k;
    }

    public boolean o() {
        return this.n;
    }

    public void p(int i2) {
        this.o += i2;
    }

    public void q(Rect rect, float f2, float f3, float f4, List<ca> list, b0<ca> b0Var, Map<String, List<ca>> map, Map<String, h> map2, f0<n8> f0Var, Map<String, m8> map3, List<r8> list2) {
        this.j = rect;
        this.k = f2;
        this.l = f3;
        this.m = f4;
        this.i = list;
        this.h = b0Var;
        this.c = map;
        this.d = map2;
        this.g = f0Var;
        this.e = map3;
        this.f = list2;
    }

    public ca r(long j2) {
        return this.h.h(j2, null);
    }

    public void s(boolean z) {
        this.n = z;
    }

    public void t(boolean z) {
        this.a.b(z);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("LottieComposition:\n");
        for (ca caVar : this.i) {
            sb.append(caVar.w("\t"));
        }
        return sb.toString();
    }
}
