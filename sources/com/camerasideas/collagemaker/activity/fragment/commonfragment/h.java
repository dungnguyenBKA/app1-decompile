package com.camerasideas.collagemaker.activity.fragment.commonfragment;

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

public abstract class h extends Fragment {
    protected Context U = CollageMakerApplication.b();
    protected Unbinder V;
    protected AppCompatActivity W;

    @Override // androidx.fragment.app.Fragment
    public void f0(Activity activity) {
        super.f0(activity);
        this.W = (AppCompatActivity) activity;
        em.h(l1(), "attach to activity");
    }

    /* access modifiers changed from: protected */
    public abstract String l1();

    @Override // androidx.fragment.app.Fragment
    public View m0(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View view = null;
        try {
            view = layoutInflater.inflate(m1(), viewGroup, false);
            this.V = ButterKnife.a(this, view);
            return view;
        } catch (Throwable th) {
            StringBuilder q = ic.q("onCreateView error: ");
            q.append(th.getMessage());
            em.h("CommonFragment", q.toString());
            th.printStackTrace();
            return view;
        }
    }

    /* access modifiers changed from: protected */
    public abstract int m1();

    @Override // androidx.fragment.app.Fragment
    public void n0() {
        super.n0();
        em.h(l1(), "onDestroy");
    }

    @Override // androidx.fragment.app.Fragment
    public void o0() {
        super.o0();
        em.h(l1(), "onDestroyView");
    }

    @Override // androidx.fragment.app.Fragment
    public void p0() {
        super.p0();
    }
}
