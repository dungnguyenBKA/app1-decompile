package defpackage;

import java.io.IOException;
import java.io.StringWriter;
import java.io.Writer;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;

/* renamed from: p40  reason: default package */
public final class p40 implements l40<p40> {
    private static final g40<Object> e = m40.b();
    private static final i40<String> f = n40.b();
    private static final i40<Boolean> g = o40.b();
    private static final b h = new b(null);
    public static final /* synthetic */ int i = 0;
    private final Map<Class<?>, g40<?>> a;
    private final Map<Class<?>, i40<?>> b;
    private g40<Object> c = e;
    private boolean d = false;

    /* access modifiers changed from: package-private */
    /* renamed from: p40$a */
    public class a implements d40 {
        a() {
        }

        @Override // defpackage.d40
        public void a(Object obj, Writer writer) {
            q40 q40 = new q40(writer, p40.this.a, p40.this.b, p40.this.c, p40.this.d);
            q40.g(obj, false);
            q40.i();
        }

        @Override // defpackage.d40
        public String b(Object obj) {
            StringWriter stringWriter = new StringWriter();
            try {
                a(obj, stringWriter);
            } catch (IOException unused) {
            }
            return stringWriter.toString();
        }
    }

    /* renamed from: p40$b */
    private static final class b implements i40<Date> {
        private static final DateFormat a;

        static {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", Locale.US);
            a = simpleDateFormat;
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        }

        b(a aVar) {
        }

        @Override // defpackage.i40
        public void a(Object obj, Object obj2) {
            ((j40) obj2).d(a.format((Date) obj));
        }
    }

    public p40() {
        HashMap hashMap = new HashMap();
        this.a = hashMap;
        HashMap hashMap2 = new HashMap();
        this.b = hashMap2;
        hashMap2.put(String.class, f);
        hashMap.remove(String.class);
        hashMap2.put(Boolean.class, g);
        hashMap.remove(Boolean.class);
        hashMap2.put(Date.class, h);
        hashMap.remove(Date.class);
    }

    public d40 e() {
        return new a();
    }

    public p40 f(boolean z) {
        this.d = z;
        return this;
    }

    public l40 g(Class cls, g40 g40) {
        this.a.put(cls, g40);
        this.b.remove(cls);
        return this;
    }
}
