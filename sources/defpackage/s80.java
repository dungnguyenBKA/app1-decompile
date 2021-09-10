package defpackage;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.net.InetAddress;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Calendar;
import java.util.Currency;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.StringTokenizer;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicIntegerArray;

/* renamed from: s80  reason: default package */
public final class s80 {
    public static final z60<String> A;
    public static final z60<BigDecimal> B = new h();
    public static final z60<BigInteger> C = new i();
    public static final a70 D;
    public static final z60<StringBuilder> E;
    public static final a70 F;
    public static final z60<StringBuffer> G;
    public static final a70 H;
    public static final z60<URL> I;
    public static final a70 J;
    public static final z60<URI> K;
    public static final a70 L;
    public static final z60<InetAddress> M;
    public static final a70 N;
    public static final z60<UUID> O;
    public static final a70 P;
    public static final z60<Currency> Q;
    public static final a70 R;
    public static final a70 S = new r();
    public static final z60<Calendar> T;
    public static final a70 U;
    public static final z60<Locale> V;
    public static final a70 W;
    public static final z60<p60> X;
    public static final a70 Y;
    public static final a70 Z = new w();
    public static final z60<Class> a;
    public static final a70 b;
    public static final z60<BitSet> c;
    public static final a70 d;
    public static final z60<Boolean> e;
    public static final z60<Boolean> f = new a0();
    public static final a70 g;
    public static final z60<Number> h;
    public static final a70 i;
    public static final z60<Number> j;
    public static final a70 k;
    public static final z60<Number> l;
    public static final a70 m;
    public static final z60<AtomicInteger> n;
    public static final a70 o;
    public static final z60<AtomicBoolean> p;
    public static final a70 q;
    public static final z60<AtomicIntegerArray> r;
    public static final a70 s;
    public static final z60<Number> t = new b();
    public static final z60<Number> u = new c();
    public static final z60<Number> v = new d();
    public static final z60<Number> w;
    public static final a70 x;
    public static final z60<Character> y;
    public static final a70 z;

    /* renamed from: s80$a */
    class a extends z60<AtomicIntegerArray> {
        a() {
        }

        /* Return type fixed from 'java.lang.Object' to match base method */
        @Override // defpackage.z60
        public AtomicIntegerArray b(a90 a90) {
            ArrayList arrayList = new ArrayList();
            a90.j();
            while (a90.j0()) {
                try {
                    arrayList.add(Integer.valueOf(a90.p0()));
                } catch (NumberFormatException e) {
                    throw new x60(e);
                }
            }
            a90.V();
            int size = arrayList.size();
            AtomicIntegerArray atomicIntegerArray = new AtomicIntegerArray(size);
            for (int i = 0; i < size; i++) {
                atomicIntegerArray.set(i, ((Integer) arrayList.get(i)).intValue());
            }
            return atomicIntegerArray;
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [c90, java.lang.Object] */
        @Override // defpackage.z60
        public void c(c90 c90, AtomicIntegerArray atomicIntegerArray) {
            AtomicIntegerArray atomicIntegerArray2 = atomicIntegerArray;
            c90.o();
            int length = atomicIntegerArray2.length();
            for (int i = 0; i < length; i++) {
                c90.w0((long) atomicIntegerArray2.get(i));
            }
            c90.V();
        }
    }

    /* renamed from: s80$a0 */
    class a0 extends z60<Boolean> {
        a0() {
        }

        /* Return type fixed from 'java.lang.Object' to match base method */
        @Override // defpackage.z60
        public Boolean b(a90 a90) {
            if (a90.x0() != b90.NULL) {
                return Boolean.valueOf(a90.v0());
            }
            a90.t0();
            return null;
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [c90, java.lang.Object] */
        @Override // defpackage.z60
        public void c(c90 c90, Boolean bool) {
            String str;
            Boolean bool2 = bool;
            if (bool2 == null) {
                str = "null";
            } else {
                str = bool2.toString();
            }
            c90.z0(str);
        }
    }

