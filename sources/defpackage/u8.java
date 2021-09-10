package defpackage;

import java.util.List;

/* renamed from: u8  reason: default package */
public class u8 extends g9<Float, Float> {
    u8() {
        super(Float.valueOf(0.0f));
    }

    @Override // defpackage.f9
    public s7<Float, Float> a() {
        return new u7(this.a);
    }

    @Override // defpackage.f9
    public List b() {
        return this.a;
    }

    public u8(List<ec<Float>> list) {
        super((List) list);
    }
}
