package defpackage;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.Typeface;
import com.airbnb.lottie.e;
import com.airbnb.lottie.g;
import com.airbnb.lottie.l;
import defpackage.l8;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* renamed from: ga  reason: default package */
public class ga extends z9 {
    private final Paint A = new a(this, 1);
    private final Paint B = new b(this, 1);
    private final Map<n8, List<c7>> C = new HashMap();
    private final b0<String> D = new b0<>(10);
    private final f8 E;
    private final g F;
    private final e G;
    private s7<Integer, Integer> H;
    private s7<Integer, Integer> I;
    private s7<Integer, Integer> J;
    private s7<Integer, Integer> K;
    private s7<Float, Float> L;
    private s7<Float, Float> M;
    private s7<Float, Float> N;
    private s7<Float, Float> O;
    private s7<Float, Float> P;
    private final StringBuilder x = new StringBuilder(2);
    private final RectF y = new RectF();
    private final Matrix z = new Matrix();

    /* renamed from: ga$a */
    class a extends Paint {
        a(ga gaVar, int i) {
            super(i);
            setStyle(Paint.Style.FILL);
        }
    }

    /* renamed from: ga$b */
    class b extends Paint {
        b(ga gaVar, int i) {
            super(i);
            setStyle(Paint.Style.STROKE);
        }
    }

    ga(g gVar, ca caVar) {
        super(gVar, caVar);
        u8 u8Var;
        u8 u8Var2;
        t8 t8Var;
        t8 t8Var2;
        this.F = gVar;
        this.G = caVar.a();
        f8 d = caVar.q().d();
        this.E = d;
        d.a(this);
        i(d);
        d9 r = caVar.r();
        if (!(r == null || (t8Var2 = r.a) == null)) {
            s7<Integer, Integer> a2 = t8Var2.a();
            this.H = a2;
            a2.a(this);
            i(this.H);
        }
        if (!(r == null || (t8Var = r.b) == null)) {
            s7<Integer, Integer> a3 = t8Var.a();
            this.J = a3;
            a3.a(this);
            i(this.J);
        }
        if (!(r == null || (u8Var2 = r.c) == null)) {
            s7<Float, Float> a4 = u8Var2.a();
            this.L = a4;
            a4.a(this);
            i(this.L);
        }
        if (r != null && (u8Var = r.d) != null) {
            s7<Float, Float> a5 = u8Var.a();
            this.N = a5;
            a5.a(this);
            i(this.N);
        }
    }

    private void u(l8.a aVar, Canvas canvas, float f) {
        int ordinal = aVar.ordinal();
        if (ordinal == 1) {
            canvas.translate(-f, 0.0f);
        } else if (ordinal == 2) {
            canvas.translate((-f) / 2.0f, 0.0f);
        }
    }

    private void v(String str, Paint paint, Canvas canvas) {
        if (paint.getColor() != 0) {
            if (paint.getStyle() != Paint.Style.STROKE || paint.getStrokeWidth() != 0.0f) {
                canvas.drawText(str, 0, str.length(), 0.0f, 0.0f, paint);
            }
        }
    }

    private void w(Path path, Paint paint, Canvas canvas) {
        if (paint.getColor() != 0) {
            if (paint.getStyle() != Paint.Style.STROKE || paint.getStrokeWidth() != 0.0f) {
                canvas.drawPath(path, paint);
            }
        }
    }

    private List<String> x(String str) {
        return Arrays.asList(str.replaceAll("\r\n", "\r").replaceAll("\n", "\r").split("\r"));
    }

    @Override // defpackage.d7, defpackage.z9
    public void d(RectF rectF, Matrix matrix, boolean z2) {
        super.d(rectF, matrix, z2);
        rectF.set(0.0f, 0.0f, (float) this.G.b().width(), (float) this.G.b().height());
    }

    @Override // defpackage.p8, defpackage.z9
    public <T> void g(T t, gc<T> gcVar) {
        this.v.c(t, gcVar);
        if (t == l.a) {
            s7<Integer, Integer> s7Var = this.I;
            if (s7Var != null) {
                o(s7Var);
            }
            if (gcVar == null) {
                this.I = null;
                return;
            }
            h8 h8Var = new h8(gcVar, null);
            this.I = h8Var;
            h8Var.a(this);
            i(this.I);
        } else if (t == l.b) {
            s7<Integer, Integer> s7Var2 = this.K;
            if (s7Var2 != null) {
                o(s7Var2);
            }
            if (gcVar == null) {
                this.K = null;
                return;
            }
            h8 h8Var2 = new h8(gcVar, null);
            this.K = h8Var2;
            h8Var2.a(this);
            i(this.K);
        } else if (t == l.o) {
            s7<Float, Float> s7Var3 = this.M;
            if (s7Var3 != null) {
                o(s7Var3);
            }
            if (gcVar == null) {
                this.M = null;
                return;
            }
            h8 h8Var3 = new h8(gcVar, null);
            this.M = h8Var3;
            h8Var3.a(this);
            i(this.M);
        } else if (t == l.p) {
            s7<Float, Float> s7Var4 = this.O;
            if (s7Var4 != null) {
                o(s7Var4);
            }
            if (gcVar == null) {
                this.O = null;
                return;
            }
            h8 h8Var4 = new h8(gcVar, null);
            this.O = h8Var4;
            h8Var4.a(this);
            i(this.O);
        } else if (t == l.B) {
            s7<Float, Float> s7Var5 = this.P;
            if (s7Var5 != null) {
                o(s7Var5);
            }
            if (gcVar == null) {
                this.P = null;
                return;
            }
            h8 h8Var5 = new h8(gcVar, null);
            this.P = h8Var5;
            h8Var5.a(this);
            i(this.P);
        }
    }