    /* renamed from: s80$b */
    class b extends z60<Number> {
        b() {
        }

        /* Return type fixed from 'java.lang.Object' to match base method */
        @Override // defpackage.z60
        public Number b(a90 a90) {
            if (a90.x0() == b90.NULL) {
                a90.t0();
                return null;
            }
            try {
                return Long.valueOf(a90.q0());
            } catch (NumberFormatException e) {
                throw new x60(e);
            }
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [c90, java.lang.Object] */
        @Override // defpackage.z60
        public void c(c90 c90, Number number) {
            c90.y0(number);
        }
    }

    /* renamed from: s80$b0 */
    class b0 extends z60<Number> {
        b0() {
        }

        /* Return type fixed from 'java.lang.Object' to match base method */
        @Override // defpackage.z60
        public Number b(a90 a90) {
            if (a90.x0() == b90.NULL) {
                a90.t0();
                return null;
            }
            try {
                return Byte.valueOf((byte) a90.p0());
            } catch (NumberFormatException e) {
                throw new x60(e);
            }
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [c90, java.lang.Object] */
        @Override // defpackage.z60
        public void c(c90 c90, Number number) {
            c90.y0(number);
        }
    }

    /* renamed from: s80$c */
    class c extends z60<Number> {
        c() {
        }

        /* Return type fixed from 'java.lang.Object' to match base method */
        @Override // defpackage.z60
        public Number b(a90 a90) {
            if (a90.x0() != b90.NULL) {
                return Float.valueOf((float) a90.o0());
            }
            a90.t0();
            return null;
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [c90, java.lang.Object] */
        @Override // defpackage.z60
        public void c(c90 c90, Number number) {
            c90.y0(number);
        }
    }

    /* renamed from: s80$c0 */
    class c0 extends z60<Number> {
        c0() {
        }

        /* Return type fixed from 'java.lang.Object' to match base method */
        @Override // defpackage.z60
        public Number b(a90 a90) {
            if (a90.x0() == b90.NULL) {
                a90.t0();
                return null;
            }
            try {
                return Short.valueOf((short) a90.p0());
            } catch (NumberFormatException e) {
                throw new x60(e);
            }
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [c90, java.lang.Object] */
        @Override // defpackage.z60
        public void c(c90 c90, Number number) {
            c90.y0(number);
        }
    }

    /* renamed from: s80$d */
    class d extends z60<Number> {
        d() {
        }

        /* Return type fixed from 'java.lang.Object' to match base method */
        @Override // defpackage.z60
        public Number b(a90 a90) {
            if (a90.x0() != b90.NULL) {
                return Double.valueOf(a90.o0());
            }
            a90.t0();
            return null;
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [c90, java.lang.Object] */
        @Override // defpackage.z60
        public void c(c90 c90, Number number) {
            c90.y0(number);
        }
    }

    /* renamed from: s80$d0 */
    class d0 extends z60<Number> {
        d0() {
        }

        /* Return type fixed from 'java.lang.Object' to match base method */
        @Override // defpackage.z60
        public Number b(a90 a90) {
            if (a90.x0() == b90.NULL) {
                a90.t0();
                return null;
            }
            try {
                return Integer.valueOf(a90.p0());
            } catch (NumberFormatException e) {
                throw new x60(e);
            }
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [c90, java.lang.Object] */
        @Override // defpackage.z60
        public void c(c90 c90, Number number) {
            c90.y0(number);
        }
    }

    /* renamed from: s80$e */
    class e extends z60<Number> {
        e() {
        }

        /* Return type fixed from 'java.lang.Object' to match base method */
        @Override // defpackage.z60
        public Number b(a90 a90) {
            b90 x0 = a90.x0();
            int ordinal = x0.ordinal();
            if (ordinal == 5 || ordinal == 6) {
                return new u70(a90.v0());
            }
            if (ordinal == 8) {
                a90.t0();
                return null;
            }
            throw new x60("Expecting number, got: " + x0);
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [c90, java.lang.Object] */
        @Override // defpackage.z60
        public void c(c90 c90, Number number) {
            c90.y0(number);
        }
    }

