package defpackage;

import com.bumptech.glide.load.i;
import defpackage.ud;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;

/* renamed from: fe  reason: default package */
public class fe<Data, ResourceType, Transcode> {
    private final k2<List<Throwable>> a;
    private final List<? extends ud<Data, ResourceType, Transcode>> b;
    private final String c;

    public fe(Class<Data> cls, Class<ResourceType> cls2, Class<Transcode> cls3, List<ud<Data, ResourceType, Transcode>> list, k2<List<Throwable>> k2Var) {
        this.a = k2Var;
        if (!list.isEmpty()) {
            this.b = list;
            StringBuilder q = ic.q("Failed LoadPath{");
            q.append(cls.getSimpleName());
            q.append("->");
            q.append(cls2.getSimpleName());
            q.append("->");
            q.append(cls3.getSimpleName());
            q.append("}");
            this.c = q.toString();
            return;
        }
        throw new IllegalArgumentException("Must not be empty.");
    }

    public he<Transcode> a(vc<Data> vcVar, i iVar, int i, int i2, ud.a<ResourceType> aVar) {
        List<Throwable> b2 = this.a.b();
        Objects.requireNonNull(b2, "Argument must not be null");
        List<Throwable> list = b2;
        try {
            int size = this.b.size();
            he<Transcode> heVar = null;
            for (int i3 = 0; i3 < size; i3++) {
                try {
                    heVar = ((ud) this.b.get(i3)).a(vcVar, i, i2, iVar, aVar);
                } catch (ce e) {
                    list.add(e);
                }
                if (heVar != null) {
                    break;
                }
            }
            if (heVar != null) {
                return heVar;
            }
            throw new ce(this.c, new ArrayList(list));
        } finally {
            this.a.a(list);
        }
    }

    public String toString() {
        StringBuilder q = ic.q("LoadPath{decodePaths=");
        q.append(Arrays.toString(this.b.toArray()));
        q.append('}');
        return q.toString();
    }
}
