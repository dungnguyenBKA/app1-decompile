package defpackage;

import com.bumptech.glide.load.g;
import com.bumptech.glide.load.i;
import java.util.Collections;
import java.util.List;
import java.util.Objects;

/* renamed from: zf  reason: default package */
public interface zf<Model, Data> {

    /* renamed from: zf$a */
    public static class a<Data> {
        public final g a;
        public final List<g> b;
        public final uc<Data> c;

        public a(g gVar, uc<Data> ucVar) {
            List<g> emptyList = Collections.emptyList();
            Objects.requireNonNull(gVar, "Argument must not be null");
            this.a = gVar;
            Objects.requireNonNull(emptyList, "Argument must not be null");
            this.b = emptyList;
            Objects.requireNonNull(ucVar, "Argument must not be null");
            this.c = ucVar;
        }
    }

    boolean a(Model model);

    a<Data> b(Model model, int i, int i2, i iVar);
}
