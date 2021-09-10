package defpackage;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.Fragment;
import butterknife.ButterKnife;
import butterknife.Unbinder;
import com.camerasideas.collagemaker.activity.CollageMakerApplication;

/* renamed from: tm  reason: default package */
public abstract class tm extends Fragment {
    protected Context U = CollageMakerApplication.b();
    protected Unbinder V;
    protected AppCompatActivity W;

    @Override // androidx.fragment.app.Fragment
    public void D0(View view, Bundle bundle) {
        if (view != null) {
            view.setClickable(true);
        }
        String l1 = l1();
        em.h(l1, "onViewCreated: savedInstanceState=" + bundle);
    }

    @Override // androidx.fragment.app.Fragment
    public void f0(Activity activity) {
        super.f0(activity);
        this.W = (AppCompatActivity) activity;
        em.h("BaseFragment", "attach to ImageEditActivity");
    }

    /* access modifiers changed from: protected */
    public String l1() {
        return getClass().getSimpleName();
    }

    @Override // androidx.fragment.app.Fragment
    public View m0(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(m1(), viewGroup, false);
        this.V = ButterKnife.a(this, inflate);
        return inflate;
    }

    /* access modifiers changed from: protected */
    public abstract int m1();

    @Override // androidx.fragment.app.Fragment
    public void n0() {
        super.n0();
        Unbinder unbinder = this.V;
        if (unbinder != null) {
            unbinder.a();
        }
        em.h(l1(), "onDestroy");
    }

    @Override // androidx.fragment.app.Fragment
    public void o0() {
        super.o0();
        em.h(l1(), "onDestroyView");
    }
}
