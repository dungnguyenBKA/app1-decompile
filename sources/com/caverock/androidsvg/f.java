package com.caverock.androidsvg;

import android.graphics.Matrix;
import android.support.v4.media.session.PlaybackStateCompat;
import android.util.Log;
import com.caverock.androidsvg.a;
import com.caverock.androidsvg.b;
import com.caverock.androidsvg.c;
import com.google.ads.AdSize;
import com.google.ads.mediation.facebook.FacebookAdapter;
import com.vungle.warren.error.VungleException;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.Set;
import java.util.zip.GZIPInputStream;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.parsers.SAXParserFactory;
import org.apache.http.HttpStatus;
import org.xml.sax.Attributes;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.XMLReader;
import org.xml.sax.ext.DefaultHandler2;

public class f extends DefaultHandler2 {
    private static HashMap<String, Integer> j = new HashMap<>();
    private static HashMap<String, c.o> k = new HashMap<>(9);
    private static HashMap<String, Integer> l = new HashMap<>(13);
    private static HashMap<String, c.d0.b> m = new HashMap<>(3);
    private static HashMap<String, b.a> n = new HashMap<>();
    protected static HashSet<String> o = new HashSet<>();
    private static /* synthetic */ int[] p;
    private c a = null;
    private c.i0 b = null;
    private boolean c = false;
    private int d;
    private boolean e = false;
    private String f = null;
    private StringBuilder g = null;
    private boolean h = false;
    private StringBuilder i = null;

    /* access modifiers changed from: private */
    public enum a {
        CLASS,
        clip,
        clip_path,
        clipPathUnits,
        clip_rule,
        color,
        cx,
        cy,
        direction,
        dx,
        dy,
        fx,
        fy,
        d,
        display,
        fill,
        fill_rule,
        fill_opacity,
        font,
        font_family,
        font_size,
        font_weight,
        font_style,
        gradientTransform,
        gradientUnits,
        height,
        href,
        id,
        marker,
        marker_start,
        marker_mid,
        marker_end,
        markerHeight,
        markerUnits,
        markerWidth,
        mask,
        maskContentUnits,
        maskUnits,
        media,
        offset,
        opacity,
        orient,
        overflow,
        pathLength,
        patternContentUnits,
        patternTransform,
        patternUnits,
        points,
        preserveAspectRatio,
        r,
        refX,
        refY,
        requiredFeatures,
        requiredExtensions,
        requiredFormats,
        requiredFonts,
        rx,
        ry,
        solid_color,
        solid_opacity,
        spreadMethod,
        startOffset,
        stop_color,
        stop_opacity,
        stroke,
        stroke_dasharray,
        stroke_dashoffset,
        stroke_linecap,
        stroke_linejoin,
        stroke_miterlimit,
        stroke_opacity,
        stroke_width,
        style,
        systemLanguage,
        text_anchor,
        text_decoration,
        transform,
        type,
        vector_effect,
        version,
        viewBox,
        width,
        x,
        y,
        x1,
        y1,
        x2,
        y2,
        viewport_fill,
        viewport_fill_opacity,
        visibility,
        UNSUPPORTED;

        public static a a(String str) {
            a aVar = UNSUPPORTED;
            if (str.equals("class")) {
                return CLASS;
            }
            if (str.indexOf(95) != -1) {
                return aVar;
            }
            try {
                return valueOf(str.replace('-', '_'));
            } catch (IllegalArgumentException unused) {
                return aVar;
            }
        }
    }

    /* access modifiers changed from: protected */
    public static class b {
        protected String a;
        protected int b = 0;

        public b(String str) {
            this.a = str.trim();
        }

        /* access modifiers changed from: protected */
        public int a() {
            if (this.b == this.a.length()) {
                return -1;
            }
            int i = this.b + 1;
            this.b = i;
            if (i < this.a.length()) {
                return this.a.charAt(this.b);
            }
            return -1;
        }

        public Boolean b(Object obj) {
            if (obj == null) {
                return null;
            }
            p();
            if (this.b == this.a.length()) {
                return null;
            }
            char charAt = this.a.charAt(this.b);
            if (charAt != '0' && charAt != '1') {
                return null;
            }
            boolean z = true;
            this.b++;
            if (charAt != '1') {
                z = false;
            }
            return Boolean.valueOf(z);
        }

        public Float c(Object obj) {
            if (obj == null) {
                return null;
            }
            p();
            return i();
        }

        public boolean d(char c) {
            boolean z = this.b < this.a.length() && this.a.charAt(this.b) == c;
            if (z) {
                this.b++;
            }
            return z;
        }

        /* JADX WARNING: Removed duplicated region for block: B:7:0x0024  */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public boolean e(java.lang.String r5) {
            /*
                r4 = this;
                int r0 = r5.length()
                int r1 = r4.b
                java.lang.String r2 = r4.a
                int r2 = r2.length()
                int r2 = r2 - r0
                if (r1 > r2) goto L_0x0021
                java.lang.String r1 = r4.a
                int r2 = r4.b
                int r3 = r2 + r0
                java.lang.String r1 = r1.substring(r2, r3)
                boolean r5 = r1.equals(r5)
                if (r5 == 0) goto L_0x0021
                r5 = 1
                goto L_0x0022
            L_0x0021:
                r5 = 0
            L_0x0022:
                if (r5 == 0) goto L_0x0029
                int r1 = r4.b
                int r1 = r1 + r0
                r4.b = r1
            L_0x0029:
                return r5
            */
            throw new UnsupportedOperationException("Method not decompiled: com.caverock.androidsvg.f.b.e(java.lang.String):boolean");
        }

        public boolean f() {
            return this.b == this.a.length();
        }

        /* access modifiers changed from: protected */
        public boolean g(int i) {
            return i == 32 || i == 10 || i == 13 || i == 9;
        }

        public Integer h() {
            if (this.b == this.a.length()) {
                return null;
            }
            String str = this.a;
            int i = this.b;
            this.b = i + 1;
            return Integer.valueOf(str.charAt(i));
        }

        public Float i() {
            int i;
            int i2;
            int i3;
            if (f()) {
                i = this.b;
            } else {
                int i4 = this.b;
                int charAt = this.a.charAt(i4);
                if (charAt == 45 || charAt == 43) {
                    charAt = a();
                }
                if (Character.isDigit(charAt)) {
                    i2 = this.b + 1;
                    charAt = a();
                    while (Character.isDigit(charAt)) {
                        i2 = this.b + 1;
                        charAt = a();
                    }
                } else {
                    i2 = i4;
                }
                if (charAt == 46) {
                    i2 = this.b + 1;
                    charAt = a();
                    while (Character.isDigit(charAt)) {
                        i2 = this.b + 1;
                        charAt = a();
                    }
                }
                if (charAt == 101 || charAt == 69) {
                    int a2 = a();
                    if (a2 == 45 || a2 == 43) {
                        a2 = a();
                    }
                    if (Character.isDigit(a2)) {
                        i3 = this.b + 1;
                        int a3 = a();
                        while (Character.isDigit(a3)) {
                            i3 = this.b + 1;
                            a3 = a();
                        }
                        this.b = i4;
                        i = i3;
                    }
                }
                i3 = i2;
                this.b = i4;
                i = i3;
            }
            int i5 = this.b;
            if (i == i5) {
                return null;
            }
            Float valueOf = Float.valueOf(Float.parseFloat(this.a.substring(i5, i)));
            this.b = i;
            return valueOf;
        }

        public c.o j() {
            Float i = i();
            if (i == null) {
                return null;
            }
            c.c1 n = n();
            if (n == null) {
                return new c.o(i.floatValue(), c.c1.px);
            }
            return new c.o(i.floatValue(), n);
        }

        public String k() {
            if (f()) {
                return null;
            }
            int i = this.b;
            char charAt = this.a.charAt(i);
            if (charAt != '\'' && charAt != '\"') {
                return null;
            }
            int a2 = a();
            while (a2 != -1 && a2 != charAt) {
                a2 = a();
            }
            if (a2 == -1) {
                this.b = i;
                return null;
            }
            int i2 = this.b + 1;
            this.b = i2;
            return this.a.substring(i + 1, i2 - 1);
        }

        public String l() {
            return m(' ');
        }

        public String m(char c) {
            if (f()) {
                return null;
            }
            char charAt = this.a.charAt(this.b);
            if (g(charAt) || charAt == c) {
                return null;
            }
            int i = this.b;
            int a2 = a();
            while (a2 != -1 && a2 != c && !g(a2)) {
                a2 = a();
            }
            return this.a.substring(i, this.b);
        }

        public c.c1 n() {
            if (f()) {
                return null;
            }
            if (this.a.charAt(this.b) == '%') {
                this.b++;
                return c.c1.percent;
            } else if (this.b > this.a.length() - 2) {
                return null;
            } else {
                try {
                    String str = this.a;
                    int i = this.b;
                    c.c1 valueOf = c.c1.valueOf(str.substring(i, i + 2).toLowerCase(Locale.US));
                    this.b += 2;
                    return valueOf;
                } catch (IllegalArgumentException unused) {
                    return null;
                }
            }
        }

        public Float o() {
            int i = this.b;
            p();
            Float i2 = i();
            if (i2 != null) {
                return i2;
            }
            this.b = i;
            return null;
        }

        public boolean p() {
            q();
            if (this.b == this.a.length() || this.a.charAt(this.b) != ',') {
                return false;
            }
            this.b++;
            q();
            return true;
        }

        public void q() {
            while (this.b < this.a.length() && g(this.a.charAt(this.b))) {
                this.b++;
            }
        }
    }

