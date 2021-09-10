package com.caverock.androidsvg;

import android.content.res.AssetManager;
import android.graphics.Matrix;
import android.graphics.Picture;
import com.caverock.androidsvg.a;
import com.google.android.gms.ads.AdRequest;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.apache.http.HttpStatus;
import org.xml.sax.SAXException;

public class c {
    private static final List<m0> c = new ArrayList(0);
    public static final /* synthetic */ int d = 0;
    private e0 a = null;
    private a.g b = new a.g();

    /* access modifiers changed from: protected */
    public static class a implements Cloneable {
        public float b;
        public float c;
        public float d;
        public float e;

        public a(float f, float f2, float f3, float f4) {
            this.b = f;
            this.c = f2;
            this.d = f3;
            this.e = f4;
        }

        public float a() {
            return this.b + this.d;
        }

        public float b() {
            return this.c + this.e;
        }

        public String toString() {
            return "[" + this.b + " " + this.c + " " + this.d + " " + this.e + "]";
        }
    }

    protected static class a0 extends k {
        public o o;
        public o p;
        public o q;
        public o r;
        public o s;
        public o t;

        protected a0() {
        }
    }

    protected interface a1 {
    }

    protected static class b {
        public o a;
        public o b;
        public o c;
        public o d;

        public b(o oVar, o oVar2, o oVar3, o oVar4) {
            this.a = oVar;
            this.b = oVar2;
            this.c = oVar3;
            this.d = oVar4;
        }
    }

    protected static class b0 extends k0 implements i0 {
        protected b0() {
        }

        @Override // com.caverock.androidsvg.c.i0
        public List<m0> a() {
            return c.c;
        }

        @Override // com.caverock.androidsvg.c.i0
        public void c(m0 m0Var) {
        }
    }

    protected static class b1 extends m0 implements w0 {
        public String c;

        public b1(String str) {
            this.c = str;
        }

        @Override // com.caverock.androidsvg.c.w0
        public a1 g() {
            return null;
        }

        @Override // com.caverock.androidsvg.c.m0
        public String toString() {
            StringBuilder sb = new StringBuilder(b1.class.getSimpleName());
            sb.append(" '");
            return ic.l(sb, this.c, "'");
        }
    }

    /* renamed from: com.caverock.androidsvg.c$c  reason: collision with other inner class name */
    protected static class C0037c extends k {
        public o o;
        public o p;
        public o q;

        protected C0037c() {
        }
    }

    protected static class c0 extends k0 implements i0 {
        public Float h;

        protected c0() {
        }

        @Override // com.caverock.androidsvg.c.i0
        public List<m0> a() {
            return c.c;
        }

        @Override // com.caverock.androidsvg.c.i0
        public void c(m0 m0Var) {
        }
    }

    /* access modifiers changed from: protected */
    public enum c1 {
        px,
        em,
        ex,
        in,
        cm,
        mm,
        pt,
        pc,
        percent
    }

    protected static class d extends l implements s {
        public Boolean o;

        protected d() {
        }
    }

    /* access modifiers changed from: protected */
    public static class d0 implements Cloneable {
        public String A;
        public Boolean B;
        public Boolean C;
        public n0 D;
        public Float E;
        public String F;
        public a G;
        public String H;
        public n0 I;
        public Float J;
        public n0 K;
        public Float L;
        public h M;
        public long b = 0;
        public n0 c;
        public a d;
        public Float e;
        public n0 f;
        public Float g;
        public o h;
        public EnumC0038c i;
        public d j;
        public Float k;
        public o[] l;
        public o m;
        public Float n;
        public e o;
        public List<String> p;
        public o q;
        public Integer r;
        public b s;
        public f t;
        public g u;
        public e v;
        public Boolean w;
        public b x;
        public String y;
        public String z;

        public enum a {
            NonZero,
            EvenOdd
        }

        public enum b {
            Normal,
            Italic,
            Oblique
        }