    /* access modifiers changed from: package-private */
    @Override // defpackage.z9
    public void l(Canvas canvas, Matrix matrix, int i) {
        float f;
        List<String> list;
        String str;
        float f2;
        float f3;
        float f4;
        int i2;
        List<String> list2;
        List<c7> list3;
        float f5;
        String str2;
        int i3;
        canvas.save();
        if (!this.F.H()) {
            canvas.setMatrix(matrix);
        }
        l8 l8Var = (l8) this.E.g();
        m8 m8Var = this.G.g().get(l8Var.b);
        if (m8Var == null) {
            canvas.restore();
            return;
        }
        s7<Integer, Integer> s7Var = this.I;
        if (s7Var != null) {
            this.A.setColor(s7Var.g().intValue());
        } else {
            s7<Integer, Integer> s7Var2 = this.H;
            if (s7Var2 != null) {
                this.A.setColor(s7Var2.g().intValue());
            } else {
                this.A.setColor(l8Var.h);
            }
        }
        s7<Integer, Integer> s7Var3 = this.K;
        if (s7Var3 != null) {
            this.B.setColor(s7Var3.g().intValue());
        } else {
            s7<Integer, Integer> s7Var4 = this.J;
            if (s7Var4 != null) {
                this.B.setColor(s7Var4.g().intValue());
            } else {
                this.B.setColor(l8Var.i);
            }
        }
        int intValue = ((this.v.h() == null ? 100 : this.v.h().g().intValue()) * 255) / 100;
        this.A.setAlpha(intValue);
        this.B.setAlpha(intValue);
        s7<Float, Float> s7Var5 = this.M;
        if (s7Var5 != null) {
            this.B.setStrokeWidth(s7Var5.g().floatValue());
        } else {
            s7<Float, Float> s7Var6 = this.L;
            if (s7Var6 != null) {
                this.B.setStrokeWidth(s7Var6.g().floatValue());
            } else {
                this.B.setStrokeWidth(dc.c() * l8Var.j * dc.d(matrix));
            }
        }
        if (this.F.H()) {
            s7<Float, Float> s7Var7 = this.P;
            if (s7Var7 != null) {
                f3 = s7Var7.g().floatValue();
            } else {
                f3 = l8Var.c;
            }
            float f6 = f3 / 100.0f;
            float d = dc.d(matrix);
            String str3 = l8Var.a;
            float c = dc.c() * l8Var.f;
            List<String> x2 = x(str3);
            int size = x2.size();
            int i4 = 0;
            while (i4 < size) {
                String str4 = x2.get(i4);
                float f7 = 0.0f;
                int i5 = 0;
                while (i5 < str4.length()) {
                    n8 e = this.G.c().e(n8.c(str4.charAt(i5), m8Var.a(), m8Var.c()));
                    if (e == null) {
                        i3 = i4;
                        str2 = str4;
                    } else {
                        double d2 = (double) f7;
                        double b2 = e.b();
                        i3 = i4;
                        str2 = str4;
                        double d3 = (double) f6;
                        Double.isNaN(d3);
                        Double.isNaN(d3);
                        Double.isNaN(d3);
                        double d4 = b2 * d3;
                        double c2 = (double) dc.c();
                        Double.isNaN(c2);
                        Double.isNaN(c2);
                        Double.isNaN(c2);
                        double d5 = d4 * c2;
                        double d6 = (double) d;
                        Double.isNaN(d6);
                        Double.isNaN(d6);
                        Double.isNaN(d6);
                        Double.isNaN(d2);
                        Double.isNaN(d2);
                        Double.isNaN(d2);
                        f7 = (float) ((d5 * d6) + d2);
                    }
                    i5++;
                    i4 = i3;
                    str4 = str2;
                }
                canvas.save();
                u(l8Var.d, canvas, f7);
                canvas.translate(0.0f, (((float) i4) * c) - ((((float) (size - 1)) * c) / 2.0f));
                int i6 = 0;
                for (String str5 = str4; i6 < str5.length(); str5 = str5) {
                    n8 e2 = this.G.c().e(n8.c(str5.charAt(i6), m8Var.a(), m8Var.c()));
                    if (e2 == null) {
                        list2 = x2;
                        i2 = size;
                        f4 = c;
                    } else {
                        if (this.C.containsKey(e2)) {
                            list3 = this.C.get(e2);
                            list2 = x2;
                            i2 = size;
                            f4 = c;
                        } else {
                            List<u9> a2 = e2.a();
                            int size2 = a2.size();
                            ArrayList arrayList = new ArrayList(size2);
                            list2 = x2;
                            int i7 = 0;
                            while (i7 < size2) {
                                arrayList.add(new c7(this.F, this, a2.get(i7)));
                                i7++;
                                size = size;
                                a2 = a2;
                                c = c;
                            }
                            i2 = size;
                            f4 = c;
                            this.C.put(e2, arrayList);
                            list3 = arrayList;
                        }
                        int i8 = 0;
                        while (i8 < list3.size()) {
                            Path path = list3.get(i8).getPath();
                            path.computeBounds(this.y, false);
                            this.z.set(matrix);
                            this.z.preTranslate(0.0f, (-l8Var.g) * dc.c());
                            this.z.preScale(f6, f6);
                            path.transform(this.z);
                            if (l8Var.k) {
                                w(path, this.A, canvas);
                                w(path, this.B, canvas);
                            } else {
                                w(path, this.B, canvas);
                                w(path, this.A, canvas);
                            }
                            i8++;
                            list3 = list3;
                        }
                        float c3 = dc.c() * ((float) e2.b()) * f6 * d;
                        float f8 = ((float) l8Var.e) / 10.0f;
                        s7<Float, Float> s7Var8 = this.O;
                        if (s7Var8 != null) {
                            f5 = s7Var8.g().floatValue();
                        } else {
                            s7<Float, Float> s7Var9 = this.N;
                            if (s7Var9 != null) {
                                f5 = s7Var9.g().floatValue();
                            }
                            canvas.translate((f8 * d) + c3, 0.0f);
                        }
                        f8 += f5;
                        canvas.translate((f8 * d) + c3, 0.0f);
                    }
                    i6++;
                    x2 = list2;
                    size = i2;
                    c = f4;
                }
                canvas.restore();
                i4++;
            }
        } else {
            float d7 = dc.d(matrix);
            Typeface r = this.F.r(m8Var.a(), m8Var.c());
            if (r != null) {
                String str6 = l8Var.a;
                Objects.requireNonNull(this.F);
                this.A.setTypeface(r);
                s7<Float, Float> s7Var10 = this.P;
                if (s7Var10 != null) {
                    f = s7Var10.g().floatValue();
                } else {
                    f = l8Var.c;
                }
                this.A.setTextSize(dc.c() * f);
                this.B.setTypeface(this.A.getTypeface());
                this.B.setTextSize(this.A.getTextSize());
                float c4 = dc.c() * l8Var.f;
                List<String> x3 = x(str6);
                int size3 = x3.size();
                int i9 = 0;
                while (i9 < size3) {
                    String str7 = x3.get(i9);
                    u(l8Var.d, canvas, this.B.measureText(str7));
                    canvas.translate(0.0f, (((float) i9) * c4) - ((((float) (size3 - 1)) * c4) / 2.0f));
                    int i10 = 0;
                    while (i10 < str7.length()) {
                        int codePointAt = str7.codePointAt(i10);
                        int charCount = Character.charCount(codePointAt) + i10;
                        while (charCount < str7.length()) {
                            int codePointAt2 = str7.codePointAt(charCount);
                            if (!(Character.getType(codePointAt2) == 16 || Character.getType(codePointAt2) == 27 || Character.getType(codePointAt2) == 6 || Character.getType(codePointAt2) == 28 || Character.getType(codePointAt2) == 19)) {
                                break;
                            }
                            charCount += Character.charCount(codePointAt2);
                            codePointAt = (codePointAt * 31) + codePointAt2;
                        }
                        long j = (long) codePointAt;
                        if (this.D.d(j)) {
                            str = this.D.g(j);
                            list = x3;
                        } else {
                            this.x.setLength(0);
                            int i11 = i10;
                            while (i11 < charCount) {
                                int codePointAt3 = str7.codePointAt(i11);
                                this.x.appendCodePoint(codePointAt3);
                                i11 += Character.charCount(codePointAt3);
                                x3 = x3;
                            }
                            list = x3;
                            str = this.x.toString();
                            this.D.k(j, str);
                        }
                        i10 += str.length();
                        if (l8Var.k) {
                            v(str, this.A, canvas);
                            v(str, this.B, canvas);
                        } else {
                            v(str, this.B, canvas);
                            v(str, this.A, canvas);
                        }
                        float measureText = this.A.measureText(str, 0, 1);
                        float f9 = ((float) l8Var.e) / 10.0f;
                        s7<Float, Float> s7Var11 = this.O;
                        if (s7Var11 != null) {
                            f2 = s7Var11.g().floatValue();
                        } else {
                            s7<Float, Float> s7Var12 = this.N;
                            if (s7Var12 != null) {
                                f2 = s7Var12.g().floatValue();
                            } else {
                                canvas.translate((f9 * d7) + measureText, 0.0f);
                                x3 = list;
                            }
                        }
                        f9 += f2;
                        canvas.translate((f9 * d7) + measureText, 0.0f);
                        x3 = list;
                    }
                    canvas.setMatrix(matrix);
                    i9++;
                    x3 = x3;
                }
            }
        }
        canvas.restore();
    }
}