    /* renamed from: s80$e0 */
    class e0 extends z60<AtomicInteger> {
        e0() {
        }

        /* Return type fixed from 'java.lang.Object' to match base method */
        @Override // defpackage.z60
        public AtomicInteger b(a90 a90) {
            try {
                return new AtomicInteger(a90.p0());
            } catch (NumberFormatException e) {
                throw new x60(e);
            }
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [c90, java.lang.Object] */
        @Override // defpackage.z60
        public void c(c90 c90, AtomicInteger atomicInteger) {
            c90.w0((long) atomicInteger.get());
        }
    }

    /* renamed from: s80$f */
    class f extends z60<Character> {
        f() {
        }

        /* Return type fixed from 'java.lang.Object' to match base method */
        @Override // defpackage.z60
        public Character b(a90 a90) {
            if (a90.x0() == b90.NULL) {
                a90.t0();
                return null;
            }
            String v0 = a90.v0();
            if (v0.length() == 1) {
                return Character.valueOf(v0.charAt(0));
            }
            throw new x60(ic.i("Expecting character, got: ", v0));
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [c90, java.lang.Object] */
        @Override // defpackage.z60
        public void c(c90 c90, Character ch) {
            String str;
            Character ch2 = ch;
            if (ch2 == null) {
                str = null;
            } else {
                str = String.valueOf(ch2);
            }
            c90.z0(str);
        }
    }

    /* renamed from: s80$f0 */
    class f0 extends z60<AtomicBoolean> {
        f0() {
        }

        /* Return type fixed from 'java.lang.Object' to match base method */
        @Override // defpackage.z60
        public AtomicBoolean b(a90 a90) {
            return new AtomicBoolean(a90.n0());
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [c90, java.lang.Object] */
        @Override // defpackage.z60
        public void c(c90 c90, AtomicBoolean atomicBoolean) {
            c90.A0(atomicBoolean.get());
        }
    }

    /* renamed from: s80$g */
    class g extends z60<String> {
        g() {
        }

        /* Return type fixed from 'java.lang.Object' to match base method */
        @Override // defpackage.z60
        public String b(a90 a90) {
            b90 x0 = a90.x0();
            if (x0 == b90.NULL) {
                a90.t0();
                return null;
            } else if (x0 == b90.BOOLEAN) {
                return Boolean.toString(a90.n0());
            } else {
                return a90.v0();
            }
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [c90, java.lang.Object] */
        @Override // defpackage.z60
        public void c(c90 c90, String str) {
            c90.z0(str);
        }
    }

    /* renamed from: s80$g0 */
    private static final class g0<T extends Enum<T>> extends z60<T> {
        private final Map<String, T> a = new HashMap();
        private final Map<T, String> b = new HashMap();

        public g0(Class<T> cls) {
            try {
                T[] enumConstants = cls.getEnumConstants();
                for (T t : enumConstants) {
                    String name = t.name();
                    c70 c70 = (c70) cls.getField(name).getAnnotation(c70.class);
                    if (c70 != null) {
                        name = c70.value();
                        for (String str : c70.alternate()) {
                            this.a.put(str, t);
                        }
                    }
                    this.a.put(name, t);
                    this.b.put(t, name);
                }
            } catch (NoSuchFieldException e) {
                throw new AssertionError(e);
            }
        }

        @Override // defpackage.z60
        public Object b(a90 a90) {
            if (a90.x0() != b90.NULL) {
                return this.a.get(a90.v0());
            }
            a90.t0();
            return null;
        }

        @Override // defpackage.z60
        public void c(c90 c90, Object obj) {
            String str;
            Enum r3 = (Enum) obj;
            if (r3 == null) {
                str = null;
            } else {
                str = this.b.get(r3);
            }
            c90.z0(str);
        }
    }

