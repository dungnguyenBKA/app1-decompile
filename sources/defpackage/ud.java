package defpackage;

import android.util.Log;
import com.bumptech.glide.load.i;
import com.bumptech.glide.load.k;
import defpackage.td;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

/* renamed from: ud  reason: default package */
public class ud<DataType, ResourceType, Transcode> {
    private final Class<DataType> a;
    private final List<? extends k<DataType, ResourceType>> b;
    private final vi<ResourceType, Transcode> c;
    private final k2<List<Throwable>> d;
    private final String e;

    /* access modifiers changed from: package-private */
    /* renamed from: ud$a */
    public interface a<ResourceType> {
    }

    public ud(Class<DataType> cls, Class<ResourceType> cls2, Class<Transcode> cls3, List<? extends k<DataType, ResourceType>> list, vi<ResourceType, Transcode> viVar, k2<List<Throwable>> k2Var) {
        this.a = cls;
        this.b = list;
        this.c = viVar;
        this.d = k2Var;
        StringBuilder q = ic.q("Failed DecodePath{");
        q.append(cls.getSimpleName());
        q.append("->");
        q.append(cls2.getSimpleName());
        q.append("->");
        q.append(cls3.getSimpleName());
        q.append("}");
        this.e = q.toString();
    }

    private he<ResourceType> b(vc<DataType> vcVar, int i, int i2, i iVar, List<Throwable> list) {
        int size = this.b.size();
        he<ResourceType> heVar = null;
        for (int i3 = 0; i3 < size; i3++) {
            k kVar = (k) this.b.get(i3);
            try {
                if (kVar.a(vcVar.a(), iVar)) {
                    heVar = kVar.b(vcVar.a(), i, i2, iVar);
                }
            } catch (IOException | OutOfMemoryError | RuntimeException e2) {
                if (Log.isLoggable("DecodePath", 2)) {
                    String str = "Failed to decode data for " + kVar;
                }
                list.add(e2);
            }
            if (heVar != null) {
                break;
            }
        }
        if (heVar != null) {
            return heVar;
        }
        throw new ce(this.e, new ArrayList(list));
    }

    /* JADX INFO: finally extract failed */
    public he<Transcode> a(vc<DataType> vcVar, int i, int i2, i iVar, a<ResourceType> aVar) {
        List<Throwable> b2 = this.d.b();
        Objects.requireNonNull(b2, "Argument must not be null");
        List<Throwable> list = b2;
        try {
            he<ResourceType> b3 = b(vcVar, i, i2, iVar, list);
            this.d.a(list);
            return this.c.a(((td.b) aVar).a(b3), iVar);
        } catch (Throwable th) {
            this.d.a(list);
            throw th;
        }
    }

    public String toString() {
        StringBuilder q = ic.q("DecodePath{ dataClass=");
        q.append(this.a);
        q.append(", decoders=");
        q.append(this.b);
        q.append(", transcoder=");
        q.append(this.c);
        q.append('}');
        return q.toString();
    }
}