        /* renamed from: com.caverock.androidsvg.c$d0$c  reason: collision with other inner class name */
        public enum EnumC0038c {
            Butt,
            Round,
            Square
        }

        public enum d {
            Miter,
            Round,
            Bevel
        }

        public enum e {
            Start,
            Middle,
            End
        }

        public enum f {
            None,
            Underline,
            Overline,
            LineThrough,
            Blink
        }

        public enum g {
            LTR,
            RTL
        }

        public enum h {
            None,
            NonScalingStroke
        }

        protected d0() {
        }

        public static d0 a() {
            d0 d0Var = new d0();
            d0Var.b = -1;
            e eVar = e.c;
            d0Var.c = eVar;
            a aVar = a.NonZero;
            d0Var.d = aVar;
            Float valueOf = Float.valueOf(1.0f);
            d0Var.e = valueOf;
            d0Var.f = null;
            d0Var.g = valueOf;
            d0Var.h = new o(1.0f);
            d0Var.i = EnumC0038c.Butt;
            d0Var.j = d.Miter;
            d0Var.k = Float.valueOf(4.0f);
            d0Var.l = null;
            d0Var.m = new o(0.0f);
            d0Var.n = valueOf;
            d0Var.o = eVar;
            d0Var.p = null;
            d0Var.q = new o(12.0f, c1.pt);
            d0Var.r = Integer.valueOf((int) HttpStatus.SC_BAD_REQUEST);
            d0Var.s = b.Normal;
            d0Var.t = f.None;
            d0Var.u = g.LTR;
            d0Var.v = e.Start;
            Boolean bool = Boolean.TRUE;
            d0Var.w = bool;
            d0Var.x = null;
            d0Var.y = null;
            d0Var.z = null;
            d0Var.A = null;
            d0Var.B = bool;
            d0Var.C = bool;
            d0Var.D = eVar;
            d0Var.E = valueOf;
            d0Var.F = null;
            d0Var.G = aVar;
            d0Var.H = null;
            d0Var.I = null;
            d0Var.J = valueOf;
            d0Var.K = null;
            d0Var.L = valueOf;
            d0Var.M = h.None;
            return d0Var;
        }

        /* access modifiers changed from: protected */
        @Override // java.lang.Object
        public Object clone() {
            try {
                d0 d0Var = (d0) super.clone();
                o[] oVarArr = this.l;
                if (oVarArr != null) {
                    d0Var.l = (o[]) oVarArr.clone();
                }
                return d0Var;
            } catch (CloneNotSupportedException e2) {
                throw new InternalError(e2.toString());
            }
        }
    }

    protected static class d1 extends l {
        public String o;
        public o p;
        public o q;
        public o r;
        public o s;

        protected d1() {
        }
    }

    protected static class e extends n0 {
        public static final e c = new e(0);
        public int b;

        public e(int i) {
            this.b = i;
        }

        public String toString() {
            return String.format("#%06x", Integer.valueOf(this.b));
        }
    }

    /* access modifiers changed from: protected */
    public static class e0 extends q0 {
        public o p;
        public o q;
        public o r;
        public o s;

        protected e0() {
        }
    }

    protected static class e1 extends q0 implements s {
        protected e1() {
        }
    }

    protected static class f extends n0 {
        private static f b = new f();

        private f() {
        }

        public static f a() {
            return b;
        }
    }

    protected interface f0 {
        Set<String> b();

        void d(Set<String> set);

        String e();

        void f(Set<String> set);

        void h(Set<String> set);

        Set<String> i();

        void j(String str);

        void l(Set<String> set);

        Set<String> m();

        Set<String> n();
    }

    protected static class g extends l implements s {
        protected g() {
        }
    }

    protected static class g0 extends j0 implements i0, f0 {
        public List<m0> i = new ArrayList();
        public Set<String> j = null;
        public String k = null;
        public Set<String> l = null;
        public Set<String> m = null;

        protected g0() {
        }

        @Override // com.caverock.androidsvg.c.i0
        public List<m0> a() {
            return this.i;
        }