    static {
        j.put("aliceblue", 15792383);
        j.put("antiquewhite", 16444375);
        j.put("aqua", 65535);
        j.put("aquamarine", 8388564);
        j.put("azure", 15794175);
        j.put("beige", 16119260);
        j.put("bisque", 16770244);
        j.put("black", 0);
        j.put("blanchedalmond", 16772045);
        j.put("blue", 255);
        j.put("blueviolet", 9055202);
        j.put("brown", 10824234);
        j.put("burlywood", 14596231);
        j.put("cadetblue", 6266528);
        j.put("chartreuse", 8388352);
        j.put("chocolate", 13789470);
        j.put("coral", 16744272);
        j.put("cornflowerblue", 6591981);
        j.put("cornsilk", 16775388);
        j.put("crimson", 14423100);
        j.put("cyan", 65535);
        j.put("darkblue", 139);
        j.put("darkcyan", 35723);
        j.put("darkgoldenrod", 12092939);
        j.put("darkgray", 11119017);
        j.put("darkgreen", 25600);
        j.put("darkgrey", 11119017);
        j.put("darkkhaki", 12433259);
        j.put("darkmagenta", 9109643);
        j.put("darkolivegreen", 5597999);
        j.put("darkorange", 16747520);
        j.put("darkorchid", 10040012);
        j.put("darkred", 9109504);
        j.put("darksalmon", 15308410);
        j.put("darkseagreen", 9419919);
        j.put("darkslateblue", 4734347);
        j.put("darkslategray", 3100495);
        j.put("darkslategrey", 3100495);
        j.put("darkturquoise", 52945);
        j.put("darkviolet", 9699539);
        j.put("deeppink", 16716947);
        j.put("deepskyblue", 49151);
        j.put("dimgray", 6908265);
        j.put("dimgrey", 6908265);
        j.put("dodgerblue", 2003199);
        j.put("firebrick", 11674146);
        j.put("floralwhite", 16775920);
        j.put("forestgreen", 2263842);
        j.put("fuchsia", 16711935);
        j.put("gainsboro", 14474460);
        j.put("ghostwhite", 16316671);
        j.put("gold", 16766720);
        j.put("goldenrod", 14329120);
        j.put("gray", 8421504);
        j.put("green", 32768);
        j.put("greenyellow", 11403055);
        j.put("grey", 8421504);
        j.put("honeydew", 15794160);
        j.put("hotpink", 16738740);
        j.put("indianred", 13458524);
        j.put("indigo", 4915330);
        j.put("ivory", 16777200);
        j.put("khaki", 15787660);
        j.put("lavender", 15132410);
        j.put("lavenderblush", 16773365);
        j.put("lawngreen", 8190976);
        j.put("lemonchiffon", 16775885);
        j.put("lightblue", 11393254);
        j.put("lightcoral", 15761536);
        j.put("lightcyan", 14745599);
        j.put("lightgoldenrodyellow", 16448210);
        j.put("lightgray", 13882323);
        j.put("lightgreen", 9498256);
        j.put("lightgrey", 13882323);
        j.put("lightpink", 16758465);
        j.put("lightsalmon", 16752762);
        j.put("lightseagreen", 2142890);
        j.put("lightskyblue", 8900346);
        j.put("lightslategray", 7833753);
        j.put("lightslategrey", 7833753);
        j.put("lightsteelblue", 11584734);
        j.put("lightyellow", 16777184);
        j.put("lime", 65280);
        j.put("limegreen", 3329330);
        j.put("linen", 16445670);
        j.put("magenta", 16711935);
        j.put("maroon", 8388608);
        j.put("mediumaquamarine", 6737322);
        j.put("mediumblue", Integer.valueOf((int) HttpStatus.SC_RESET_CONTENT));
        j.put("mediumorchid", 12211667);
        j.put("mediumpurple", 9662683);
        j.put("mediumseagreen", 3978097);
        j.put("mediumslateblue", 8087790);
        j.put("mediumspringgreen", 64154);
        j.put("mediumturquoise", 4772300);
        j.put("mediumvioletred", 13047173);
        j.put("midnightblue", 1644912);
        j.put("mintcream", 16121850);
        j.put("mistyrose", 16770273);
        j.put("moccasin", 16770229);
        j.put("navajowhite", 16768685);
        j.put("navy", 128);
        j.put("oldlace", 16643558);
        j.put("olive", 8421376);
        j.put("olivedrab", 7048739);
        j.put("orange", 16753920);
        j.put("orangered", 16729344);
        j.put("orchid", 14315734);
        j.put("palegoldenrod", 15657130);
        j.put("palegreen", 10025880);
        j.put("paleturquoise", 11529966);
        j.put("palevioletred", 14381203);
        j.put("papayawhip", 16773077);
        j.put("peachpuff", 16767673);
        j.put("peru", 13468991);
        j.put("pink", 16761035);
        j.put("plum", 14524637);
        j.put("powderblue", 11591910);
        j.put("purple", 8388736);
        j.put("red", 16711680);
        j.put("rosybrown", 12357519);
        j.put("royalblue", 4286945);
        j.put("saddlebrown", 9127187);
        j.put("salmon", 16416882);
        j.put("sandybrown", 16032864);
        j.put("seagreen", 3050327);
        j.put("seashell", 16774638);
        j.put("sienna", 10506797);
        j.put("silver", 12632256);
        j.put("skyblue", 8900331);
        j.put("slateblue", 6970061);
        j.put("slategray", 7372944);
        j.put("slategrey", 7372944);
        j.put("snow", 16775930);
        j.put("springgreen", 65407);
        j.put("steelblue", 4620980);
        j.put("tan", 13808780);
        j.put("teal", 32896);
        j.put("thistle", 14204888);
        j.put("tomato", 16737095);
        j.put("turquoise", 4251856);
        j.put("violet", 15631086);
        j.put("wheat", 16113331);
        j.put("white", 16777215);
        j.put("whitesmoke", 16119285);
        j.put("yellow", 16776960);
        j.put("yellowgreen", 10145074);
        HashMap<String, c.o> hashMap = k;
        c.c1 c1Var = c.c1.pt;
        hashMap.put("xx-small", new c.o(0.694f, c1Var));
        k.put("x-small", new c.o(0.833f, c1Var));
        k.put("small", new c.o(10.0f, c1Var));
        k.put("medium", new c.o(12.0f, c1Var));
        k.put("large", new c.o(14.4f, c1Var));
        k.put("x-large", new c.o(17.3f, c1Var));
        k.put("xx-large", new c.o(20.7f, c1Var));
        HashMap<String, c.o> hashMap2 = k;
        c.c1 c1Var2 = c.c1.percent;
        hashMap2.put("smaller", new c.o(83.33f, c1Var2));
        k.put("larger", new c.o(120.0f, c1Var2));
        HashMap<String, Integer> hashMap3 = l;
        Integer valueOf = Integer.valueOf((int) HttpStatus.SC_BAD_REQUEST);
        hashMap3.put("normal", valueOf);
        l.put("bold", 700);
        l.put("bolder", 1);
        l.put("lighter", -1);
        l.put("100", 100);
        l.put("200", Integer.valueOf((int) HttpStatus.SC_OK));
        l.put("300", Integer.valueOf((int) HttpStatus.SC_MULTIPLE_CHOICES));
        l.put("400", valueOf);
        l.put("500", Integer.valueOf((int) HttpStatus.SC_INTERNAL_SERVER_ERROR));
        l.put("600", 600);
        l.put("700", 700);
        l.put("800", 800);
        l.put("900", 900);
        m.put("normal", c.d0.b.Normal);
        m.put("italic", c.d0.b.Italic);
        m.put("oblique", c.d0.b.Oblique);
        n.put("none", b.a.None);
        n.put("xMinYMin", b.a.XMinYMin);
        n.put("xMidYMin", b.a.XMidYMin);
        n.put("xMaxYMin", b.a.XMaxYMin);
        n.put("xMinYMid", b.a.XMinYMid);
        n.put("xMidYMid", b.a.XMidYMid);
        n.put("xMaxYMid", b.a.XMaxYMid);
        n.put("xMinYMax", b.a.XMinYMax);
        n.put("xMidYMax", b.a.XMidYMax);
        n.put("xMaxYMax", b.a.XMaxYMax);
        o.add("Structure");
        o.add("BasicStructure");
        o.add("ConditionalProcessing");
        o.add("Image");
        o.add("Style");
        o.add("ViewportAttribute");
        o.add("Shape");
        o.add("BasicText");
        o.add("PaintAttribute");
        o.add("BasicPaintAttribute");
        o.add("OpacityAttribute");
        o.add("BasicGraphicsAttribute");
        o.add("Marker");
        o.add("Gradient");
        o.add("Pattern");
        o.add("Clip");
        o.add("BasicClip");
        o.add("Mask");
        o.add("View");
    }

