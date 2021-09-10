package defpackage;

import com.vungle.warren.model.AdvertisementDBAdapter;
import com.vungle.warren.model.VisionDataDBAdapter;
import defpackage.i20;
import org.apache.http.cookie.ClientCookie;

/* renamed from: n10  reason: default package */
public final class n10 implements k40 {
    public static final k40 a = new n10();

    /* access modifiers changed from: private */
    /* renamed from: n10$a */
    public static final class a implements g40<i20.b> {
        static final a a = new a();
        private static final f40 b = f40.b("key");
        private static final f40 c = f40.b("value");

        private a() {
        }

        @Override // defpackage.g40
        public void a(Object obj, Object obj2) {
            i20.b bVar = (i20.b) obj;
            h40 h40 = (h40) obj2;
            h40.f(b, bVar.b());
            h40.f(c, bVar.c());
        }
    }

    /* access modifiers changed from: private */
    /* renamed from: n10$b */
    public static final class b implements g40<i20> {
        static final b a = new b();
        private static final f40 b = f40.b("sdkVersion");
        private static final f40 c = f40.b("gmpAppId");
        private static final f40 d = f40.b("platform");
        private static final f40 e = f40.b("installationUuid");
        private static final f40 f = f40.b("buildVersion");
        private static final f40 g = f40.b("displayVersion");
        private static final f40 h = f40.b("session");
        private static final f40 i = f40.b("ndkPayload");

        private b() {
        }

        @Override // defpackage.g40
        public void a(Object obj, Object obj2) {
            i20 i20 = (i20) obj;
            h40 h40 = (h40) obj2;
            h40.f(b, i20.i());
            h40.f(c, i20.e());
            h40.c(d, i20.h());
            h40.f(e, i20.f());
            h40.f(f, i20.c());
            h40.f(g, i20.d());
            h40.f(h, i20.j());
            h40.f(i, i20.g());
        }
    }

    /* access modifiers changed from: private */
    /* renamed from: n10$c */
    public static final class c implements g40<i20.c> {
        static final c a = new c();
        private static final f40 b = f40.b("files");
        private static final f40 c = f40.b("orgId");

        private c() {
        }

        @Override // defpackage.g40
        public void a(Object obj, Object obj2) {
            i20.c cVar = (i20.c) obj;
            h40 h40 = (h40) obj2;
            h40.f(b, cVar.b());
            h40.f(c, cVar.c());
        }
    }

    /* access modifiers changed from: private */
    /* renamed from: n10$d */
    public static final class d implements g40<i20.c.b> {
        static final d a = new d();
        private static final f40 b = f40.b("filename");
        private static final f40 c = f40.b("contents");

        private d() {
        }

        @Override // defpackage.g40
        public void a(Object obj, Object obj2) {
            i20.c.b bVar = (i20.c.b) obj;
            h40 h40 = (h40) obj2;
            h40.f(b, bVar.c());
            h40.f(c, bVar.b());
        }
    }

    /* access modifiers changed from: private */
    /* renamed from: n10$e */
    public static final class e implements g40<i20.d.a> {
        static final e a = new e();
        private static final f40 b = f40.b("identifier");
        private static final f40 c = f40.b(ClientCookie.VERSION_ATTR);
        private static final f40 d = f40.b("displayVersion");
        private static final f40 e = f40.b("organization");
        private static final f40 f = f40.b("installationUuid");
        private static final f40 g = f40.b("developmentPlatform");
        private static final f40 h = f40.b("developmentPlatformVersion");

        private e() {
        }

        @Override // defpackage.g40
        public void a(Object obj, Object obj2) {
            i20.d.a aVar = (i20.d.a) obj;
            h40 h40 = (h40) obj2;
            h40.f(b, aVar.e());
            h40.f(c, aVar.h());
            h40.f(d, aVar.d());
            h40.f(e, aVar.g());
            h40.f(f, aVar.f());
            h40.f(g, aVar.b());
            h40.f(h, aVar.c());
        }
    }

    /* access modifiers changed from: private */
    /* renamed from: n10$f */
    public static final class f implements g40<i20.d.a.b> {
        static final f a = new f();
        private static final f40 b = f40.b("clsId");

        private f() {
        }

        @Override // defpackage.g40
        public void a(Object obj, Object obj2) {
            ((h40) obj2).f(b, ((i20.d.a.b) obj).a());
        }
    }

    /* access modifiers changed from: private */
    /* renamed from: n10$g */
    public static final class g implements g40<i20.d.c> {
        static final g a = new g();
        private static final f40 b = f40.b("arch");
        private static final f40 c = f40.b("model");
        private static final f40 d = f40.b("cores");
        private static final f40 e = f40.b("ram");
        private static final f40 f = f40.b("diskSpace");
        private static final f40 g = f40.b("simulator");
        private static final f40 h = f40.b(AdvertisementDBAdapter.AdvertisementColumns.COLUMN_STATE);
        private static final f40 i = f40.b("manufacturer");
        private static final f40 j = f40.b("modelClass");