    /* renamed from: s80$h */
    class h extends z60<BigDecimal> {
        h() {
        }

        /* Return type fixed from 'java.lang.Object' to match base method */
        @Override // defpackage.z60
        public BigDecimal b(a90 a90) {
            if (a90.x0() == b90.NULL) {
                a90.t0();
                return null;
            }
            try {
                return new BigDecimal(a90.v0());
            } catch (NumberFormatException e) {
                throw new x60(e);
            }
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [c90, java.lang.Object] */
        @Override // defpackage.z60
        public void c(c90 c90, BigDecimal bigDecimal) {
            c90.y0(bigDecimal);
        }
    }

    /* renamed from: s80$i */
    class i extends z60<BigInteger> {
        i() {
        }

        /* Return type fixed from 'java.lang.Object' to match base method */
        @Override // defpackage.z60
        public BigInteger b(a90 a90) {
            if (a90.x0() == b90.NULL) {
                a90.t0();
                return null;
            }
            try {
                return new BigInteger(a90.v0());
            } catch (NumberFormatException e) {
                throw new x60(e);
            }
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [c90, java.lang.Object] */
        @Override // defpackage.z60
        public void c(c90 c90, BigInteger bigInteger) {
            c90.y0(bigInteger);
        }
    }

    /* renamed from: s80$j */
    class j extends z60<StringBuilder> {
        j() {
        }

        /* Return type fixed from 'java.lang.Object' to match base method */
        @Override // defpackage.z60
        public StringBuilder b(a90 a90) {
            if (a90.x0() != b90.NULL) {
                return new StringBuilder(a90.v0());
            }
            a90.t0();
            return null;
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [c90, java.lang.Object] */
        @Override // defpackage.z60
        public void c(c90 c90, StringBuilder sb) {
            String str;
            StringBuilder sb2 = sb;
            if (sb2 == null) {
                str = null;
            } else {
                str = sb2.toString();
            }
            c90.z0(str);
        }
    }

    /* renamed from: s80$k */
    class k extends z60<Class> {
        k() {
        }

        /* Return type fixed from 'java.lang.Object' to match base method */
        @Override // defpackage.z60
        public Class b(a90 a90) {
            throw new UnsupportedOperationException("Attempted to deserialize a java.lang.Class. Forgot to register a type adapter?");
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [c90, java.lang.Object] */
        @Override // defpackage.z60
        public void c(c90 c90, Class cls) {
            StringBuilder q = ic.q("Attempted to serialize java.lang.Class: ");
            q.append(cls.getName());
            q.append(". Forgot to register a type adapter?");
            throw new UnsupportedOperationException(q.toString());
        }
    }

    /* renamed from: s80$l */
    class l extends z60<StringBuffer> {
        l() {
        }

        /* Return type fixed from 'java.lang.Object' to match base method */
        @Override // defpackage.z60
        public StringBuffer b(a90 a90) {
            if (a90.x0() != b90.NULL) {
                return new StringBuffer(a90.v0());
            }
            a90.t0();
            return null;
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [c90, java.lang.Object] */
        @Override // defpackage.z60
        public void c(c90 c90, StringBuffer stringBuffer) {
            String str;
            StringBuffer stringBuffer2 = stringBuffer;
            if (stringBuffer2 == null) {
                str = null;
            } else {
                str = stringBuffer2.toString();
            }
            c90.z0(str);
        }
    }

    /* renamed from: s80$m */
    class m extends z60<URL> {
        m() {
        }

        /* Return type fixed from 'java.lang.Object' to match base method */
        @Override // defpackage.z60
        public URL b(a90 a90) {
            if (a90.x0() == b90.NULL) {
                a90.t0();
                return null;
            }
            String v0 = a90.v0();
            if ("null".equals(v0)) {
                return null;
            }
            return new URL(v0);
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [c90, java.lang.Object] */
        @Override // defpackage.z60
        public void c(c90 c90, URL url) {
            String str;
            URL url2 = url;
            if (url2 == null) {
                str = null;
            } else {
                str = url2.toExternalForm();
            }
            c90.z0(str);
        }
    }

