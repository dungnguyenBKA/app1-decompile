package defpackage;

import android.app.Activity;
import java.util.ArrayList;

/* renamed from: lo  reason: default package */
public final /* synthetic */ class lo implements je0 {
    public final /* synthetic */ oo a;
    public final /* synthetic */ Activity b;
    public final /* synthetic */ int c;

    public /* synthetic */ lo(oo ooVar, Activity activity, int i) {
        this.a = ooVar;
        this.b = activity;
        this.c = i;
    }

    @Override // defpackage.je0
    public final void a(Object obj) {
        this.a.o(this.b, this.c, (ArrayList) obj);
    }
}