        private g() {
        }

        @Override // defpackage.g40
        public void a(Object obj, Object obj2) {
            i20.d.c cVar = (i20.d.c) obj;
            h40 h40 = (h40) obj2;
            h40.c(b, cVar.b());
            h40.f(c, cVar.f());
            h40.c(d, cVar.c());
            h40.b(e, cVar.h());
            h40.b(f, cVar.d());
            h40.a(g, cVar.j());
            h40.c(h, cVar.i());
            h40.f(i, cVar.e());
            h40.f(j, cVar.g());
        }
    }

    /* access modifiers changed from: private */
    /* renamed from: n10$h */
    public static final class h implements g40<i20.d> {
        static final h a = new h();
        private static final f40 b = f40.b("generator");
        private static final f40 c = f40.b("identifier");
        private static final f40 d = f40.b("startedAt");
        private static final f40 e = f40.b("endedAt");
        private static final f40 f = f40.b("crashed");
        private static final f40 g = f40.b("app");
        private static final f40 h = f40.b("user");
        private static final f40 i = f40.b("os");
        private static final f40 j = f40.b("device");
        private static final f40 k = f40.b("events");
        private static final f40 l = f40.b("generatorType");

        private h() {
        }

        @Override // defpackage.g40
        public void a(Object obj, Object obj2) {
            i20.d dVar = (i20.d) obj;
            h40 h40 = (h40) obj2;
            h40.f(b, dVar.f());
            h40.f(c, dVar.h().getBytes(i20.a));
            h40.b(d, dVar.j());
            h40.f(e, dVar.d());
            h40.a(f, dVar.l());
            h40.f(g, dVar.b());
            h40.f(h, dVar.k());
            h40.f(i, dVar.i());
            h40.f(j, dVar.c());
            h40.f(k, dVar.e());
            h40.c(l, dVar.g());
        }
    }

    /* access modifiers changed from: private */
    /* renamed from: n10$i */
    public static final class i implements g40<i20.d.AbstractC0101d.a> {
        static final i a = new i();
        private static final f40 b = f40.b("execution");
        private static final f40 c = f40.b("customAttributes");
        private static final f40 d = f40.b("background");
        private static final f40 e = f40.b("uiOrientation");

        private i() {
        }

        @Override // defpackage.g40
        public void a(Object obj, Object obj2) {
            i20.d.AbstractC0101d.a aVar = (i20.d.AbstractC0101d.a) obj;
            h40 h40 = (h40) obj2;
            h40.f(b, aVar.d());
            h40.f(c, aVar.c());
            h40.f(d, aVar.b());
            h40.c(e, aVar.e());
        }
    }

    /* access modifiers changed from: private */
    /* renamed from: n10$j */
    public static final class j implements g40<i20.d.AbstractC0101d.a.b.AbstractC0103a> {
        static final j a = new j();
        private static final f40 b = f40.b("baseAddress");
        private static final f40 c = f40.b("size");
        private static final f40 d = f40.b("name");
        private static final f40 e = f40.b("uuid");

        private j() {
        }

        @Override // defpackage.g40
        public void a(Object obj, Object obj2) {
            i20.d.AbstractC0101d.a.b.AbstractC0103a aVar = (i20.d.AbstractC0101d.a.b.AbstractC0103a) obj;
            h40 h40 = (h40) obj2;
            h40.b(b, aVar.b());
            h40.b(c, aVar.d());
            h40.f(d, aVar.c());
            f40 f40 = e;
            String e2 = aVar.e();
            h40.f(f40, e2 != null ? e2.getBytes(i20.a) : null);
        }
    }

    /* access modifiers changed from: private */
    /* renamed from: n10$k */
    public static final class k implements g40<i20.d.AbstractC0101d.a.b> {
        static final k a = new k();
        private static final f40 b = f40.b("threads");
        private static final f40 c = f40.b("exception");
        private static final f40 d = f40.b("signal");
        private static final f40 e = f40.b("binaries");

        private k() {
        }

        @Override // defpackage.g40
        public void a(Object obj, Object obj2) {
            i20.d.AbstractC0101d.a.b bVar = (i20.d.AbstractC0101d.a.b) obj;
            h40 h40 = (h40) obj2;
            h40.f(b, bVar.e());
            h40.f(c, bVar.c());
            h40.f(d, bVar.d());
            h40.f(e, bVar.b());
        }
    }