    /* renamed from: s80$n */
    class n extends z60<URI> {
        n() {
        }

        /* Return type fixed from 'java.lang.Object' to match base method */
        @Override // defpackage.z60
        public URI b(a90 a90) {
            if (a90.x0() == b90.NULL) {
                a90.t0();
                return null;
            }
            try {
                String v0 = a90.v0();
                if ("null".equals(v0)) {
                    return null;
                }
                return new URI(v0);
            } catch (URISyntaxException e) {
                throw new q60(e);
            }
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [c90, java.lang.Object] */
        @Override // defpackage.z60
        public void c(c90 c90, URI uri) {
            String str;
            URI uri2 = uri;
            if (uri2 == null) {
                str = null;
            } else {
                str = uri2.toASCIIString();
            }
            c90.z0(str);
        }
    }

    /* renamed from: s80$o */
    class o extends z60<InetAddress> {
        o() {
        }

        /* Return type fixed from 'java.lang.Object' to match base method */
        @Override // defpackage.z60
        public InetAddress b(a90 a90) {
            if (a90.x0() != b90.NULL) {
                return InetAddress.getByName(a90.v0());
            }
            a90.t0();
            return null;
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [c90, java.lang.Object] */
        @Override // defpackage.z60
        public void c(c90 c90, InetAddress inetAddress) {
            String str;
            InetAddress inetAddress2 = inetAddress;
            if (inetAddress2 == null) {
                str = null;
            } else {
                str = inetAddress2.getHostAddress();
            }
            c90.z0(str);
        }
    }

    /* renamed from: s80$p */
    class p extends z60<UUID> {
        p() {
        }

        /* Return type fixed from 'java.lang.Object' to match base method */
        @Override // defpackage.z60
        public UUID b(a90 a90) {
            if (a90.x0() != b90.NULL) {
                return UUID.fromString(a90.v0());
            }
            a90.t0();
            return null;
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [c90, java.lang.Object] */
        @Override // defpackage.z60
        public void c(c90 c90, UUID uuid) {
            String str;
            UUID uuid2 = uuid;
            if (uuid2 == null) {
                str = null;
            } else {
                str = uuid2.toString();
            }
            c90.z0(str);
        }
    }

    /* renamed from: s80$q */
    class q extends z60<Currency> {
        q() {
        }

        /* Return type fixed from 'java.lang.Object' to match base method */
        @Override // defpackage.z60
        public Currency b(a90 a90) {
            return Currency.getInstance(a90.v0());
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [c90, java.lang.Object] */
        @Override // defpackage.z60
        public void c(c90 c90, Currency currency) {
            c90.z0(currency.getCurrencyCode());
        }
    }

    /* renamed from: s80$r */
    class r implements a70 {

        /* renamed from: s80$r$a */
        class a extends z60<Timestamp> {
            final /* synthetic */ z60 a;

            a(r rVar, z60 z60) {
                this.a = z60;
            }

            /* Return type fixed from 'java.lang.Object' to match base method */
            @Override // defpackage.z60
            public Timestamp b(a90 a90) {
                Date date = (Date) this.a.b(a90);
                if (date != null) {
                    return new Timestamp(date.getTime());
                }
                return null;
            }

            /* JADX DEBUG: Method arguments types fixed to match base method, original types: [c90, java.lang.Object] */
            @Override // defpackage.z60
            public void c(c90 c90, Timestamp timestamp) {
                this.a.c(c90, timestamp);
            }
        }

        r() {
        }

        @Override // defpackage.a70
        public <T> z60<T> a(j60 j60, z80<T> z80) {
            if (z80.getRawType() != Timestamp.class) {
                return null;
            }
            Objects.requireNonNull(j60);
            return new a(this, j60.e(z80.get(Date.class)));
        }
    }

    /* renamed from: s80$s */
    class s extends z60<Calendar> {
        s() {
        }

