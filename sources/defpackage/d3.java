package defpackage;

import android.view.View;
import defpackage.c3;

/* renamed from: d3  reason: default package */
final class d3 extends c3.c<Boolean> {
    d3(int i, Class cls, int i2) {
        super(i, cls, i2);
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    /* access modifiers changed from: package-private */
    @Override // defpackage.c3.c
    public Boolean b(View view) {
        return Boolean.valueOf(view.isScreenReaderFocusable());
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [android.view.View, java.lang.Object] */
    /* access modifiers changed from: package-private */
    @Override // defpackage.c3.c
    public void c(View view, Boolean bool) {
        view.setScreenReaderFocusable(bool.booleanValue());
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, java.lang.Object] */
    /* access modifiers changed from: package-private */
    @Override // defpackage.c3.c
    public boolean f(Boolean bool, Boolean bool2) {
        return !a(bool, bool2);
    }
}
