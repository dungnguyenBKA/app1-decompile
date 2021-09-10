package defpackage;

import defpackage.n80;
import java.lang.reflect.Field;

/* renamed from: m80  reason: default package */
class m80 extends n80.b {
    final /* synthetic */ Field d;
    final /* synthetic */ boolean e;
    final /* synthetic */ z60 f;
    final /* synthetic */ j60 g;
    final /* synthetic */ z80 h;
    final /* synthetic */ boolean i;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    m80(n80 n80, String str, boolean z, boolean z2, Field field, boolean z3, z60 z60, j60 j60, z80 z80, boolean z4) {
        super(str, z, z2);
        this.d = field;
        this.e = z3;
        this.f = z60;
        this.g = j60;
        this.h = z80;
        this.i = z4;
    }

    /* access modifiers changed from: package-private */
    @Override // defpackage.n80.b
    public void a(a90 a90, Object obj) {
        Object b = this.f.b(a90);
        if (b != null || !this.i) {
            this.d.set(obj, b);
        }
    }

    /* access modifiers changed from: package-private */
    @Override // defpackage.n80.b
    public void b(c90 c90, Object obj) {
        z60 z60;
        Object obj2 = this.d.get(obj);
        if (this.e) {
            z60 = this.f;
        } else {
            z60 = new r80(this.g, this.f, this.h.getType());
        }
        z60.c(c90, obj2);
    }

    @Override // defpackage.n80.b
    public boolean c(Object obj) {
        if (this.b && this.d.get(obj) != obj) {
            return true;
        }
        return false;
    }
}
