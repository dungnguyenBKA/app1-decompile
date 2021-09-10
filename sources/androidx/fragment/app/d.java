package androidx.fragment.app;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.core.app.b;
import androidx.lifecycle.v;

public class d {
    private final f<?> a;

    private d(f<?> fVar) {
        this.a = fVar;
    }

    public static d b(f<?> fVar) {
        b.l(fVar, "callbacks == null");
        return new d(fVar);
    }

    public void a(Fragment fragment) {
        f<?> fVar = this.a;
        fVar.f.l(fVar, fVar, null);
    }

    public void c() {
        this.a.f.r();
    }

    public void d(Configuration configuration) {
        this.a.f.s(configuration);
    }

    public boolean e(MenuItem menuItem) {
        return this.a.f.t(menuItem);
    }

    public void f() {
        this.a.f.u();
    }

    public boolean g(Menu menu, MenuInflater menuInflater) {
        return this.a.f.v(menu, menuInflater);
    }

    public void h() {
        this.a.f.w();
    }

    public void i() {
        this.a.f.y();
    }

    public void j(boolean z) {
        this.a.f.z(z);
    }

    public boolean k(MenuItem menuItem) {
        return this.a.f.O(menuItem);
    }

    public void l(Menu menu) {
        this.a.f.P(menu);
    }

    public void m() {
        this.a.f.R();
    }

    public void n(boolean z) {
        this.a.f.S(z);
    }

    public boolean o(Menu menu) {
        return this.a.f.T(menu);
    }

    public void p() {
        this.a.f.V();
    }

    public void q() {
        this.a.f.W();
    }

    public void r() {
        this.a.f.Y();
    }

    public boolean s() {
        return this.a.f.b0();
    }

    public Fragment t(String str) {
        return this.a.f.f0(str);
    }

    public g u() {
        return this.a.f;
    }

    public void v() {
        this.a.f.s0();
    }

    public View w(View view, String str, Context context, AttributeSet attributeSet) {
        return this.a.f.onCreateView(view, str, context, attributeSet);
    }

    public void x(Parcelable parcelable) {
        f<?> fVar = this.a;
        if (fVar instanceof v) {
            fVar.f.w0(parcelable);
            return;
        }
        throw new IllegalStateException("Your FragmentHostCallback must implement ViewModelStoreOwner to call restoreSaveState(). Call restoreAllState()  if you're still using retainNestedNonConfig().");
    }

    public Parcelable y() {
        return this.a.f.x0();
    }
}