        @Override // com.caverock.androidsvg.c.f0
        public Set<String> b() {
            return null;
        }

        @Override // com.caverock.androidsvg.c.i0
        public void c(m0 m0Var) {
            this.i.add(m0Var);
        }

        @Override // com.caverock.androidsvg.c.f0
        public void d(Set<String> set) {
            this.l = set;
        }

        @Override // com.caverock.androidsvg.c.f0
        public String e() {
            return this.k;
        }

        @Override // com.caverock.androidsvg.c.f0
        public void f(Set<String> set) {
            this.m = set;
        }

        @Override // com.caverock.androidsvg.c.f0
        public void h(Set<String> set) {
            this.j = set;
        }

        @Override // com.caverock.androidsvg.c.f0
        public Set<String> i() {
            return this.j;
        }

        @Override // com.caverock.androidsvg.c.f0
        public void j(String str) {
            this.k = str;
        }

        @Override // com.caverock.androidsvg.c.f0
        public void l(Set<String> set) {
        }

        @Override // com.caverock.androidsvg.c.f0
        public Set<String> m() {
            return this.l;
        }

        @Override // com.caverock.androidsvg.c.f0
        public Set<String> n() {
            return this.m;
        }
    }

    protected static class h extends k {
        public o o;
        public o p;
        public o q;
        public o r;

        protected h() {
        }
    }

    protected static class h0 extends j0 implements f0 {
        public Set<String> i = null;
        public String j = null;
        public Set<String> k = null;
        public Set<String> l = null;
        public Set<String> m = null;

        protected h0() {
        }

        @Override // com.caverock.androidsvg.c.f0
        public Set<String> b() {
            return this.k;
        }

        @Override // com.caverock.androidsvg.c.f0
        public void d(Set<String> set) {
            this.l = set;
        }

        @Override // com.caverock.androidsvg.c.f0
        public String e() {
            return this.j;
        }

        @Override // com.caverock.androidsvg.c.f0
        public void f(Set<String> set) {
            this.m = set;
        }

        @Override // com.caverock.androidsvg.c.f0
        public void h(Set<String> set) {
            this.i = set;
        }

        @Override // com.caverock.androidsvg.c.f0
        public Set<String> i() {
            return this.i;
        }

        @Override // com.caverock.androidsvg.c.f0
        public void j(String str) {
            this.j = str;
        }

        @Override // com.caverock.androidsvg.c.f0
        public void l(Set<String> set) {
            this.k = set;
        }

        @Override // com.caverock.androidsvg.c.f0
        public Set<String> m() {
            return this.l;
        }

        @Override // com.caverock.androidsvg.c.f0
        public Set<String> n() {
            return this.m;
        }
    }

    protected static class i extends k0 implements i0 {
        public List<m0> h = new ArrayList();
        public Boolean i;
        public Matrix j;
        public j k;
        public String l;

        protected i() {
        }

        @Override // com.caverock.androidsvg.c.i0
        public List<m0> a() {
            return this.h;
        }

        @Override // com.caverock.androidsvg.c.i0
        public void c(m0 m0Var) {
            if (m0Var instanceof c0) {
                this.h.add(m0Var);
                return;
            }
            throw new SAXException("Gradient elements cannot contain " + m0Var + " elements.");
        }
    }

    /* access modifiers changed from: protected */
    public interface i0 {
        List<m0> a();

        void c(m0 m0Var);
    }

    protected enum j {
        pad,
        reflect,
        repeat
    }

    protected static class j0 extends k0 {
        public a h = null;

        protected j0() {
        }
    }

    protected static abstract class k extends h0 implements m {
        public Matrix n;

        protected k() {
        }

        @Override // com.caverock.androidsvg.c.m
        public void k(Matrix matrix) {
            this.n = matrix;
        }
    }

    /* access modifiers changed from: protected */
    public static class k0 extends m0 {
        public String c = null;
        public Boolean d = null;
        public d0 e = null;
        public d0 f = null;
        public List<String> g = null;

