package defpackage;

import android.content.Context;
import com.camerasideas.collagemaker.activity.CollageMakerApplication;
import defpackage.om;
import java.io.File;

/* access modifiers changed from: package-private */
/* renamed from: cq  reason: default package */
public class cq implements om.a {
    final /* synthetic */ yp a;

    cq(yp ypVar) {
        this.a = ypVar;
    }

    @Override // defpackage.om.a
    public void a(int i) {
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // defpackage.pm.b
    public void b(String str) {
        String str2 = str;
        if (str2 != null) {
            try {
                new File(str2).renameTo(CollageMakerApplication.b().getFileStreamPath("shape.json"));
                this.a.Q();
            } catch (Exception e) {
                rq.m(e);
                e.printStackTrace();
            }
        }
        this.a.n.set(false);
    }

    @Override // defpackage.pm.b
    public void c(int i, Exception exc) {
        String str;
        Context b = CollageMakerApplication.b();
        StringBuilder q = ic.q("CutoutShape/");
        if (exc == null) {
            str = "null";
        } else {
            str = exc.getMessage();
        }
        q.append(str);
        uq.n(b, "Error_Store_Package", q.toString());
        this.a.n.set(false);
        this.a.k.sendEmptyMessage(66);
    }
}
