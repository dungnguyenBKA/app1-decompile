package androidx.appcompat.app;

import android.app.Dialog;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import defpackage.k;
import defpackage.q2;

public class o extends Dialog implements h {
    private i b;
    private final q2.a c;

    class a implements q2.a {
        a() {
        }

        @Override // defpackage.q2.a
        public boolean superDispatchKeyEvent(KeyEvent keyEvent) {
            return o.this.b(keyEvent);
        }
    }

    /* JADX WARNING: Illegal instructions before constructor call */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public o(android.content.Context r5, int r6) {
        /*
            r4 = this;
            r0 = 1
            r1 = 2130903317(0x7f030115, float:1.7413449E38)
            if (r6 != 0) goto L_0x0015
            android.util.TypedValue r2 = new android.util.TypedValue
            r2.<init>()
            android.content.res.Resources$Theme r3 = r5.getTheme()
            r3.resolveAttribute(r1, r2, r0)
            int r2 = r2.resourceId
            goto L_0x0016
        L_0x0015:
            r2 = r6
        L_0x0016:
            r4.<init>(r5, r2)
            androidx.appcompat.app.o$a r2 = new androidx.appcompat.app.o$a
            r2.<init>()
            r4.c = r2
            androidx.appcompat.app.i r2 = r4.a()
            if (r6 != 0) goto L_0x0034
            android.util.TypedValue r6 = new android.util.TypedValue
            r6.<init>()
            android.content.res.Resources$Theme r5 = r5.getTheme()
            r5.resolveAttribute(r1, r6, r0)
            int r6 = r6.resourceId
        L_0x0034:
            r2.B(r6)
            r5 = 0
            r2.o(r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.o.<init>(android.content.Context, int):void");
    }

    public i a() {
        if (this.b == null) {
            int i = i.d;
            this.b = new AppCompatDelegateImpl(this, this);
        }
        return this.b;
    }

    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        a().c(view, layoutParams);
    }

    /* access modifiers changed from: package-private */
    public boolean b(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }

    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return q2.b(this.c, getWindow().getDecorView(), this, keyEvent);
    }

    @Override // android.app.Dialog
    public <T extends View> T findViewById(int i) {
        return (T) a().e(i);
    }

    public void invalidateOptionsMenu() {
        a().k();
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        a().j();
        super.onCreate(bundle);
        a().o(bundle);
    }

    /* access modifiers changed from: protected */
    public void onStop() {
        super.onStop();
        a().u();
    }

    @Override // androidx.appcompat.app.h
    public void onSupportActionModeFinished(k kVar) {
    }

    @Override // androidx.appcompat.app.h
    public void onSupportActionModeStarted(k kVar) {
    }

    @Override // androidx.appcompat.app.h
    public k onWindowStartingSupportActionMode(k.a aVar) {
        return null;
    }

    @Override // android.app.Dialog
    public void setContentView(int i) {
        a().x(i);
    }

    @Override // android.app.Dialog
    public void setTitle(CharSequence charSequence) {
        super.setTitle(charSequence);
        a().C(charSequence);
    }

    @Override // android.app.Dialog
    public void setContentView(View view) {
        a().y(view);
    }

    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        a().z(view, layoutParams);
    }

    @Override // android.app.Dialog
    public void setTitle(int i) {
        super.setTitle(i);
        a().C(getContext().getString(i));
    }
}