        protected k0() {
        }
    }

    protected static class l extends g0 implements m {
        public Matrix n;

        protected l() {
        }

        @Override // com.caverock.androidsvg.c.m
        public void k(Matrix matrix) {
            this.n = matrix;
        }
    }

    protected static class l0 extends i {
        public o m;
        public o n;
        public o o;
        public o p;

        protected l0() {
        }
    }

    protected interface m {
        void k(Matrix matrix);
    }

    /* access modifiers changed from: protected */
    public static class m0 {
        public c a;
        public i0 b;

        protected m0() {
        }

        public String toString() {
            return getClass().getSimpleName();
        }
    }

    protected static class n extends o0 implements m {
        public String o;
        public o p;
        public o q;
        public o r;
        public o s;
        public Matrix t;

        protected n() {
        }

        @Override // com.caverock.androidsvg.c.m
        public void k(Matrix matrix) {
            this.t = matrix;
        }
    }

    protected static abstract class n0 implements Cloneable {
        protected n0() {
        }
    }

    /* access modifiers changed from: protected */
    public static class o0 extends g0 {
        public b n = null;

        protected o0() {
        }
    }

    protected static class p extends k {
        public o o;
        public o p;
        public o q;
        public o r;

        protected p() {
        }
    }

    protected static class p0 extends i {
        public o m;
        public o n;
        public o o;
        public o p;
        public o q;

        protected p0() {
        }
    }

    protected static class q extends q0 implements s {
        public boolean p;
        public o q;
        public o r;
        public o s;
        public o t;
        public Float u;

        protected q() {
        }
    }

    /* access modifiers changed from: protected */
    public static class q0 extends o0 {
        public a o;

        protected q0() {
        }
    }

    protected static class r extends g0 implements s {
        public Boolean n;
        public Boolean o;
        public o p;
        public o q;
        public o r;
        public o s;

        protected r() {
        }
    }

    protected static class r0 extends l {
        protected r0() {
        }
    }

    protected interface s {
    }

    protected static class s0 extends q0 implements s {
        protected s0() {
        }
    }

    protected static class t extends n0 {
        public String b;
        public n0 c;

        public t(String str, n0 n0Var) {
            this.b = str;
            this.c = n0Var;
        }

        public String toString() {
            return String.valueOf(this.b) + " " + this.c;
        }
    }

    protected static class t0 extends x0 implements w0 {
        public String n;
        private a1 o;

        protected t0() {
        }

        @Override // com.caverock.androidsvg.c.w0
        public a1 g() {
            return this.o;
        }

        public void o(a1 a1Var) {
            this.o = a1Var;
        }
    }

    protected static class u extends k {
        public v o;
        public Float p;

        protected u() {
        }
    }

    protected static class u0 extends z0 implements w0 {
        private a1 r;

        protected u0() {
        }

        @Override // com.caverock.androidsvg.c.w0
        public a1 g() {
            return this.r;
        }

        public void o(a1 a1Var) {
            this.r = a1Var;
        }
    }

    protected static class v implements w {
        private List<Byte> a;
        private List<Float> b;

        public v() {
            this.a = null;
            this.b = null;
            this.a = new ArrayList();
            this.b = new ArrayList();
        }

        @Override // com.caverock.androidsvg.c.w
        public void a(float f, float f2, float f3, float f4) {
            this.a.add((byte) 3);
            this.b.add(Float.valueOf(f));
            this.b.add(Float.valueOf(f2));
            this.b.add(Float.valueOf(f3));
            this.b.add(Float.valueOf(f4));
        }

        @Override // com.caverock.androidsvg.c.w
        public void b(float f, float f2) {
            this.a.add((byte) 0);
            this.b.add(Float.valueOf(f));
            this.b.add(Float.valueOf(f2));
        }

