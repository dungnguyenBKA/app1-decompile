package defpackage;

/* renamed from: li  reason: default package */
public class li extends ai<ji> implements de {
    public li(ji jiVar) {
        super(jiVar);
    }

    @Override // defpackage.he
    public void a() {
        ((ji) this.b).stop();
        ((ji) this.b).f();
    }

    @Override // defpackage.he
    public int c() {
        return ((ji) this.b).e();
    }

    @Override // defpackage.he
    public Class<ji> d() {
        return ji.class;
    }

    @Override // defpackage.de, defpackage.ai
    public void initialize() {
        ((ji) this.b).c().prepareToDraw();
    }
}