    private Matrix A(String str) {
        Matrix matrix = new Matrix();
        b bVar = new b(str);
        bVar.q();
        while (!bVar.f()) {
            String str2 = null;
            if (!bVar.f()) {
                int i2 = bVar.b;
                int charAt = bVar.a.charAt(i2);
                while (true) {
                    if ((charAt < 97 || charAt > 122) && (charAt < 65 || charAt > 90)) {
                        int i3 = bVar.b;
                    } else {
                        charAt = bVar.a();
                    }
                }
                int i32 = bVar.b;
                while (bVar.g(charAt)) {
                    charAt = bVar.a();
                }
                if (charAt == 40) {
                    bVar.b++;
                    str2 = bVar.a.substring(i2, i32);
                } else {
                    bVar.b = i2;
                }
            }
            if (str2 != null) {
                if (str2.equals("matrix")) {
                    bVar.q();
                    Float i4 = bVar.i();
                    bVar.p();
                    Float i5 = bVar.i();
                    bVar.p();
                    Float i6 = bVar.i();
                    bVar.p();
                    Float i7 = bVar.i();
                    bVar.p();
                    Float i8 = bVar.i();
                    bVar.p();
                    Float i9 = bVar.i();
                    bVar.q();
                    if (i9 == null || !bVar.d(')')) {
                        throw new SAXException(ic.h("Invalid transform list: ", str));
                    }
                    Matrix matrix2 = new Matrix();
                    matrix2.setValues(new float[]{i4.floatValue(), i6.floatValue(), i8.floatValue(), i5.floatValue(), i7.floatValue(), i9.floatValue(), 0.0f, 0.0f, 1.0f});
                    matrix.preConcat(matrix2);
                } else if (str2.equals("translate")) {
                    bVar.q();
                    Float i10 = bVar.i();
                    Float o2 = bVar.o();
                    bVar.q();
                    if (i10 == null || !bVar.d(')')) {
                        throw new SAXException(ic.h("Invalid transform list: ", str));
                    } else if (o2 == null) {
                        matrix.preTranslate(i10.floatValue(), 0.0f);
                    } else {
                        matrix.preTranslate(i10.floatValue(), o2.floatValue());
                    }
                } else if (str2.equals("scale")) {
                    bVar.q();
                    Float i11 = bVar.i();
                    Float o3 = bVar.o();
                    bVar.q();
                    if (i11 == null || !bVar.d(')')) {
                        throw new SAXException(ic.h("Invalid transform list: ", str));
                    } else if (o3 == null) {
                        matrix.preScale(i11.floatValue(), i11.floatValue());
                    } else {
                        matrix.preScale(i11.floatValue(), o3.floatValue());
                    }
                } else if (str2.equals("rotate")) {
                    bVar.q();
                    Float i12 = bVar.i();
                    Float o4 = bVar.o();
                    Float o5 = bVar.o();
                    bVar.q();
                    if (i12 == null || !bVar.d(')')) {
                        throw new SAXException(ic.h("Invalid transform list: ", str));
                    } else if (o4 == null) {
                        matrix.preRotate(i12.floatValue());
                    } else if (o5 != null) {
                        matrix.preRotate(i12.floatValue(), o4.floatValue(), o5.floatValue());
                    } else {
                        throw new SAXException(ic.h("Invalid transform list: ", str));
                    }
                } else if (str2.equals("skewX")) {
                    bVar.q();
                    Float i13 = bVar.i();
                    bVar.q();
                    if (i13 == null || !bVar.d(')')) {
                        throw new SAXException(ic.h("Invalid transform list: ", str));
                    }
                    matrix.preSkew((float) Math.tan(Math.toRadians((double) i13.floatValue())), 0.0f);
                } else if (str2.equals("skewY")) {
                    bVar.q();
                    Float i14 = bVar.i();
                    bVar.q();
                    if (i14 == null || !bVar.d(')')) {
                        throw new SAXException(ic.h("Invalid transform list: ", str));
                    }
                    matrix.preSkew(0.0f, (float) Math.tan(Math.toRadians((double) i14.floatValue())));
                } else {
                    throw new SAXException("Invalid transform list fn: " + str2 + ")");
                }
                if (bVar.f()) {
                    break;
                }
                bVar.p();
            } else {
                throw new SAXException(ic.h("Bad transform function encountered in transform list: ", str));
            }
        }
        return matrix;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:61:0x00de, code lost:
        continue;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void B(org.xml.sax.Attributes r7) {
        /*
        // Method dump skipped, instructions count: 264
        */
        throw new UnsupportedOperationException("Method not decompiled: com.caverock.androidsvg.f.B(org.xml.sax.Attributes):void");
    }

    protected static void C(c.d0 d0Var, String str, String str2) {
        c.d0.g gVar;
        Boolean bool;
        c.d0.h hVar;
        c.d0.e eVar;
        c.d0.f fVar;
        String m2;
        int i2;
        c.o j2;
        c.d0.EnumC0038c cVar;
        c.d0.d dVar;
        if (str2.length() != 0 && !str2.equals("inherit")) {
            int i3 = a()[a.a(str).ordinal()];
            c.b bVar = null;
            r5 = null;
            r5 = null;
            c.o[] oVarArr = null;
            String str3 = null;
            if (i3 == 2) {
                if (!"auto".equals(str2)) {
                    if (str2.toLowerCase(Locale.US).startsWith("rect(")) {
                        b bVar2 = new b(str2.substring(5));
                        bVar2.q();
                        c.o w = w(bVar2);
                        bVar2.p();
                        c.o w2 = w(bVar2);
                        bVar2.p();
                        c.o w3 = w(bVar2);
                        bVar2.p();
                        c.o w4 = w(bVar2);
                        bVar2.q();
                        if (bVar2.d(')')) {
                            bVar = new c.b(w, w2, w3, w4);
                        } else {
                            throw new SAXException(ic.h("Bad rect() clip definition: ", str2));
                        }
                    } else {
                        throw new SAXException("Invalid clip attribute shape. Only rect() is supported.");
                    }
                }
                d0Var.x = bVar;
                d0Var.b |= PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED;
            } else if (i3 == 3) {
                d0Var.F = t(str2, str);
                d0Var.b |= 268435456;
            } else if (i3 == 5) {
                d0Var.G = q(str2);
                d0Var.b |= 536870912;
            } else if (i3 == 6) {
                d0Var.o = n(str2);
                d0Var.b |= PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM;
            } else if (i3 == 9) {
                if ("ltr".equals(str2)) {
                    gVar = c.d0.g.LTR;
                } else if ("rtl".equals(str2)) {
                    gVar = c.d0.g.RTL;
                } else {
                    throw new SAXException(ic.h("Invalid direction property: ", str2));
                }
                d0Var.u = gVar;
                d0Var.b |= 68719476736L;
            } else if (i3 == 36) {
                d0Var.H = t(str2, str);
                d0Var.b |= 1073741824;
            } else if (i3 == 41) {
                d0Var.n = Float.valueOf(x(str2));
                d0Var.b |= PlaybackStateCompat.ACTION_PLAY_FROM_SEARCH;
            } else if (i3 == 43) {
                if ("visible".equals(str2) || "auto".equals(str2)) {
                    bool = Boolean.TRUE;
                } else if ("hidden".equals(str2) || "scroll".equals(str2)) {
                    bool = Boolean.FALSE;
                } else {
                    throw new SAXException(ic.h("Invalid toverflow property: ", str2));
                }
                d0Var.w = bool;
                d0Var.b |= PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE_ENABLED;
            } else if (i3 == 79) {
                if ("none".equals(str2)) {
                    hVar = c.d0.h.None;
                } else if ("non-scaling-stroke".equals(str2)) {
                    hVar = c.d0.h.NonScalingStroke;
                } else {
                    throw new SAXException(ic.h("Invalid vector-effect property: ", str2));
                }
                d0Var.M = hVar;
                d0Var.b |= 34359738368L;
            } else if (i3 == 59) {
                if (str2.equals("currentColor")) {
                    d0Var.I = c.f.a();
                } else {
                    d0Var.I = n(str2);
                }
                d0Var.b |= 2147483648L;
            } else if (i3 == 60) {
                d0Var.J = Float.valueOf(x(str2));
                d0Var.b |= 4294967296L;
            } else if (i3 == 75) {
                if ("start".equals(str2)) {
                    eVar = c.d0.e.Start;
                } else if ("middle".equals(str2)) {
                    eVar = c.d0.e.Middle;
                } else if ("end".equals(str2)) {
                    eVar = c.d0.e.End;
                } else {
                    throw new SAXException(ic.h("Invalid text-anchor property: ", str2));
                }
                d0Var.v = eVar;
                d0Var.b |= PlaybackStateCompat.ACTION_SET_REPEAT_MODE;
            } else if (i3 != 76) {
                switch (i3) {
                    case VungleException.ALREADY_PLAYING_ANOTHER_AD /*{ENCODED_INT: 15}*/:
                        if (str2.indexOf(124) < 0) {
                            if ("|inline|block|list-item|run-in|compact|marker|table|inline-table|table-row-group|table-header-group|table-footer-group|table-row|table-column-group|table-column|table-cell|table-caption|none|".indexOf(String.valueOf('|') + str2 + '|') != -1) {
                                d0Var.B = Boolean.valueOf(!str2.equals("none"));
                                d0Var.b |= 16777216;
                                return;
                            }
                        }
                        throw new SAXException(ic.h("Invalid value for \"display\" attribute: ", str2));
                    case VungleException.NO_SPACE_TO_INIT /*{ENCODED_INT: 16}*/:
                        d0Var.c = y(str2, "fill");
                        d0Var.b |= 1;
                        return;
                    case 17:
                        d0Var.d = q(str2);
                        d0Var.b |= 2;
                        return;
                    case VungleException.NO_SPACE_TO_LOAD_AD_AUTO_CACHED /*{ENCODED_INT: 18}*/:
                        d0Var.e = Float.valueOf(x(str2));
                        d0Var.b |= 4;
                        return;
                    case VungleException.NO_SPACE_TO_DOWNLOAD_ASSETS /*{ENCODED_INT: 19}*/:
                        if ("|caption|icon|menu|message-box|small-caption|status-bar|".indexOf(String.valueOf('|') + str2 + '|') == -1) {
                            b bVar3 = new b(str2);
                            Integer num = null;
                            c.d0.b bVar4 = null;
                            String str4 = null;
                            while (true) {
                                m2 = bVar3.m('/');
                                bVar3.q();
                                if (m2 == null) {
                                    throw new SAXException("Invalid font style attribute: missing font size and family");
                                } else if (num == null || bVar4 == null) {
                                    if (!m2.equals("normal") && ((num != null || (num = l.get(m2)) == null) && (bVar4 != null || (bVar4 = m.get(m2)) == null))) {
                                        if (str4 == null && m2.equals("small-caps")) {
                                            str4 = m2;
                                        }
                                    }
                                }
                            }
                            c.o oVar = k.get(m2);
                            if (oVar == null) {
                                oVar = u(m2);
                            }
                            if (bVar3.d('/')) {
                                bVar3.q();
                                String l2 = bVar3.l();
                                if (l2 != null) {
                                    u(l2);
                                    bVar3.q();
                                } else {
                                    throw new SAXException("Invalid font style attribute: missing line-height");
                                }
                            }
                            if (!bVar3.f()) {
                                int i4 = bVar3.b;
                                bVar3.b = bVar3.a.length();
                                str3 = bVar3.a.substring(i4);
                            }
                            d0Var.p = s(str3);
                            d0Var.q = oVar;
                            if (num == null) {
                                i2 = HttpStatus.SC_BAD_REQUEST;
                            } else {
                                i2 = num.intValue();
                            }
                            d0Var.r = Integer.valueOf(i2);
                            if (bVar4 == null) {
                                bVar4 = c.d0.b.Normal;
                            }
                            d0Var.s = bVar4;
                            d0Var.b |= 122880;
                            return;
                        }
                        return;
                    case 20:
                        d0Var.p = s(str2);
                        d0Var.b |= PlaybackStateCompat.ACTION_PLAY_FROM_URI;
                        return;
                    case VungleException.SERVER_ERROR /*{ENCODED_INT: 21}*/:
                        c.o oVar2 = k.get(str2);
                        if (oVar2 == null) {
                            oVar2 = u(str2);
                        }
                        d0Var.q = oVar2;
                        d0Var.b |= PlaybackStateCompat.ACTION_PREPARE;
                        return;
                    case VungleException.SERVER_TEMPORARY_UNAVAILABLE /*{ENCODED_INT: 22}*/:
                        Integer num2 = l.get(str2);
                        if (num2 != null) {
                            d0Var.r = num2;
                            d0Var.b |= PlaybackStateCompat.ACTION_PREPARE_FROM_MEDIA_ID;
                            return;
                        }
                        throw new SAXException(ic.h("Invalid font-weight property: ", str2));
                    case VungleException.ASSET_DOWNLOAD_RECOVERABLE /*{ENCODED_INT: 23}*/:
                        c.d0.b bVar5 = m.get(str2);
                        if (bVar5 != null) {
                            d0Var.s = bVar5;
                            d0Var.b |= PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH;
                            return;
                        }
                        throw new SAXException(ic.h("Invalid font-style property: ", str2));
                    default:
                        switch (i3) {
                            case VungleException.INCORRECT_DEFAULT_API_USAGE /*{ENCODED_INT: 29}*/:
                                String t = t(str2, str);
                                d0Var.y = t;
                                d0Var.z = t;
                                d0Var.A = t;
                                d0Var.b |= 14680064;
                                return;
                            case VungleException.INCORRECT_BANNER_API_USAGE /*{ENCODED_INT: 30}*/:
                                d0Var.y = t(str2, str);
                                d0Var.b |= PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE;
                                return;
                            case VungleException.WEB_CRASH /*{ENCODED_INT: 31}*/:
                                d0Var.z = t(str2, str);
                                d0Var.b |= 4194304;
                                return;
                            case 32:
                                d0Var.A = t(str2, str);
                                d0Var.b |= 8388608;
                                return;
                            default:
                                switch (i3) {
                                    case 63:
                                        if (str2.equals("currentColor")) {
                                            d0Var.D = c.f.a();
                                        } else {
                                            d0Var.D = n(str2);
                                        }
                                        d0Var.b |= 67108864;
                                        return;
                                    case 64:
                                        d0Var.E = Float.valueOf(x(str2));
                                        d0Var.b |= 134217728;
                                        return;
                                    case 65:
                                        d0Var.f = y(str2, "stroke");
                                        d0Var.b |= 8;
                                        return;
                                    case 66:
                                        if ("none".equals(str2)) {
                                            d0Var.l = null;
                                        } else {
                                            b bVar6 = new b(str2);
                                            bVar6.q();
                                            if (!bVar6.f() && (j2 = bVar6.j()) != null) {
                                                if (!j2.g()) {
                                                    float f2 = j2.b;
                                                    ArrayList arrayList = new ArrayList();
                                                    arrayList.add(j2);
                                                    while (!bVar6.f()) {
                                                        bVar6.p();
                                                        c.o j3 = bVar6.j();
                                                        if (j3 == null) {
                                                            throw new SAXException(ic.h("Invalid stroke-dasharray. Non-Length content found: ", str2));
                                                        } else if (!j3.g()) {
                                                            arrayList.add(j3);
                                                            f2 += j3.b;
                                                        } else {
                                                            throw new SAXException(ic.h("Invalid stroke-dasharray. Dash segemnts cannot be negative: ", str2));
                                                        }
                                                    }
                                                    if (f2 != 0.0f) {
                                                        oVarArr = (c.o[]) arrayList.toArray(new c.o[arrayList.size()]);
                                                    }
                                                } else {
                                                    throw new SAXException(ic.h("Invalid stroke-dasharray. Dash segemnts cannot be negative: ", str2));
                                                }
                                            }
                                            d0Var.l = oVarArr;
                                        }
                                        d0Var.b |= 512;
                                        return;
                                    case 67:
                                        d0Var.m = u(str2);
                                        d0Var.b |= PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID;
                                        return;
                                    case 68:
                                        if ("butt".equals(str2)) {
                                            cVar = c.d0.EnumC0038c.Butt;
                                        } else if ("round".equals(str2)) {
                                            cVar = c.d0.EnumC0038c.Round;
                                        } else if ("square".equals(str2)) {
                                            cVar = c.d0.EnumC0038c.Square;
                                        } else {
                                            throw new SAXException(ic.h("Invalid stroke-linecap property: ", str2));
                                        }
                                        d0Var.i = cVar;
                                        d0Var.b |= 64;
                                        return;
                                    case 69:
                                        if ("miter".equals(str2)) {
                                            dVar = c.d0.d.Miter;
                                        } else if ("round".equals(str2)) {
                                            dVar = c.d0.d.Round;
                                        } else if ("bevel".equals(str2)) {
                                            dVar = c.d0.d.Bevel;
                                        } else {
                                            throw new SAXException(ic.h("Invalid stroke-linejoin property: ", str2));
                                        }
                                        d0Var.j = dVar;
                                        d0Var.b |= 128;
                                        return;
                                    case 70:
                                        d0Var.k = Float.valueOf(r(str2));
                                        d0Var.b |= 256;
                                        return;
                                    case 71:
                                        d0Var.g = Float.valueOf(x(str2));
                                        d0Var.b |= 16;
                                        return;
                                    case 72:
                                        d0Var.h = u(str2);
                                        d0Var.b |= 32;
                                        return;
                                    default:
                                        switch (i3) {
                                            case 89:
                                                if (str2.equals("currentColor")) {
                                                    d0Var.K = c.f.a();
                                                } else {
                                                    d0Var.K = n(str2);
                                                }
                                                d0Var.b |= 8589934592L;
                                                return;
                                            case AdSize.LARGE_AD_HEIGHT /*{ENCODED_INT: 90}*/:
                                                d0Var.L = Float.valueOf(x(str2));
                                                d0Var.b |= 17179869184L;
                                                return;
                                            case 91:
                                                if (str2.indexOf(124) < 0) {
                                                    if ("|visible|hidden|collapse|".indexOf(String.valueOf('|') + str2 + '|') != -1) {
                                                        d0Var.C = Boolean.valueOf(str2.equals("visible"));
                                                        d0Var.b |= 33554432;
                                                        return;
                                                    }
                                                }
                                                throw new SAXException(ic.h("Invalid value for \"visibility\" attribute: ", str2));
                                            default:
                                                return;
                                        }
                                }
                        }
                }
            } else {
                if ("none".equals(str2)) {
                    fVar = c.d0.f.None;
                } else if ("underline".equals(str2)) {
                    fVar = c.d0.f.Underline;
                } else if ("overline".equals(str2)) {
                    fVar = c.d0.f.Overline;
                } else if ("line-through".equals(str2)) {
                    fVar = c.d0.f.LineThrough;
                } else if ("blink".equals(str2)) {
                    fVar = c.d0.f.Blink;
                } else {
                    throw new SAXException(ic.h("Invalid text-decoration property: ", str2));
                }
                d0Var.t = fVar;
                d0Var.b |= PlaybackStateCompat.ACTION_PREPARE_FROM_URI;
            }
        }
    }

    private void D(Attributes attributes) {
        c.i0 i0Var = this.b;
        if (i0Var != null) {
            c.b0 b0Var = new c.b0();
            b0Var.a = this.a;
            b0Var.b = i0Var;
            g(b0Var, attributes);
            j(b0Var, attributes);
            this.b.c(b0Var);
            this.b = b0Var;
            return;
        }
        throw new SAXException("Invalid document. Root element must be <svg>");
    }

    private void E(Attributes attributes) {
        c.i0 i0Var = this.b;
        if (i0Var == null) {
            throw new SAXException("Invalid document. Root element must be <svg>");
        } else if (i0Var instanceof c.i) {
            c.c0 c0Var = new c.c0();
            c0Var.a = this.a;
            c0Var.b = i0Var;
            g(c0Var, attributes);
            j(c0Var, attributes);
            for (int i2 = 0; i2 < attributes.getLength(); i2++) {
                String trim = attributes.getValue(i2).trim();
                if (a()[a.a(attributes.getLocalName(i2)).ordinal()] == 40) {
                    if (trim.length() != 0) {
                        int length = trim.length();
                        boolean z = true;
                        if (trim.charAt(trim.length() - 1) == '%') {
                            length--;
                        } else {
                            z = false;
                        }
                        try {
                            float parseFloat = Float.parseFloat(trim.substring(0, length));
                            float f2 = 100.0f;
                            if (z) {
                                parseFloat /= 100.0f;
                            }
                            if (parseFloat < 0.0f) {
                                f2 = 0.0f;
                            } else if (parseFloat <= 100.0f) {
                                f2 = parseFloat;
                            }
                            c0Var.h = Float.valueOf(f2);
                        } catch (NumberFormatException e2) {
                            throw new SAXException(ic.h("Invalid offset value in <stop>: ", trim), e2);
                        }
                    } else {
                        throw new SAXException("Invalid offset value in <stop> (empty string)");
                    }
                }
            }
            this.b.c(c0Var);
            this.b = c0Var;
        } else {
            throw new SAXException("Invalid document. <stop> elements are only valid inside <linearGradiant> or <radialGradient> elements.");
        }
    }

    private void F(Attributes attributes) {
        if (this.b != null) {
            String str = "all";
            boolean z = true;
            for (int i2 = 0; i2 < attributes.getLength(); i2++) {
                String trim = attributes.getValue(i2).trim();
                int i3 = a()[a.a(attributes.getLocalName(i2)).ordinal()];
                if (i3 == 39) {
                    str = trim;
                } else if (i3 == 78) {
                    z = trim.equals("text/css");
                }
            }
            if (!z || !a.b(str, a.e.screen)) {
                this.c = true;
                this.d = 1;
                return;
            }
            this.h = true;
            return;
        }
        throw new SAXException("Invalid document. Root element must be <svg>");
    }

    private void G(Attributes attributes) {
        if (this.b != null) {
            c.y0 y0Var = new c.y0();
            y0Var.a = this.a;
            y0Var.b = this.b;
            g(y0Var, attributes);
            j(y0Var, attributes);
            f(y0Var, attributes);
            for (int i2 = 0; i2 < attributes.getLength(); i2++) {
                String trim = attributes.getValue(i2).trim();
                int i3 = a()[a.a(attributes.getLocalName(i2)).ordinal()];
                if (i3 != 27) {
                    if (i3 == 62) {
                        y0Var.o = u(trim);
                    }
                } else if ("http://www.w3.org/1999/xlink".equals(attributes.getURI(i2))) {
                    y0Var.n = trim;
                }
            }
            this.b.c(y0Var);
            this.b = y0Var;
            c.i0 i0Var = y0Var.b;
            if (i0Var instanceof c.a1) {
                y0Var.o((c.a1) i0Var);
            } else {
                y0Var.o(((c.w0) i0Var).g());
            }
        } else {
            throw new SAXException("Invalid document. Root element must be <svg>");
        }
    }

    /* JADX WARNING: Can't wrap try/catch for region: R(188:3|(2:4|5)|6|(2:8|9)|10|(2:12|13)|14|16|17|18|19|20|(2:22|23)|24|(2:26|27)|28|(2:30|31)|32|(2:34|35)|36|(2:38|39)|40|(2:42|43)|44|(2:46|47)|48|(2:50|51)|52|(2:54|55)|56|(2:58|59)|60|62|63|64|65|66|(2:68|69)|70|(2:72|73)|74|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|91|92|93|94|95|96|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122|123|124|125|126|127|128|129|130|131|132|133|134|135|136|137|138|139|140|141|142|143|144|145|146|147|148|149|150|151|152|153|154|155|156|157|158|159|160|161|162|163|164|165|166|167|168|169|170|171|172|173|174|175|176|177|178|179|180|181|182|183|184|185|186|187|188|189|190|191|192|193|194|195|196|197|198|199|200|201|202|203|204|205|206|207|208|209|210|211|212|213|214|215|216|217|218|219|(2:220|221)|222|224) */
    /* JADX WARNING: Can't wrap try/catch for region: R(189:3|(2:4|5)|6|(2:8|9)|10|(2:12|13)|14|16|17|18|19|20|(2:22|23)|24|(2:26|27)|28|(2:30|31)|32|(2:34|35)|36|(2:38|39)|40|(2:42|43)|44|(2:46|47)|48|(2:50|51)|52|(2:54|55)|56|(2:58|59)|60|62|63|64|65|66|(2:68|69)|70|72|73|74|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|91|92|93|94|95|96|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122|123|124|125|126|127|128|129|130|131|132|133|134|135|136|137|138|139|140|141|142|143|144|145|146|147|148|149|150|151|152|153|154|155|156|157|158|159|160|161|162|163|164|165|166|167|168|169|170|171|172|173|174|175|176|177|178|179|180|181|182|183|184|185|186|187|188|189|190|191|192|193|194|195|196|197|198|199|200|201|202|203|204|205|206|207|208|209|210|211|212|213|214|215|216|217|218|219|(2:220|221)|222|224) */
    /* JADX WARNING: Can't wrap try/catch for region: R(190:3|(2:4|5)|6|(2:8|9)|10|(2:12|13)|14|16|17|18|19|20|(2:22|23)|24|(2:26|27)|28|(2:30|31)|32|(2:34|35)|36|(2:38|39)|40|(2:42|43)|44|(2:46|47)|48|(2:50|51)|52|(2:54|55)|56|(2:58|59)|60|62|63|64|65|66|68|69|70|72|73|74|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|91|92|93|94|95|96|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122|123|124|125|126|127|128|129|130|131|132|133|134|135|136|137|138|139|140|141|142|143|144|145|146|147|148|149|150|151|152|153|154|155|156|157|158|159|160|161|162|163|164|165|166|167|168|169|170|171|172|173|174|175|176|177|178|179|180|181|182|183|184|185|186|187|188|189|190|191|192|193|194|195|196|197|198|199|200|201|202|203|204|205|206|207|208|209|210|211|212|213|214|215|216|217|218|219|(2:220|221)|222|224) */
    /* JADX WARNING: Can't wrap try/catch for region: R(191:3|(2:4|5)|6|(2:8|9)|10|(2:12|13)|14|16|17|18|19|20|(2:22|23)|24|(2:26|27)|28|(2:30|31)|32|(2:34|35)|36|(2:38|39)|40|(2:42|43)|44|(2:46|47)|48|(2:50|51)|52|(2:54|55)|56|58|59|60|62|63|64|65|66|68|69|70|72|73|74|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|91|92|93|94|95|96|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122|123|124|125|126|127|128|129|130|131|132|133|134|135|136|137|138|139|140|141|142|143|144|145|146|147|148|149|150|151|152|153|154|155|156|157|158|159|160|161|162|163|164|165|166|167|168|169|170|171|172|173|174|175|176|177|178|179|180|181|182|183|184|185|186|187|188|189|190|191|192|193|194|195|196|197|198|199|200|201|202|203|204|205|206|207|208|209|210|211|212|213|214|215|216|217|218|219|(2:220|221)|222|224) */
    /* JADX WARNING: Can't wrap try/catch for region: R(192:3|(2:4|5)|6|(2:8|9)|10|(2:12|13)|14|16|17|18|19|20|(2:22|23)|24|(2:26|27)|28|(2:30|31)|32|(2:34|35)|36|(2:38|39)|40|(2:42|43)|44|(2:46|47)|48|(2:50|51)|52|54|55|56|58|59|60|62|63|64|65|66|68|69|70|72|73|74|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|91|92|93|94|95|96|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122|123|124|125|126|127|128|129|130|131|132|133|134|135|136|137|138|139|140|141|142|143|144|145|146|147|148|149|150|151|152|153|154|155|156|157|158|159|160|161|162|163|164|165|166|167|168|169|170|171|172|173|174|175|176|177|178|179|180|181|182|183|184|185|186|187|188|189|190|191|192|193|194|195|196|197|198|199|200|201|202|203|204|205|206|207|208|209|210|211|212|213|214|215|216|217|218|219|(2:220|221)|222|224) */
    /* JADX WARNING: Can't wrap try/catch for region: R(194:3|(2:4|5)|6|(2:8|9)|10|(2:12|13)|14|16|17|18|19|20|(2:22|23)|24|(2:26|27)|28|(2:30|31)|32|(2:34|35)|36|(2:38|39)|40|(2:42|43)|44|46|47|48|50|51|52|54|55|56|58|59|60|62|63|64|65|66|68|69|70|72|73|74|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|91|92|93|94|95|96|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122|123|124|125|126|127|128|129|130|131|132|133|134|135|136|137|138|139|140|141|142|143|144|145|146|147|148|149|150|151|152|153|154|155|156|157|158|159|160|161|162|163|164|165|166|167|168|169|170|171|172|173|174|175|176|177|178|179|180|181|182|183|184|185|186|187|188|189|190|191|192|193|194|195|196|197|198|199|200|201|202|203|204|205|206|207|208|209|210|211|212|213|214|215|216|217|218|219|(2:220|221)|222|224) */
    /* JADX WARNING: Can't wrap try/catch for region: R(195:3|(2:4|5)|6|(2:8|9)|10|(2:12|13)|14|16|17|18|19|20|(2:22|23)|24|(2:26|27)|28|(2:30|31)|32|(2:34|35)|36|(2:38|39)|40|42|43|44|46|47|48|50|51|52|54|55|56|58|59|60|62|63|64|65|66|68|69|70|72|73|74|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|91|92|93|94|95|96|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122|123|124|125|126|127|128|129|130|131|132|133|134|135|136|137|138|139|140|141|142|143|144|145|146|147|148|149|150|151|152|153|154|155|156|157|158|159|160|161|162|163|164|165|166|167|168|169|170|171|172|173|174|175|176|177|178|179|180|181|182|183|184|185|186|187|188|189|190|191|192|193|194|195|196|197|198|199|200|201|202|203|204|205|206|207|208|209|210|211|212|213|214|215|216|217|218|219|(2:220|221)|222|224) */
    /* JADX WARNING: Can't wrap try/catch for region: R(196:3|(2:4|5)|6|(2:8|9)|10|(2:12|13)|14|16|17|18|19|20|(2:22|23)|24|(2:26|27)|28|(2:30|31)|32|(2:34|35)|36|38|39|40|42|43|44|46|47|48|50|51|52|54|55|56|58|59|60|62|63|64|65|66|68|69|70|72|73|74|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|91|92|93|94|95|96|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122|123|124|125|126|127|128|129|130|131|132|133|134|135|136|137|138|139|140|141|142|143|144|145|146|147|148|149|150|151|152|153|154|155|156|157|158|159|160|161|162|163|164|165|166|167|168|169|170|171|172|173|174|175|176|177|178|179|180|181|182|183|184|185|186|187|188|189|190|191|192|193|194|195|196|197|198|199|200|201|202|203|204|205|206|207|208|209|210|211|212|213|214|215|216|217|218|219|(2:220|221)|222|224) */
    /* JADX WARNING: Can't wrap try/catch for region: R(197:3|(2:4|5)|6|(2:8|9)|10|(2:12|13)|14|16|17|18|19|20|(2:22|23)|24|(2:26|27)|28|(2:30|31)|32|34|35|36|38|39|40|42|43|44|46|47|48|50|51|52|54|55|56|58|59|60|62|63|64|65|66|68|69|70|72|73|74|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|91|92|93|94|95|96|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122|123|124|125|126|127|128|129|130|131|132|133|134|135|136|137|138|139|140|141|142|143|144|145|146|147|148|149|150|151|152|153|154|155|156|157|158|159|160|161|162|163|164|165|166|167|168|169|170|171|172|173|174|175|176|177|178|179|180|181|182|183|184|185|186|187|188|189|190|191|192|193|194|195|196|197|198|199|200|201|202|203|204|205|206|207|208|209|210|211|212|213|214|215|216|217|218|219|(2:220|221)|222|224) */
    /* JADX WARNING: Can't wrap try/catch for region: R(200:3|(2:4|5)|6|(2:8|9)|10|(2:12|13)|14|16|17|18|19|20|(2:22|23)|24|26|27|28|30|31|32|34|35|36|38|39|40|42|43|44|46|47|48|50|51|52|54|55|56|58|59|60|62|63|64|65|66|68|69|70|72|73|74|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|91|92|93|94|95|96|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122|123|124|125|126|127|128|129|130|131|132|133|134|135|136|137|138|139|140|141|142|143|144|145|146|147|148|149|150|151|152|153|154|155|156|157|158|159|160|161|162|163|164|165|166|167|168|169|170|171|172|173|174|175|176|177|178|179|180|181|182|183|184|185|186|187|188|189|190|191|192|193|194|195|196|197|198|199|200|201|202|203|204|205|206|207|208|209|210|211|212|213|214|215|216|217|218|219|220|221|222|224) */
    /* JADX WARNING: Can't wrap try/catch for region: R(201:3|(2:4|5)|6|(2:8|9)|10|(2:12|13)|14|16|17|18|19|20|22|23|24|26|27|28|30|31|32|34|35|36|38|39|40|42|43|44|46|47|48|50|51|52|54|55|56|58|59|60|62|63|64|65|66|68|69|70|72|73|74|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|91|92|93|94|95|96|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122|123|124|125|126|127|128|129|130|131|132|133|134|135|136|137|138|139|140|141|142|143|144|145|146|147|148|149|150|151|152|153|154|155|156|157|158|159|160|161|162|163|164|165|166|167|168|169|170|171|172|173|174|175|176|177|178|179|180|181|182|183|184|185|186|187|188|189|190|191|192|193|194|195|196|197|198|199|200|201|202|203|204|205|206|207|208|209|210|211|212|213|214|215|216|217|218|219|220|221|222|224) */
    /* JADX WARNING: Can't wrap try/catch for region: R(202:3|(2:4|5)|6|(2:8|9)|10|12|13|14|16|17|18|19|20|22|23|24|26|27|28|30|31|32|34|35|36|38|39|40|42|43|44|46|47|48|50|51|52|54|55|56|58|59|60|62|63|64|65|66|68|69|70|72|73|74|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|91|92|93|94|95|96|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122|123|124|125|126|127|128|129|130|131|132|133|134|135|136|137|138|139|140|141|142|143|144|145|146|147|148|149|150|151|152|153|154|155|156|157|158|159|160|161|162|163|164|165|166|167|168|169|170|171|172|173|174|175|176|177|178|179|180|181|182|183|184|185|186|187|188|189|190|191|192|193|194|195|196|197|198|199|200|201|202|203|204|205|206|207|208|209|210|211|212|213|214|215|216|217|218|219|220|221|222|224) */
    /* JADX WARNING: Can't wrap try/catch for region: R(203:3|(2:4|5)|6|8|9|10|12|13|14|16|17|18|19|20|22|23|24|26|27|28|30|31|32|34|35|36|38|39|40|42|43|44|46|47|48|50|51|52|54|55|56|58|59|60|62|63|64|65|66|68|69|70|72|73|74|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|91|92|93|94|95|96|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122|123|124|125|126|127|128|129|130|131|132|133|134|135|136|137|138|139|140|141|142|143|144|145|146|147|148|149|150|151|152|153|154|155|156|157|158|159|160|161|162|163|164|165|166|167|168|169|170|171|172|173|174|175|176|177|178|179|180|181|182|183|184|185|186|187|188|189|190|191|192|193|194|195|196|197|198|199|200|201|202|203|204|205|206|207|208|209|210|211|212|213|214|215|216|217|218|219|220|221|222|224) */
    /* JADX WARNING: Can't wrap try/catch for region: R(204:3|4|5|6|8|9|10|12|13|14|16|17|18|19|20|22|23|24|26|27|28|30|31|32|34|35|36|38|39|40|42|43|44|46|47|48|50|51|52|54|55|56|58|59|60|62|63|64|65|66|68|69|70|72|73|74|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|91|92|93|94|95|96|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122|123|124|125|126|127|128|129|130|131|132|133|134|135|136|137|138|139|140|141|142|143|144|145|146|147|148|149|150|151|152|153|154|155|156|157|158|159|160|161|162|163|164|165|166|167|168|169|170|171|172|173|174|175|176|177|178|179|180|181|182|183|184|185|186|187|188|189|190|191|192|193|194|195|196|197|198|199|200|201|202|203|204|205|206|207|208|209|210|211|212|213|214|215|216|217|218|219|220|221|222|224) */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing exception handler attribute for start block: B:100:0x00d2 */
    /* JADX WARNING: Missing exception handler attribute for start block: B:102:0x00da */
    /* JADX WARNING: Missing exception handler attribute for start block: B:104:0x00e2 */
    /* JADX WARNING: Missing exception handler attribute for start block: B:106:0x00ea */
    /* JADX WARNING: Missing exception handler attribute for start block: B:108:0x00f2 */
    /* JADX WARNING: Missing exception handler attribute for start block: B:110:0x00fa */
    /* JADX WARNING: Missing exception handler attribute for start block: B:112:0x0102 */
    /* JADX WARNING: Missing exception handler attribute for start block: B:114:0x010a */
    /* JADX WARNING: Missing exception handler attribute for start block: B:116:0x0112 */
    /* JADX WARNING: Missing exception handler attribute for start block: B:118:0x011a */
    /* JADX WARNING: Missing exception handler attribute for start block: B:120:0x0122 */
    /* JADX WARNING: Missing exception handler attribute for start block: B:122:0x012a */
    /* JADX WARNING: Missing exception handler attribute for start block: B:124:0x0132 */
    /* JADX WARNING: Missing exception handler attribute for start block: B:126:0x013a */
    /* JADX WARNING: Missing exception handler attribute for start block: B:128:0x0142 */
    /* JADX WARNING: Missing exception handler attribute for start block: B:130:0x014a */
    /* JADX WARNING: Missing exception handler attribute for start block: B:132:0x0152 */
    /* JADX WARNING: Missing exception handler attribute for start block: B:134:0x015a */
    /* JADX WARNING: Missing exception handler attribute for start block: B:136:0x0162 */
    /* JADX WARNING: Missing exception handler attribute for start block: B:138:0x016a */
    /* JADX WARNING: Missing exception handler attribute for start block: B:140:0x0172 */
    /* JADX WARNING: Missing exception handler attribute for start block: B:142:0x017a */
    /* JADX WARNING: Missing exception handler attribute for start block: B:144:0x0182 */
    /* JADX WARNING: Missing exception handler attribute for start block: B:146:0x018a */
    /* JADX WARNING: Missing exception handler attribute for start block: B:148:0x0192 */
    /* JADX WARNING: Missing exception handler attribute for start block: B:150:0x019a */
    /* JADX WARNING: Missing exception handler attribute for start block: B:152:0x01a2 */
    /* JADX WARNING: Missing exception handler attribute for start block: B:154:0x01aa */
    /* JADX WARNING: Missing exception handler attribute for start block: B:156:0x01b2 */
    /* JADX WARNING: Missing exception handler attribute for start block: B:158:0x01ba */
    /* JADX WARNING: Missing exception handler attribute for start block: B:160:0x01c2 */
    /* JADX WARNING: Missing exception handler attribute for start block: B:162:0x01ca */
    /* JADX WARNING: Missing exception handler attribute for start block: B:164:0x01d2 */
    /* JADX WARNING: Missing exception handler attribute for start block: B:166:0x01da */
    /* JADX WARNING: Missing exception handler attribute for start block: B:168:0x01e2 */
    /* JADX WARNING: Missing exception handler attribute for start block: B:170:0x01ea */
    /* JADX WARNING: Missing exception handler attribute for start block: B:172:0x01f2 */
    /* JADX WARNING: Missing exception handler attribute for start block: B:174:0x01fa */
    /* JADX WARNING: Missing exception handler attribute for start block: B:176:0x0202 */
    /* JADX WARNING: Missing exception handler attribute for start block: B:178:0x020a */
    /* JADX WARNING: Missing exception handler attribute for start block: B:180:0x0212 */
    /* JADX WARNING: Missing exception handler attribute for start block: B:182:0x021a */
    /* JADX WARNING: Missing exception handler attribute for start block: B:184:0x0222 */
    /* JADX WARNING: Missing exception handler attribute for start block: B:186:0x022a */
    /* JADX WARNING: Missing exception handler attribute for start block: B:188:0x0232 */
    /* JADX WARNING: Missing exception handler attribute for start block: B:18:0x0023 */
    /* JADX WARNING: Missing exception handler attribute for start block: B:190:0x023a */
    /* JADX WARNING: Missing exception handler attribute for start block: B:192:0x0242 */
    /* JADX WARNING: Missing exception handler attribute for start block: B:194:0x024a */
    /* JADX WARNING: Missing exception handler attribute for start block: B:196:0x0252 */
    /* JADX WARNING: Missing exception handler attribute for start block: B:198:0x025a */
    /* JADX WARNING: Missing exception handler attribute for start block: B:200:0x0262 */
    /* JADX WARNING: Missing exception handler attribute for start block: B:202:0x026a */
    /* JADX WARNING: Missing exception handler attribute for start block: B:204:0x0272 */
    /* JADX WARNING: Missing exception handler attribute for start block: B:206:0x027a */
    /* JADX WARNING: Missing exception handler attribute for start block: B:208:0x0280 */
    /* JADX WARNING: Missing exception handler attribute for start block: B:210:0x0288 */
    /* JADX WARNING: Missing exception handler attribute for start block: B:212:0x0290 */
    /* JADX WARNING: Missing exception handler attribute for start block: B:214:0x0298 */
    /* JADX WARNING: Missing exception handler attribute for start block: B:216:0x02a0 */
    /* JADX WARNING: Missing exception handler attribute for start block: B:218:0x02a8 */
    /* JADX WARNING: Missing exception handler attribute for start block: B:220:0x02b0 */
    /* JADX WARNING: Missing exception handler attribute for start block: B:64:0x006a */
    /* JADX WARNING: Missing exception handler attribute for start block: B:78:0x0080 */
    /* JADX WARNING: Missing exception handler attribute for start block: B:80:0x0088 */
    /* JADX WARNING: Missing exception handler attribute for start block: B:82:0x008e */
    /* JADX WARNING: Missing exception handler attribute for start block: B:84:0x0094 */
    /* JADX WARNING: Missing exception handler attribute for start block: B:86:0x009a */
    /* JADX WARNING: Missing exception handler attribute for start block: B:88:0x00a2 */
    /* JADX WARNING: Missing exception handler attribute for start block: B:90:0x00aa */
    /* JADX WARNING: Missing exception handler attribute for start block: B:92:0x00b2 */
    /* JADX WARNING: Missing exception handler attribute for start block: B:94:0x00ba */
    /* JADX WARNING: Missing exception handler attribute for start block: B:96:0x00c2 */
    /* JADX WARNING: Missing exception handler attribute for start block: B:98:0x00ca */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    static /* synthetic */ int[] a() {
        /*
        // Method dump skipped, instructions count: 699
        */
        throw new UnsupportedOperationException("Method not decompiled: com.caverock.androidsvg.f.a():int[]");
    }

    private void b(Attributes attributes) {
        if (this.b != null) {
            c.l lVar = new c.l();
            lVar.a = this.a;
            lVar.b = this.b;
            g(lVar, attributes);
            j(lVar, attributes);
            l(lVar, attributes);
            f(lVar, attributes);
            this.b.c(lVar);
            this.b = lVar;
            return;
        }
        throw new SAXException("Invalid document. Root element must be <svg>");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:39:0x0099, code lost:
        continue;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void c(org.xml.sax.Attributes r6) {
        /*
        // Method dump skipped, instructions count: 184
        */
        throw new UnsupportedOperationException("Method not decompiled: com.caverock.androidsvg.f.c(org.xml.sax.Attributes):void");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:55:0x00c3, code lost:
        continue;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void d(org.xml.sax.Attributes r8) {
        /*
        // Method dump skipped, instructions count: 228
        */
        throw new UnsupportedOperationException("Method not decompiled: com.caverock.androidsvg.f.d(org.xml.sax.Attributes):void");
    }

    private void f(c.f0 f0Var, Attributes attributes) {
        Set<String> hashSet;
        for (int i2 = 0; i2 < attributes.getLength(); i2++) {
            String trim = attributes.getValue(i2).trim();
            int i3 = a()[a.a(attributes.getLocalName(i2)).ordinal()];
            if (i3 != 74) {
                switch (i3) {
                    case 53:
                        b bVar = new b(trim);
                        HashSet hashSet2 = new HashSet();
                        while (!bVar.f()) {
                            String l2 = bVar.l();
                            if (l2.startsWith("http://www.w3.org/TR/SVG11/feature#")) {
                                hashSet2.add(l2.substring(35));
                            } else {
                                hashSet2.add("UNSUPPORTED");
                            }
                            bVar.q();
                        }
                        f0Var.h(hashSet2);
                        continue;
                    case 54:
                        f0Var.j(trim);
                        continue;
                    case 55:
                        b bVar2 = new b(trim);
                        HashSet hashSet3 = new HashSet();
                        while (!bVar2.f()) {
                            hashSet3.add(bVar2.l());
                            bVar2.q();
                        }
                        f0Var.d(hashSet3);
                        continue;
                    case 56:
                        if (s(trim) == null) {
                            hashSet = new HashSet<>(0);
                        }
                        f0Var.f(hashSet);
                        continue;
                }
            } else {
                b bVar3 = new b(trim);
                HashSet hashSet4 = new HashSet();
                while (!bVar3.f()) {
                    String l3 = bVar3.l();
                    int indexOf = l3.indexOf(45);
                    if (indexOf != -1) {
                        l3 = l3.substring(0, indexOf);
                    }
                    hashSet4.add(new Locale(l3, "", "").getLanguage());
                    bVar3.q();
                }
                f0Var.l(hashSet4);
            }
        }
    }

    private void g(c.k0 k0Var, Attributes attributes) {
        for (int i2 = 0; i2 < attributes.getLength(); i2++) {
            String qName = attributes.getQName(i2);
            if (qName.equals(FacebookAdapter.KEY_ID) || qName.equals("xml:id")) {
                k0Var.c = attributes.getValue(i2).trim();
                return;
            } else if (qName.equals("xml:space")) {
                String trim = attributes.getValue(i2).trim();
                if ("default".equals(trim)) {
                    k0Var.d = Boolean.FALSE;
                    return;
                } else if ("preserve".equals(trim)) {
                    k0Var.d = Boolean.TRUE;
                    return;
                } else {
                    throw new SAXException(ic.h("Invalid value for \"xml:space\" attribute: ", trim));
                }
            }
        }
    }

    private void h(c.i iVar, Attributes attributes) {
        for (int i2 = 0; i2 < attributes.getLength(); i2++) {
            String trim = attributes.getValue(i2).trim();
            int i3 = a()[a.a(attributes.getLocalName(i2)).ordinal()];
            if (i3 == 24) {
                iVar.j = A(trim);
            } else if (i3 != 25) {
                if (i3 != 27) {
                    if (i3 == 61) {
                        try {
                            iVar.k = c.j.valueOf(trim);
                        } catch (IllegalArgumentException unused) {
                            throw new SAXException("Invalid spreadMethod attribute. \"" + trim + "\" is not a valid value.");
                        }
                    }
                } else if ("http://www.w3.org/1999/xlink".equals(attributes.getURI(i2))) {
                    iVar.l = trim;
                }
            } else if ("objectBoundingBox".equals(trim)) {
                iVar.i = Boolean.FALSE;
            } else if ("userSpaceOnUse".equals(trim)) {
                iVar.i = Boolean.TRUE;
            } else {
                throw new SAXException("Invalid value for attribute gradientUnits");
            }
        }
    }

    private void i(c.y yVar, Attributes attributes, String str) {
        for (int i2 = 0; i2 < attributes.getLength(); i2++) {
            if (a.a(attributes.getLocalName(i2)) == a.points) {
                b bVar = new b(attributes.getValue(i2));
                ArrayList arrayList = new ArrayList();
                bVar.q();
                while (!bVar.f()) {
                    Float i3 = bVar.i();
                    if (i3 != null) {
                        bVar.p();
                        Float i4 = bVar.i();
                        if (i4 != null) {
                            bVar.p();
                            arrayList.add(i3);
                            arrayList.add(i4);
                        } else {
                            throw new SAXException("Invalid <" + str + "> points attribute. There should be an even number of coordinates.");
                        }
                    } else {
                        throw new SAXException("Invalid <" + str + "> points attribute. Non-coordinate content found in list.");
                    }
                }
                yVar.o = new float[arrayList.size()];
                Iterator it = arrayList.iterator();
                int i5 = 0;
                while (it.hasNext()) {
                    yVar.o[i5] = ((Float) it.next()).floatValue();
                    i5++;
                }
            }
        }
    }

    private void j(c.k0 k0Var, Attributes attributes) {
        for (int i2 = 0; i2 < attributes.getLength(); i2++) {
            String trim = attributes.getValue(i2).trim();
            if (trim.length() != 0) {
                int i3 = a()[a.a(attributes.getLocalName(i2)).ordinal()];
                if (i3 == 1) {
                    a.c cVar = new a.c(trim);
                    ArrayList arrayList = null;
                    while (!cVar.f()) {
                        String r = cVar.r();
                        if (r != null) {
                            if (arrayList == null) {
                                arrayList = new ArrayList();
                            }
                            arrayList.add(r);
                            cVar.q();
                        } else {
                            throw new SAXException(ic.h("Invalid value for \"class\" attribute: ", trim));
                        }
                    }
                    k0Var.g = arrayList;
                } else if (i3 != 73) {
                    if (k0Var.e == null) {
                        k0Var.e = new c.d0();
                    }
                    C(k0Var.e, attributes.getLocalName(i2), attributes.getValue(i2).trim());
                } else {
                    b bVar = new b(trim.replaceAll("/\\*.*?\\*/", ""));
                    while (true) {
                        String m2 = bVar.m(':');
                        bVar.q();
                        if (!bVar.d(':')) {
                            break;
                        }
                        bVar.q();
                        String m3 = bVar.m(';');
                        if (m3 == null) {
                            break;
                        }
                        bVar.q();
                        if (bVar.f() || bVar.d(';')) {
                            if (k0Var.f == null) {
                                k0Var.f = new c.d0();
                            }
                            C(k0Var.f, m2, m3);
                            bVar.q();
                        }
                    }
                }
            }
        }
    }

    private void k(c.z0 z0Var, Attributes attributes) {
        for (int i2 = 0; i2 < attributes.getLength(); i2++) {
            String trim = attributes.getValue(i2).trim();
            int i3 = a()[a.a(attributes.getLocalName(i2)).ordinal()];
            if (i3 == 10) {
                z0Var.p = v(trim);
            } else if (i3 == 11) {
                z0Var.q = v(trim);
            } else if (i3 == 83) {
                z0Var.n = v(trim);
            } else if (i3 == 84) {
                z0Var.o = v(trim);
            }
        }
    }

    private void l(c.m mVar, Attributes attributes) {
        for (int i2 = 0; i2 < attributes.getLength(); i2++) {
            if (a.a(attributes.getLocalName(i2)) == a.transform) {
                mVar.k(A(attributes.getValue(i2)));
            }
        }
    }

    private void m(c.q0 q0Var, Attributes attributes) {
        for (int i2 = 0; i2 < attributes.getLength(); i2++) {
            String trim = attributes.getValue(i2).trim();
            int i3 = a()[a.a(attributes.getLocalName(i2)).ordinal()];
            if (i3 == 49) {
                z(q0Var, trim);
            } else if (i3 != 81) {
                continue;
            } else {
                b bVar = new b(trim);
                bVar.q();
                Float i4 = bVar.i();
                bVar.p();
                Float i5 = bVar.i();
                bVar.p();
                Float i6 = bVar.i();
                bVar.p();
                Float i7 = bVar.i();
                if (i4 == null || i5 == null || i6 == null || i7 == null) {
                    throw new SAXException("Invalid viewBox definition - should have four numbers");
                } else if (i6.floatValue() < 0.0f) {
                    throw new SAXException("Invalid viewBox. width cannot be negative");
                } else if (i7.floatValue() >= 0.0f) {
                    q0Var.o = new c.a(i4.floatValue(), i5.floatValue(), i6.floatValue(), i7.floatValue());
                } else {
                    throw new SAXException("Invalid viewBox. height cannot be negative");
                }
            }
        }
    }

    private static c.e n(String str) {
        if (str.charAt(0) == '#') {
            try {
                if (str.length() == 7) {
                    return new c.e(Integer.parseInt(str.substring(1), 16));
                }
                if (str.length() == 4) {
                    int parseInt = Integer.parseInt(str.substring(1), 16);
                    int i2 = parseInt & 3840;
                    int i3 = parseInt & 240;
                    int i4 = parseInt & 15;
                    return new c.e(i4 | (i2 << 12) | (i2 << 16) | (i3 << 8) | (i3 << 4) | (i4 << 4));
                }
                throw new SAXException("Bad hex colour value: " + str);
            } catch (NumberFormatException unused) {
                throw new SAXException(ic.h("Bad colour value: ", str));
            }
        } else {
            Locale locale = Locale.US;
            if (str.toLowerCase(locale).startsWith("rgb(")) {
                b bVar = new b(str.substring(4));
                bVar.q();
                int o2 = o(bVar);
                bVar.p();
                int o3 = o(bVar);
                bVar.p();
                int o4 = o(bVar);
                bVar.q();
                if (bVar.d(')')) {
                    return new c.e((o2 << 16) | (o3 << 8) | o4);
                }
                throw new SAXException(ic.h("Bad rgb() colour value: ", str));
            }
            Integer num = j.get(str.toLowerCase(locale));
            if (num != null) {
                return new c.e(num.intValue());
            }
            throw new SAXException(ic.h("Invalid colour keyword: ", str));
        }
    }

    private static int o(b bVar) {
        float floatValue = bVar.i().floatValue();
        if (bVar.d('%')) {
            floatValue = (floatValue * 256.0f) / 100.0f;
        }
        if (floatValue < 0.0f) {
            return 0;
        }
        if (floatValue > 255.0f) {
            return 255;
        }
        return (int) floatValue;
    }

    private static c.n0 p(String str) {
        if (str.equals("none")) {
            return null;
        }
        if (str.equals("currentColor")) {
            return c.f.a();
        }
        return n(str);
    }

    private static c.d0.a q(String str) {
        if ("nonzero".equals(str)) {
            return c.d0.a.NonZero;
        }
        if ("evenodd".equals(str)) {
            return c.d0.a.EvenOdd;
        }
        throw new SAXException(ic.h("Invalid fill-rule property: ", str));
    }

    private static float r(String str) {
        if (str.length() != 0) {
            try {
                return Float.parseFloat(str);
            } catch (NumberFormatException e2) {
                throw new SAXException(ic.h("Invalid float value: ", str), e2);
            }
        } else {
            throw new SAXException("Invalid float value (empty string)");
        }
    }

    private static List<String> s(String str) {
        b bVar = new b(str);
        ArrayList arrayList = null;
        do {
            String k2 = bVar.k();
            if (k2 == null) {
                k2 = bVar.m(',');
            }
            if (k2 == null) {
                break;
            }
            if (arrayList == null) {
                arrayList = new ArrayList();
            }
            arrayList.add(k2);
            bVar.p();
        } while (!bVar.f());
        return arrayList;
    }

    private static String t(String str, String str2) {
        if (str.equals("none")) {
            return null;
        }
        if (str.startsWith("url(") && str.endsWith(")")) {
            return str.substring(4, str.length() - 1).trim();
        }
        throw new SAXException("Bad " + str2 + " attribute. Expected \"none\" or \"url()\" format");
    }

    protected static c.o u(String str) {
        if (str.length() != 0) {
            int length = str.length();
            c.c1 c1Var = c.c1.px;
            char charAt = str.charAt(length - 1);
            if (charAt == '%') {
                length--;
                c1Var = c.c1.percent;
            } else if (length > 2 && Character.isLetter(charAt) && Character.isLetter(str.charAt(length - 2))) {
                length -= 2;
                try {
                    c1Var = c.c1.valueOf(str.substring(length).toLowerCase(Locale.US));
                } catch (IllegalArgumentException unused) {
                    throw new SAXException(ic.h("Invalid length unit specifier: ", str));
                }
            }
            try {
                return new c.o(Float.parseFloat(str.substring(0, length)), c1Var);
            } catch (NumberFormatException e2) {
                throw new SAXException(ic.h("Invalid length value: ", str), e2);
            }
        } else {
            throw new SAXException("Invalid length value (empty string)");
        }
    }

    private static List<c.o> v(String str) {
        if (str.length() != 0) {
            ArrayList arrayList = new ArrayList(1);
            b bVar = new b(str);
            bVar.q();
            while (!bVar.f()) {
                Float i2 = bVar.i();
                if (i2 == null) {
                    StringBuilder sb = new StringBuilder("Invalid length list value: ");
                    int i3 = bVar.b;
                    while (!bVar.f() && !bVar.g(bVar.a.charAt(bVar.b))) {
                        bVar.b++;
                    }
                    String substring = bVar.a.substring(i3, bVar.b);
                    bVar.b = i3;
                    sb.append(substring);
                    throw new SAXException(sb.toString());
                }
                c.c1 n2 = bVar.n();
                if (n2 == null) {
                    n2 = c.c1.px;
                }
                arrayList.add(new c.o(i2.floatValue(), n2));
                bVar.p();
            }
            return arrayList;
        }
        throw new SAXException("Invalid length list (empty string)");
    }

    private static c.o w(b bVar) {
        if (bVar.e("auto")) {
            return new c.o(0.0f);
        }
        return bVar.j();
    }

    private static float x(String str) {
        float r = r(str);
        if (r < 0.0f) {
            return 0.0f;
        }
        if (r > 1.0f) {
            return 1.0f;
        }
        return r;
    }

    private static c.n0 y(String str, String str2) {
        if (!str.startsWith("url(")) {
            return p(str);
        }
        int indexOf = str.indexOf(")");
        if (indexOf != -1) {
            String trim = str.substring(4, indexOf).trim();
            c.n0 n0Var = null;
            String trim2 = str.substring(indexOf + 1).trim();
            if (trim2.length() > 0) {
                n0Var = p(trim2);
            }
            return new c.t(trim, n0Var);
        }
        throw new SAXException("Bad " + str2 + " attribute. Unterminated url() reference");
    }

    private static void z(c.o0 o0Var, String str) {
        b.EnumC0036b bVar;
        b bVar2 = new b(str);
        bVar2.q();
        String l2 = bVar2.l();
        if ("defer".equals(l2)) {
            bVar2.q();
            l2 = bVar2.l();
        }
        b.a aVar = n.get(l2);
        bVar2.q();
        if (!bVar2.f()) {
            String l3 = bVar2.l();
            if (l3.equals("meet")) {
                bVar = b.EnumC0036b.Meet;
            } else if (l3.equals("slice")) {
                bVar = b.EnumC0036b.Slice;
            } else {
                throw new SAXException(ic.h("Invalid preserveAspectRatio definition: ", str));
            }
        } else {
            bVar = null;
        }
        o0Var.n = new b(aVar, bVar);
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void characters(char[] cArr, int i2, int i3) {
        c.m0 m0Var;
        if (!this.c) {
            if (this.e) {
                if (this.g == null) {
                    this.g = new StringBuilder(i3);
                }
                this.g.append(cArr, i2, i3);
            } else if (this.h) {
                if (this.i == null) {
                    this.i = new StringBuilder(i3);
                }
                this.i.append(cArr, i2, i3);
            } else {
                c.i0 i0Var = this.b;
                if (i0Var instanceof c.x0) {
                    c.g0 g0Var = (c.g0) i0Var;
                    int size = g0Var.i.size();
                    if (size == 0) {
                        m0Var = null;
                    } else {
                        m0Var = g0Var.i.get(size - 1);
                    }
                    if (m0Var instanceof c.b1) {
                        c.b1 b1Var = (c.b1) m0Var;
                        b1Var.c = String.valueOf(b1Var.c) + new String(cArr, i2, i3);
                        return;
                    }
                    ((c.g0) this.b).c(new c.b1(new String(cArr, i2, i3)));
                }
            }
        }
    }

    @Override // org.xml.sax.ext.LexicalHandler, org.xml.sax.ext.DefaultHandler2
    public void comment(char[] cArr, int i2, int i3) {
        if (!this.c && this.h) {
            if (this.i == null) {
                this.i = new StringBuilder(i3);
            }
            this.i.append(cArr, i2, i3);
        }
    }

    /* access modifiers changed from: protected */
    public c e(InputStream inputStream) {
        if (!inputStream.markSupported()) {
            inputStream = new BufferedInputStream(inputStream);
        }
        try {
            inputStream.mark(3);
            int read = inputStream.read() + (inputStream.read() << 8);
            inputStream.reset();
            if (read == 35615) {
                inputStream = new GZIPInputStream(inputStream);
            }
        } catch (IOException unused) {
        }
        try {
            XMLReader xMLReader = SAXParserFactory.newInstance().newSAXParser().getXMLReader();
            xMLReader.setContentHandler(this);
            xMLReader.setProperty("http://xml.org/sax/properties/lexical-handler", this);
            xMLReader.parse(new InputSource(inputStream));
            try {
                inputStream.close();
            } catch (IOException unused2) {
                Log.e("SVGParser", "Exception thrown closing input stream");
            }
            return this.a;
        } catch (IOException e2) {
            throw new e("File error", e2);
        } catch (ParserConfigurationException e3) {
            throw new e("XML Parser problem", e3);
        } catch (SAXException e4) {
            throw new e("SVG parse error: " + e4.getMessage(), e4);
        } catch (Throwable th) {
            try {
                inputStream.close();
            } catch (IOException unused3) {
                Log.e("SVGParser", "Exception thrown closing input stream");
            }
            throw th;
        }
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void endDocument() {
        super.endDocument();
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void endElement(String str, String str2, String str3) {
        StringBuilder sb;
        super.endElement(str, str2, str3);
        if (this.c) {
            int i2 = this.d - 1;
            this.d = i2;
            if (i2 == 0) {
                this.c = false;
                return;
            }
        }
        if (!"http://www.w3.org/2000/svg".equals(str) && !"".equals(str)) {
            return;
        }
        if (str2.equals("title") || str2.equals("desc")) {
            this.e = false;
            if (this.f.equals("title")) {
                c cVar = this.a;
                this.g.toString();
                Objects.requireNonNull(cVar);
            } else if (this.f.equals("desc")) {
                c cVar2 = this.a;
                this.g.toString();
                Objects.requireNonNull(cVar2);
            }
            this.g.setLength(0);
        } else if (str2.equals("style") && (sb = this.i) != null) {
            this.h = false;
            this.a.b(new a(a.e.screen).d(sb.toString()));
            this.i.setLength(0);
        } else if (str2.equals("svg") || str2.equals("defs") || str2.equals("g") || str2.equals("use") || str2.equals("image") || str2.equals("text") || str2.equals("tspan") || str2.equals("switch") || str2.equals("symbol") || str2.equals("marker") || str2.equals("linearGradient") || str2.equals("radialGradient") || str2.equals("stop") || str2.equals("clipPath") || str2.equals("textPath") || str2.equals("pattern") || str2.equals("view") || str2.equals("mask") || str2.equals("solidColor")) {
            this.b = ((c.m0) this.b).b;
        }
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void startDocument() {
        super.startDocument();
        this.a = new c();
    }

    /* JADX WARNING: Code restructure failed: missing block: B:516:0x00b5, code lost:
        continue;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:525:0x0198, code lost:
        continue;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:555:0x0674, code lost:
        continue;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:593:0x0ac6, code lost:
        continue;
     */
    /* JADX WARNING: Removed duplicated region for block: B:177:0x056b  */
    /* JADX WARNING: Removed duplicated region for block: B:543:0x05ae A[SYNTHETIC] */
    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void startElement(java.lang.String r22, java.lang.String r23, java.lang.String r24, org.xml.sax.Attributes r25) {
        /*
        // Method dump skipped, instructions count: 3478
        */
        throw new UnsupportedOperationException("Method not decompiled: com.caverock.androidsvg.f.startElement(java.lang.String, java.lang.String, java.lang.String, org.xml.sax.Attributes):void");
    }
}