        @Override // com.caverock.androidsvg.c.w
        public void c(float f, float f2, float f3, float f4, float f5, float f6) {
            this.a.add((byte) 2);
            this.b.add(Float.valueOf(f));
            this.b.add(Float.valueOf(f2));
            this.b.add(Float.valueOf(f3));
            this.b.add(Float.valueOf(f4));
            this.b.add(Float.valueOf(f5));
            this.b.add(Float.valueOf(f6));
        }

        @Override // com.caverock.androidsvg.c.w
        public void close() {
            this.a.add((byte) 8);
        }

        @Override // com.caverock.androidsvg.c.w
        public void d(float f, float f2, float f3, boolean z, boolean z2, float f4, float f5) {
            this.a.add(Byte.valueOf((byte) ((z ? 2 : 0) | 4 | (z2 ? 1 : 0))));
            this.b.add(Float.valueOf(f));
            this.b.add(Float.valueOf(f2));
            this.b.add(Float.valueOf(f3));
            this.b.add(Float.valueOf(f4));
            this.b.add(Float.valueOf(f5));
        }

        @Override // com.caverock.androidsvg.c.w
        public void e(float f, float f2) {
            this.a.add((byte) 1);
            this.b.add(Float.valueOf(f));
            this.b.add(Float.valueOf(f2));
        }

        public void f(w wVar) {
            Iterator<Float> it = this.b.iterator();
            for (Byte b2 : this.a) {
                byte byteValue = b2.byteValue();
                if (byteValue == 0) {
                    wVar.b(it.next().floatValue(), it.next().floatValue());
                } else if (byteValue == 1) {
                    wVar.e(it.next().floatValue(), it.next().floatValue());
                } else if (byteValue == 2) {
                    wVar.c(it.next().floatValue(), it.next().floatValue(), it.next().floatValue(), it.next().floatValue(), it.next().floatValue(), it.next().floatValue());
                } else if (byteValue == 3) {
                    wVar.a(it.next().floatValue(), it.next().floatValue(), it.next().floatValue(), it.next().floatValue());
                } else if (byteValue != 8) {
                    wVar.d(it.next().floatValue(), it.next().floatValue(), it.next().floatValue(), (byteValue & 2) != 0, (byteValue & 1) != 0, it.next().floatValue(), it.next().floatValue());
                } else {
                    wVar.close();
                }
            }
        }

        public boolean g() {
            return this.a.isEmpty();
        }
    }

    protected static class v0 extends z0 implements a1, m {
        public Matrix r;

        protected v0() {
        }

        @Override // com.caverock.androidsvg.c.m
        public void k(Matrix matrix) {
            this.r = matrix;
        }
    }

    protected interface w {
        void a(float f, float f2, float f3, float f4);

        void b(float f, float f2);

        void c(float f, float f2, float f3, float f4, float f5, float f6);

        void close();

        void d(float f, float f2, float f3, boolean z, boolean z2, float f4, float f5);

        void e(float f, float f2);
    }

    protected interface w0 {
        a1 g();
    }

    protected static class x extends q0 implements s {
        public Boolean p;
        public Boolean q;
        public Matrix r;
        public o s;
        public o t;
        public o u;
        public o v;
        public String w;

        protected x() {
        }
    }

    protected static class x0 extends g0 {
        protected x0() {
        }

        @Override // com.caverock.androidsvg.c.g0, com.caverock.androidsvg.c.i0
        public void c(m0 m0Var) {
            if (m0Var instanceof w0) {
                this.i.add(m0Var);
                return;
            }
            throw new SAXException("Text content elements cannot contain " + m0Var + " elements.");
        }
    }

    protected static class y extends k {
        public float[] o;

        protected y() {
        }
    }

    protected static class y0 extends x0 implements w0 {
        public String n;
        public o o;
        private a1 p;

        protected y0() {
        }

        @Override // com.caverock.androidsvg.c.w0
        public a1 g() {
            return this.p;
        }

        public void o(a1 a1Var) {
            this.p = a1Var;
        }
    }

    protected static class z extends y {
        protected z() {
        }
    }

    protected static class z0 extends x0 {
        public List<o> n;
        public List<o> o;
        public List<o> p;
        public List<o> q;