        /* Return type fixed from 'java.lang.Object' to match base method */
        @Override // defpackage.z60
        public Calendar b(a90 a90) {
            if (a90.x0() == b90.NULL) {
                a90.t0();
                return null;
            }
            a90.o();
            int i = 0;
            int i2 = 0;
            int i3 = 0;
            int i4 = 0;
            int i5 = 0;
            int i6 = 0;
            while (a90.x0() != b90.END_OBJECT) {
                String r0 = a90.r0();
                int p0 = a90.p0();
                if ("year".equals(r0)) {
                    i = p0;
                } else if ("month".equals(r0)) {
                    i2 = p0;
                } else if ("dayOfMonth".equals(r0)) {
                    i3 = p0;
                } else if ("hourOfDay".equals(r0)) {
                    i4 = p0;
                } else if ("minute".equals(r0)) {
                    i5 = p0;
                } else if ("second".equals(r0)) {
                    i6 = p0;
                }
            }
            a90.b0();
            return new GregorianCalendar(i, i2, i3, i4, i5, i6);
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [c90, java.lang.Object] */
        @Override // defpackage.z60
        public void c(c90 c90, Calendar calendar) {
            Calendar calendar2 = calendar;
            if (calendar2 == null) {
                c90.n0();
                return;
            }
            c90.L();
            c90.l0("year");
            c90.w0((long) calendar2.get(1));
            c90.l0("month");
            c90.w0((long) calendar2.get(2));
            c90.l0("dayOfMonth");
            c90.w0((long) calendar2.get(5));
            c90.l0("hourOfDay");
            c90.w0((long) calendar2.get(11));
            c90.l0("minute");
            c90.w0((long) calendar2.get(12));
            c90.l0("second");
            c90.w0((long) calendar2.get(13));
            c90.b0();
        }
    }

    /* renamed from: s80$t */
    class t extends z60<Locale> {
        t() {
        }

        /* Return type fixed from 'java.lang.Object' to match base method */
        @Override // defpackage.z60
        public Locale b(a90 a90) {
            String str = null;
            if (a90.x0() == b90.NULL) {
                a90.t0();
                return null;
            }
            StringTokenizer stringTokenizer = new StringTokenizer(a90.v0(), "_");
            String nextToken = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
            String nextToken2 = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
            if (stringTokenizer.hasMoreElements()) {
                str = stringTokenizer.nextToken();
            }
            if (nextToken2 == null && str == null) {
                return new Locale(nextToken);
            }
            if (str == null) {
                return new Locale(nextToken, nextToken2);
            }
            return new Locale(nextToken, nextToken2, str);
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [c90, java.lang.Object] */
        @Override // defpackage.z60
        public void c(c90 c90, Locale locale) {
            String str;
            Locale locale2 = locale;
            if (locale2 == null) {
                str = null;
            } else {
                str = locale2.toString();
            }
            c90.z0(str);
        }
    }

    /* renamed from: s80$u */
    class u extends z60<p60> {
        u() {
        }

        /* renamed from: d */
        public p60 b(a90 a90) {
            int ordinal = a90.x0().ordinal();
            if (ordinal == 0) {
                m60 m60 = new m60();
                a90.j();
                while (a90.j0()) {
                    m60.i(b(a90));
                }
                a90.V();
                return m60;
            } else if (ordinal == 2) {
                s60 s60 = new s60();
                a90.o();
                while (a90.j0()) {
                    s60.i(a90.r0(), b(a90));
                }
                a90.b0();
                return s60;
            } else if (ordinal == 5) {
                return new u60(a90.v0());
            } else {
                if (ordinal == 6) {
                    return new u60(new u70(a90.v0()));
                }
                if (ordinal == 7) {
                    return new u60(Boolean.valueOf(a90.n0()));
                }
                if (ordinal == 8) {
                    a90.t0();
                    return r60.a;
                }
                throw new IllegalArgumentException();
            }
        }