    /* access modifiers changed from: private */
    /* renamed from: n10$l */
    public static final class l implements g40<i20.d.AbstractC0101d.a.b.c> {
        static final l a = new l();
        private static final f40 b = f40.b("type");
        private static final f40 c = f40.b("reason");
        private static final f40 d = f40.b("frames");
        private static final f40 e = f40.b("causedBy");
        private static final f40 f = f40.b("overflowCount");

        private l() {
        }

        @Override // defpackage.g40
        public void a(Object obj, Object obj2) {
            i20.d.AbstractC0101d.a.b.c cVar = (i20.d.AbstractC0101d.a.b.c) obj;
            h40 h40 = (h40) obj2;
            h40.f(b, cVar.f());
            h40.f(c, cVar.e());
            h40.f(d, cVar.c());
            h40.f(e, cVar.b());
            h40.c(f, cVar.d());
        }
    }

    /* access modifiers changed from: private */
    /* renamed from: n10$m */
    public static final class m implements g40<i20.d.AbstractC0101d.a.b.AbstractC0107d> {
        static final m a = new m();
        private static final f40 b = f40.b("name");
        private static final f40 c = f40.b("code");
        private static final f40 d = f40.b("address");

        private m() {
        }

        @Override // defpackage.g40
        public void a(Object obj, Object obj2) {
            i20.d.AbstractC0101d.a.b.AbstractC0107d dVar = (i20.d.AbstractC0101d.a.b.AbstractC0107d) obj;
            h40 h40 = (h40) obj2;
            h40.f(b, dVar.d());
            h40.f(c, dVar.c());
            h40.b(d, dVar.b());
        }
    }

    /* access modifiers changed from: private */
    /* renamed from: n10$n */
    public static final class n implements g40<i20.d.AbstractC0101d.a.b.e> {
        static final n a = new n();
        private static final f40 b = f40.b("name");
        private static final f40 c = f40.b("importance");
        private static final f40 d = f40.b("frames");

        private n() {
        }

        @Override // defpackage.g40
        public void a(Object obj, Object obj2) {
            i20.d.AbstractC0101d.a.b.e eVar = (i20.d.AbstractC0101d.a.b.e) obj;
            h40 h40 = (h40) obj2;
            h40.f(b, eVar.d());
            h40.c(c, eVar.c());
            h40.f(d, eVar.b());
        }
    }

    /* access modifiers changed from: private */
    /* renamed from: n10$o */
    public static final class o implements g40<i20.d.AbstractC0101d.a.b.e.AbstractC0110b> {
        static final o a = new o();
        private static final f40 b = f40.b("pc");
        private static final f40 c = f40.b("symbol");
        private static final f40 d = f40.b("file");
        private static final f40 e = f40.b("offset");
        private static final f40 f = f40.b("importance");

        private o() {
        }

        @Override // defpackage.g40
        public void a(Object obj, Object obj2) {
            i20.d.AbstractC0101d.a.b.e.AbstractC0110b bVar = (i20.d.AbstractC0101d.a.b.e.AbstractC0110b) obj;
            h40 h40 = (h40) obj2;
            h40.b(b, bVar.e());
            h40.f(c, bVar.f());
            h40.f(d, bVar.b());
            h40.b(e, bVar.d());
            h40.c(f, bVar.c());
        }
    }

    /* access modifiers changed from: private */
    /* renamed from: n10$p */
    public static final class p implements g40<i20.d.AbstractC0101d.c> {
        static final p a = new p();
        private static final f40 b = f40.b("batteryLevel");
        private static final f40 c = f40.b("batteryVelocity");
        private static final f40 d = f40.b("proximityOn");
        private static final f40 e = f40.b("orientation");
        private static final f40 f = f40.b("ramUsed");
        private static final f40 g = f40.b("diskUsed");

        private p() {
        }

        @Override // defpackage.g40
        public void a(Object obj, Object obj2) {
            i20.d.AbstractC0101d.c cVar = (i20.d.AbstractC0101d.c) obj;
            h40 h40 = (h40) obj2;
            h40.f(b, cVar.b());
            h40.c(c, cVar.c());
            h40.a(d, cVar.g());
            h40.c(e, cVar.e());
            h40.b(f, cVar.f());
            h40.b(g, cVar.d());
        }
    }

    /* access modifiers changed from: private */
    /* renamed from: n10$q */
    public static final class q implements g40<i20.d.AbstractC0101d> {
        static final q a = new q();
        private static final f40 b = f40.b(VisionDataDBAdapter.VisionDataColumns.COLUMN_TIMESTAMP);
        private static final f40 c = f40.b("type");
        private static final f40 d = f40.b("app");
        private static final f40 e = f40.b("device");
        private static final f40 f = f40.b("log");

        private q() {
        }