        protected z0() {
        }
    }

    protected c() {
    }

    private k0 d(i0 i0Var, String str) {
        k0 d2;
        k0 k0Var = (k0) i0Var;
        if (str.equals(k0Var.c)) {
            return k0Var;
        }
        for (m0 m0Var : i0Var.a()) {
            if (m0Var instanceof k0) {
                k0 k0Var2 = (k0) m0Var;
                if (str.equals(k0Var2.c)) {
                    return k0Var2;
                }
                if ((m0Var instanceof i0) && (d2 = d((i0) m0Var, str)) != null) {
                    return d2;
                }
            }
        }
        return null;
    }

    public static c e(AssetManager assetManager, String str) {
        f fVar = new f();
        InputStream open = assetManager.open(str);
        c e2 = fVar.e(open);
        open.close();
        return e2;
    }

    public static c f(InputStream inputStream) {
        return new f().e(inputStream);
    }

    /* access modifiers changed from: protected */
    public void b(a.g gVar) {
        this.b.b(gVar);
    }

    /* access modifiers changed from: protected */
    public List<a.f> c() {
        return this.b.c();
    }

    /* access modifiers changed from: protected */
    public e0 g() {
        return this.a;
    }

    /* access modifiers changed from: protected */
    public boolean h() {
        return !this.b.d();
    }

    public Picture i() {
        float f2;
        o oVar = this.a.r;
        if (oVar == null) {
            return j(AdRequest.MAX_CONTENT_URL_LENGTH, AdRequest.MAX_CONTENT_URL_LENGTH);
        }
        float b2 = oVar.b(96.0f);
        e0 e0Var = this.a;
        a aVar = e0Var.o;
        if (aVar != null) {
            f2 = (aVar.e * b2) / aVar.d;
        } else {
            o oVar2 = e0Var.s;
            f2 = oVar2 != null ? oVar2.b(96.0f) : b2;
        }
        return j((int) Math.ceil((double) b2), (int) Math.ceil((double) f2));
    }

    public Picture j(int i2, int i3) {
        Picture picture = new Picture();
        new d(picture.beginRecording(i2, i3), new a(0.0f, 0.0f, (float) i2, (float) i3), 96.0f).V(this, null, null, false);
        picture.endRecording();
        return picture;
    }

    /* access modifiers changed from: protected */
    public m0 k(String str) {
        if (str == null || str.length() <= 1 || !str.startsWith("#")) {
            return null;
        }
        String substring = str.substring(1);
        if (substring.equals(this.a.c)) {
            return this.a;
        }
        return d(this.a, substring);
    }

    public void l(float f2) {
        e0 e0Var = this.a;
        if (e0Var != null) {
            e0Var.s = new o(f2);
            return;
        }
        throw new IllegalArgumentException("SVG document is empty");
    }

    public void m(float f2) {
        e0 e0Var = this.a;
        if (e0Var != null) {
            e0Var.r = new o(f2);
            return;
        }
        throw new IllegalArgumentException("SVG document is empty");
    }

    /* access modifiers changed from: protected */
    public void n(e0 e0Var) {
        this.a = e0Var;
    }

    /* access modifiers changed from: protected */
    public static class o implements Cloneable {
        private static /* synthetic */ int[] d;
        float b;
        c1 c;

        public o(float f, c1 c1Var) {
            this.b = 0.0f;
            this.c = c1.px;
            this.b = f;
            this.c = c1Var;
        }

