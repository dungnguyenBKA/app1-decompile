package defpackage;

import com.camerasideas.collagemaker.activity.e;
import defpackage.bc0;

/* access modifiers changed from: package-private */
/* renamed from: ac0  reason: default package */
public class ac0 implements gw {
    final /* synthetic */ bc0.a a;
    final /* synthetic */ bc0 b;

    ac0(bc0 bc0, bc0.a aVar) {
        this.b = bc0;
        this.a = aVar;
    }

    @Override // defpackage.gw
    public void onFailure(Exception exc) {
        bc0.a aVar = this.a;
        if (aVar != null) {
            ((e) aVar).a.i(false);
        }
        this.b.b = false;
    }
}
