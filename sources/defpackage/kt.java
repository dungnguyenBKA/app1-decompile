package defpackage;

import defpackage.zs;

/* renamed from: kt  reason: default package */
final class kt<T> implements as<T> {
    private final it a;
    private final String b;
    private final wr c;
    private final zr<T, byte[]> d;
    private final lt e;

    kt(it itVar, String str, wr wrVar, zr<T, byte[]> zrVar, lt ltVar) {
        this.a = itVar;
        this.b = str;
        this.c = wrVar;
        this.d = zrVar;
        this.e = ltVar;
    }

    @Override // defpackage.as
    public void a(xr<T> xrVar, cs csVar) {
        lt ltVar = this.e;
        zs.b bVar = new zs.b();
        bVar.e(this.a);
        bVar.c(xrVar);
        bVar.f(this.b);
        bVar.d(this.d);
        bVar.b(this.c);
        ((mt) ltVar).e(bVar.a(), csVar);
    }
}
