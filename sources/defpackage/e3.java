package defpackage;

import android.text.TextUtils;
import android.view.View;
import defpackage.c3;

/* access modifiers changed from: package-private */
/* renamed from: e3  reason: default package */
public final class e3 extends c3.c<CharSequence> {
    e3(int i, Class cls, int i2, int i3) {
        super(i, cls, i2, i3);
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    /* access modifiers changed from: package-private */
    @Override // defpackage.c3.c
    public CharSequence b(View view) {
        return view.getAccessibilityPaneTitle();
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [android.view.View, java.lang.Object] */
    /* access modifiers changed from: package-private */
    @Override // defpackage.c3.c
    public void c(View view, CharSequence charSequence) {
        view.setAccessibilityPaneTitle(charSequence);
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, java.lang.Object] */
    /* access modifiers changed from: package-private */
    @Override // defpackage.c3.c
    public boolean f(CharSequence charSequence, CharSequence charSequence2) {
        return !TextUtils.equals(charSequence, charSequence2);
    }
}
