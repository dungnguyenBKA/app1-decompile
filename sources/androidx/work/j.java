package androidx.work;

import androidx.work.o;

public final class j extends o {

    public static final class a extends o.a<a, j> {
        public a(Class<? extends ListenableWorker> cls) {
            super(cls);
            this.b.d = OverwritingInputMerger.class.getName();
        }
    }

    j(a aVar) {
        super(aVar.a, aVar.b, aVar.c);
    }
}