        @Override // defpackage.g40
        public void a(Object obj, Object obj2) {
            i20.d.AbstractC0101d dVar = (i20.d.AbstractC0101d) obj;
            h40 h40 = (h40) obj2;
            h40.b(b, dVar.e());
            h40.f(c, dVar.f());
            h40.f(d, dVar.b());
            h40.f(e, dVar.c());
            h40.f(f, dVar.d());
        }
    }

    /* access modifiers changed from: private */
    /* renamed from: n10$r */
    public static final class r implements g40<i20.d.AbstractC0101d.AbstractC0112d> {
        static final r a = new r();
        private static final f40 b = f40.b("content");

        private r() {
        }

        @Override // defpackage.g40
        public void a(Object obj, Object obj2) {
            ((h40) obj2).f(b, ((i20.d.AbstractC0101d.AbstractC0112d) obj).b());
        }
    }

    /* access modifiers changed from: private */
    /* renamed from: n10$s */
    public static final class s implements g40<i20.d.e> {
        static final s a = new s();
        private static final f40 b = f40.b("platform");
        private static final f40 c = f40.b(ClientCookie.VERSION_ATTR);
        private static final f40 d = f40.b("buildVersion");
        private static final f40 e = f40.b("jailbroken");

        private s() {
        }

        @Override // defpackage.g40
        public void a(Object obj, Object obj2) {
            i20.d.e eVar = (i20.d.e) obj;
            h40 h40 = (h40) obj2;
            h40.c(b, eVar.c());
            h40.f(c, eVar.d());
            h40.f(d, eVar.b());
            h40.a(e, eVar.e());
        }
    }

    /* access modifiers changed from: private */
    /* renamed from: n10$t */
    public static final class t implements g40<i20.d.f> {
        static final t a = new t();
        private static final f40 b = f40.b("identifier");

        private t() {
        }

        @Override // defpackage.g40
        public void a(Object obj, Object obj2) {
            ((h40) obj2).f(b, ((i20.d.f) obj).b());
        }
    }

    private n10() {
    }

    public void a(l40<?> l40) {
        b bVar = b.a;
        p40 p40 = (p40) l40;
        p40.g(i20.class, bVar);
        p40.g(o10.class, bVar);
        h hVar = h.a;
        p40.g(i20.d.class, hVar);
        p40.g(s10.class, hVar);
        e eVar = e.a;
        p40.g(i20.d.a.class, eVar);
        p40.g(t10.class, eVar);
        f fVar = f.a;
        p40.g(i20.d.a.b.class, fVar);
        p40.g(u10.class, fVar);
        t tVar = t.a;
        p40.g(i20.d.f.class, tVar);
        p40.g(h20.class, tVar);
        s sVar = s.a;
        p40.g(i20.d.e.class, sVar);
        p40.g(g20.class, sVar);
        g gVar = g.a;
        p40.g(i20.d.c.class, gVar);
        p40.g(v10.class, gVar);
        q qVar = q.a;
        p40.g(i20.d.AbstractC0101d.class, qVar);
        p40.g(w10.class, qVar);
        i iVar = i.a;
        p40.g(i20.d.AbstractC0101d.a.class, iVar);
        p40.g(x10.class, iVar);
        k kVar = k.a;
        p40.g(i20.d.AbstractC0101d.a.b.class, kVar);
        p40.g(y10.class, kVar);
        n nVar = n.a;
        p40.g(i20.d.AbstractC0101d.a.b.e.class, nVar);
        p40.g(c20.class, nVar);
        o oVar = o.a;
        p40.g(i20.d.AbstractC0101d.a.b.e.AbstractC0110b.class, oVar);
        p40.g(d20.class, oVar);
        l lVar = l.a;
        p40.g(i20.d.AbstractC0101d.a.b.c.class, lVar);
        p40.g(a20.class, lVar);
        m mVar = m.a;
        p40.g(i20.d.AbstractC0101d.a.b.AbstractC0107d.class, mVar);
        p40.g(b20.class, mVar);
        j jVar = j.a;
        p40.g(i20.d.AbstractC0101d.a.b.AbstractC0103a.class, jVar);
        p40.g(z10.class, jVar);
        a aVar = a.a;
        p40.g(i20.b.class, aVar);
        p40.g(p10.class, aVar);
        p pVar = p.a;
        p40.g(i20.d.AbstractC0101d.c.class, pVar);
        p40.g(e20.class, pVar);
        r rVar = r.a;
        p40.g(i20.d.AbstractC0101d.AbstractC0112d.class, rVar);
        p40.g(f20.class, rVar);
        c cVar = c.a;
        p40.g(i20.c.class, cVar);
        p40.g(q10.class, cVar);
        d dVar = d.a;
        p40.g(i20.c.b.class, dVar);
        p40.g(r10.class, dVar);
    }
}