        /* renamed from: e */
        public void c(c90 c90, p60 p60) {
            if (p60 == null || (p60 instanceof r60)) {
                c90.n0();
            } else if (p60 instanceof u60) {
                u60 f = p60.f();
                if (f.l()) {
                    c90.y0(f.i());
                } else if (f.j()) {
                    c90.A0(f.a());
                } else {
                    c90.z0(f.h());
                }
            } else {
                boolean z = p60 instanceof m60;
                if (z) {
                    c90.o();
                    if (z) {
                        Iterator<p60> it = ((m60) p60).iterator();
                        while (it.hasNext()) {
                            c(c90, it.next());
                        }
                        c90.V();
                        return;
                    }
                    throw new IllegalStateException("Not a JSON Array: " + p60);
                } else if (p60 instanceof s60) {
                    c90.L();
                    for (Map.Entry<String, p60> entry : p60.e().m()) {
                        c90.l0(entry.getKey());
                        c(c90, entry.getValue());
                    }
                    c90.b0();
                } else {
                    StringBuilder q = ic.q("Couldn't write ");
                    q.append(p60.getClass());
                    throw new IllegalArgumentException(q.toString());
                }
            }
        }
    }

    /* renamed from: s80$v */
    class v extends z60<BitSet> {
        v() {
        }

        /* Return type fixed from 'java.lang.Object' to match base method */
        /* JADX WARNING: Code restructure failed: missing block: B:13:0x003e, code lost:
            if (r6.p0() != 0) goto L_0x004b;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:17:0x0049, code lost:
            if (java.lang.Integer.parseInt(r1) != 0) goto L_0x004b;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:19:0x004d, code lost:
            r1 = false;
         */
        /* JADX WARNING: Removed duplicated region for block: B:21:0x0050  */
        /* JADX WARNING: Removed duplicated region for block: B:31:0x0053 A[SYNTHETIC] */
        @Override // defpackage.z60
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public java.util.BitSet b(defpackage.a90 r6) {
            /*
            // Method dump skipped, instructions count: 106
            */
            throw new UnsupportedOperationException("Method not decompiled: defpackage.s80.v.b(a90):java.lang.Object");
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [c90, java.lang.Object] */
        @Override // defpackage.z60
        public void c(c90 c90, BitSet bitSet) {
            BitSet bitSet2 = bitSet;
            c90.o();
            int length = bitSet2.length();
            for (int i = 0; i < length; i++) {
                c90.w0(bitSet2.get(i) ? 1 : 0);
            }
            c90.V();
        }
    }

    /* renamed from: s80$w */
    class w implements a70 {
        w() {
        }

        @Override // defpackage.a70
        public <T> z60<T> a(j60 j60, z80<T> z80) {
            Class<? super Object> rawType = z80.getRawType();
            if (!Enum.class.isAssignableFrom(rawType) || rawType == Enum.class) {
                return null;
            }
            if (!rawType.isEnum()) {
                rawType = rawType.getSuperclass();
            }
            return new g0(rawType);
        }
    }

    /* access modifiers changed from: package-private */
    /* renamed from: s80$x */
    public class x implements a70 {
        final /* synthetic */ Class b;
        final /* synthetic */ z60 c;

        x(Class cls, z60 z60) {
            this.b = cls;
            this.c = z60;
        }

        @Override // defpackage.a70
        public <T> z60<T> a(j60 j60, z80<T> z80) {
            if (z80.getRawType() == this.b) {
                return this.c;
            }
            return null;
        }

        public String toString() {
            StringBuilder q = ic.q("Factory[type=");
            q.append(this.b.getName());
            q.append(",adapter=");
            q.append(this.c);
            q.append("]");
            return q.toString();
        }
    }

    /* access modifiers changed from: package-private */
    /* renamed from: s80$y */
    public class y implements a70 {
        final /* synthetic */ Class b;
        final /* synthetic */ Class c;
        final /* synthetic */ z60 d;

