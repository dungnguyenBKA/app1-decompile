package defpackage;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.EnumSet;

/* access modifiers changed from: package-private */
/* renamed from: m70  reason: default package */
public class m70 implements w70<T> {
    final /* synthetic */ Type a;

    m70(j70 j70, Type type) {
        this.a = type;
    }

    @Override // defpackage.w70
    public T a() {
        Type type = this.a;
        if (type instanceof ParameterizedType) {
            Type type2 = ((ParameterizedType) type).getActualTypeArguments()[0];
            if (type2 instanceof Class) {
                return (T) EnumSet.noneOf((Class) type2);
            }
            StringBuilder q = ic.q("Invalid EnumSet type: ");
            q.append(this.a.toString());
            throw new q60(q.toString());
        }
        StringBuilder q2 = ic.q("Invalid EnumSet type: ");
        q2.append(this.a.toString());
        throw new q60(q2.toString());
    }
}
