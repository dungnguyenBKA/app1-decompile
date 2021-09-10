package defpackage;

import androidx.core.app.b;
import com.camerasideas.collagemaker.activity.CollageMakerApplication;
import defpackage.om;
import java.io.File;
import org.json.JSONObject;

/* access modifiers changed from: package-private */
/* renamed from: zp  reason: default package */
public class zp implements om.a {
    final /* synthetic */ yp a;

    zp(yp ypVar) {
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
                File file = new File(str2);
                String q0 = b.q0(file, "utf-8");
                em.h("CloudStoreManager", "config = " + q0);
                JSONObject jSONObject = new JSONObject(q0);
                file.renameTo(CollageMakerApplication.b().getFileStreamPath("update_config.json"));
                this.a.k.obtainMessage(17, jSONObject).sendToTarget();
            } catch (Exception e) {
                rq.m(e);
                e.printStackTrace();
            }
        }
        this.a.l.set(false);
    }

    @Override // defpackage.pm.b
    public void c(int i, Exception exc) {
        this.a.l.set(false);
    }
}
