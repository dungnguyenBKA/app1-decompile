package defpackage;

/* renamed from: h80  reason: default package */
public final class h80 implements a70 {
    private final j70 b;

    public h80(j70 j70) {
        this.b = j70;
    }

    @Override // defpackage.a70
    public <T> z60<T> a(j60 j60, z80<T> z80) {
        b70 b70 = (b70) z80.getRawType().getAnnotation(b70.class);
        if (b70 == null) {
            return null;
        }
        return (z60<T>) b(this.b, j60, z80, b70);
    }

    /* access modifiers changed from: package-private */
    public z60<?> b(j70 j70, j60 j60, z80<?> z80, b70 b70) {
        z60<?> z60;
        Object a = j70.a(z80.get((Class) b70.value())).a();
        if (a instanceof z60) {
            z60 = (z60) a;
        } else if (a instanceof a70) {
            z60 = ((a70) a).a(j60, z80);
        } else {
            boolean z = a instanceof w60;
            if (z || (a instanceof o60)) {
                o60 o60 = null;
                w60 w60 = z ? (w60) a : null;
                if (a instanceof o60) {
                    o60 = (o60) a;
                }
                z60 = new q80<>(w60, o60, j60, z80, null);
            } else {
                StringBuilder q = ic.q("Invalid attempt to bind an instance of ");
                q.append(a.getClass().getName());
                q.append(" as a @JsonAdapter for ");
                q.append(z80.toString());
                q.append(". @JsonAdapter value must be a TypeAdapter, TypeAdapterFactory, JsonSerializer or JsonDeserializer.");
                throw new IllegalArgumentException(q.toString());
            }
        }
        return (z60 == null || !b70.nullSafe()) ? z60 : z60.a();
    }
}