        /* JADX WARNING: Can't wrap try/catch for region: R(26:3|4|5|6|8|9|10|12|13|14|15|16|18|19|20|22|23|24|25|26|27|28|30|31|32|34) */
        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing exception handler attribute for start block: B:14:0x0017 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:24:0x0021 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:26:0x0023 */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        static /* synthetic */ int[] a() {
            /*
                int[] r0 = com.caverock.androidsvg.c.o.d
                if (r0 == 0) goto L_0x0005
                return r0
            L_0x0005:
                com.caverock.androidsvg.c.c1.values()
                r0 = 9
                int[] r1 = new int[r0]
                r2 = 5
                r3 = 4
                r1[r3] = r2     // Catch:{ NoSuchFieldError -> 0x0010 }
            L_0x0010:
                r4 = 2
                r5 = 1
                r1[r5] = r4     // Catch:{ NoSuchFieldError -> 0x0014 }
            L_0x0014:
                r6 = 3
                r1[r4] = r6     // Catch:{ NoSuchFieldError -> 0x0017 }
            L_0x0017:
                r1[r6] = r3     // Catch:{ NoSuchFieldError -> 0x0019 }
            L_0x0019:
                r3 = 6
                r1[r2] = r3     // Catch:{ NoSuchFieldError -> 0x001c }
            L_0x001c:
                r2 = 8
                r4 = 7
                r1[r4] = r2     // Catch:{ NoSuchFieldError -> 0x0021 }
            L_0x0021:
                r1[r2] = r0     // Catch:{ NoSuchFieldError -> 0x0023 }
            L_0x0023:
                r1[r3] = r4     // Catch:{ NoSuchFieldError -> 0x0025 }
            L_0x0025:
                r0 = 0
                r1[r0] = r5     // Catch:{ NoSuchFieldError -> 0x0028 }
            L_0x0028:
                com.caverock.androidsvg.c.o.d = r1
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: com.caverock.androidsvg.c.o.a():int[]");
        }

        public float b(float f) {
            int i = a()[this.c.ordinal()];
            if (i == 1) {
                return this.b;
            }
            switch (i) {
                case 4:
                    return this.b * f;
                case 5:
                    return (this.b * f) / 2.54f;
                case 6:
                    return (this.b * f) / 25.4f;
                case 7:
                    return (this.b * f) / 72.0f;
                case 8:
                    return (this.b * f) / 6.0f;
                default:
                    return this.b;
            }
        }

        public float c(d dVar) {
            if (this.c != c1.percent) {
                return e(dVar);
            }
            a J = dVar.J();
            if (J == null) {
                return this.b;
            }
            float f = J.d;
            float f2 = J.e;
            if (f == f2) {
                return (this.b * f) / 100.0f;
            }
            float f3 = f2 * f2;
            return (this.b * ((float) (Math.sqrt((double) (f3 + (f * f))) / 1.414213562373095d))) / 100.0f;
        }

        public float d(d dVar, float f) {
            if (this.c == c1.percent) {
                return (this.b * f) / 100.0f;
            }
            return e(dVar);
        }

        public float e(d dVar) {
            switch (a()[this.c.ordinal()]) {
                case 1:
                    return this.b;
                case 2:
                    return this.b * dVar.H();
                case 3:
                    return this.b * dVar.I();
                case 4:
                    return this.b * dVar.K();
                case 5:
                    return (this.b * dVar.K()) / 2.54f;
                case 6:
                    return (this.b * dVar.K()) / 25.4f;
                case 7:
                    return (this.b * dVar.K()) / 72.0f;
                case 8:
                    return (this.b * dVar.K()) / 6.0f;
                case 9:
                    a J = dVar.J();
                    if (J == null) {
                        return this.b;
                    }
                    return (this.b * J.d) / 100.0f;
                default:
                    return this.b;
            }
        }

        public float f(d dVar) {
            if (this.c != c1.percent) {
                return e(dVar);
            }
            a J = dVar.J();
            if (J == null) {
                return this.b;
            }
            return (this.b * J.e) / 100.0f;
        }

        public boolean g() {
            return this.b < 0.0f;
        }

        public boolean h() {
            return this.b == 0.0f;
        }

        public String toString() {
            return String.valueOf(String.valueOf(this.b)) + this.c;
        }

        public o(float f) {
            this.b = 0.0f;
            c1 c1Var = c1.px;
            this.c = c1Var;
            this.b = f;
            this.c = c1Var;
        }
    }
}