        y(Class cls, Class cls2, z60 z60) {
            this.b = cls;
            this.c = cls2;
            this.d = z60;
        }

        @Override // defpackage.a70
        public <T> z60<T> a(j60 j60, z80<T> z80) {
            Class<? super T> rawType = z80.getRawType();
            if (rawType == this.b || rawType == this.c) {
                return this.d;
            }
            return null;
        }

        public String toString() {
            StringBuilder q = ic.q("Factory[type=");
            q.append(this.c.getName());
            q.append("+");
            q.append(this.b.getName());
            q.append(",adapter=");
            q.append(this.d);
            q.append("]");
            return q.toString();
        }
    }

    /* renamed from: s80$z */
    class z extends z60<Boolean> {
        z() {
        }

        /* Return type fixed from 'java.lang.Object' to match base method */
        @Override // defpackage.z60
        public Boolean b(a90 a90) {
            b90 x0 = a90.x0();
            if (x0 == b90.NULL) {
                a90.t0();
                return null;
            } else if (x0 == b90.STRING) {
                return Boolean.valueOf(Boolean.parseBoolean(a90.v0()));
            } else {
                return Boolean.valueOf(a90.n0());
            }
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [c90, java.lang.Object] */
        @Override // defpackage.z60
        public void c(c90 c90, Boolean bool) {
            c90.x0(bool);
        }
    }

    static {
        z60<Class> a2 = new k().a();
        a = a2;
        b = new x(Class.class, a2);
        z60<BitSet> a3 = new v().a();
        c = a3;
        d = new x(BitSet.class, a3);
        z zVar = new z();
        e = zVar;
        g = new y(Boolean.TYPE, Boolean.class, zVar);
        b0 b0Var = new b0();
        h = b0Var;
        i = new y(Byte.TYPE, Byte.class, b0Var);
        c0 c0Var = new c0();
        j = c0Var;
        k = new y(Short.TYPE, Short.class, c0Var);
        d0 d0Var = new d0();
        l = d0Var;
        m = new y(Integer.TYPE, Integer.class, d0Var);
        z60<AtomicInteger> a4 = new e0().a();
        n = a4;
        o = new x(AtomicInteger.class, a4);
        z60<AtomicBoolean> a5 = new f0().a();
        p = a5;
        q = new x(AtomicBoolean.class, a5);
        z60<AtomicIntegerArray> a6 = new a().a();
        r = a6;
        s = new x(AtomicIntegerArray.class, a6);
        e eVar = new e();
        w = eVar;
        x = new x(Number.class, eVar);
        f fVar = new f();
        y = fVar;
        z = new y(Character.TYPE, Character.class, fVar);
        g gVar = new g();
        A = gVar;
        D = new x(String.class, gVar);
        j jVar = new j();
        E = jVar;
        F = new x(StringBuilder.class, jVar);
        l lVar = new l();
        G = lVar;
        H = new x(StringBuffer.class, lVar);
        m mVar = new m();
        I = mVar;
        J = new x(URL.class, mVar);
        n nVar = new n();
        K = nVar;
        L = new x(URI.class, nVar);
        o oVar = new o();
        M = oVar;
        N = new u80(InetAddress.class, oVar);
        p pVar = new p();
        O = pVar;
        P = new x(UUID.class, pVar);
        z60<Currency> a7 = new q().a();
        Q = a7;
        R = new x(Currency.class, a7);
        s sVar = new s();
        T = sVar;
        U = new t80(Calendar.class, GregorianCalendar.class, sVar);
        t tVar = new t();
        V = tVar;
        W = new x(Locale.class, tVar);
        u uVar = new u();
        X = uVar;
        Y = new u80(p60.class, uVar);
    }

    public static <TT> a70 a(Class<TT> cls, z60<TT> z60) {
        return new x(cls, z60);
    }

    public static <TT> a70 b(Class<TT> cls, Class<TT> cls2, z60<? super TT> z60) {
        return new y(cls, cls2, z60);
    }
}
