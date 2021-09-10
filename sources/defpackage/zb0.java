package defpackage;

import android.util.Log;
import com.camerasideas.collagemaker.activity.e;
import defpackage.bc0;

/* access modifiers changed from: package-private */
/* renamed from: zb0  reason: default package */
public class zb0 implements hw<Boolean> {
    final /* synthetic */ bc0.a a;
    final /* synthetic */ bc0 b;

    zb0(bc0 bc0, bc0.a aVar) {
        this.b = bc0;
        this.a = aVar;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // defpackage.hw
    public void onSuccess(Boolean bool) {
        Log.e("ad_log", bool + "  x ");
        long unused = bc0.d = System.currentTimeMillis();
        bc0.a aVar = this.a;
        if (aVar != null) {
            ((e) aVar).a.i(true);
        }
        this.b.b = false;
    }
}
