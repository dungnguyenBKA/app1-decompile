package defpackage;

import com.bumptech.glide.load.d;
import com.bumptech.glide.load.i;
import defpackage.af;
import java.io.File;

/* renamed from: qd  reason: default package */
class qd<DataType> implements af.b {
    private final d<DataType> a;
    private final DataType b;
    private final i c;

    qd(d<DataType> dVar, DataType datatype, i iVar) {
        this.a = dVar;
        this.b = datatype;
        this.c = iVar;
    }

    @Override // defpackage.af.b
    public boolean a(File file) {
        return this.a.a(this.b, file, this.c);
    }
}
