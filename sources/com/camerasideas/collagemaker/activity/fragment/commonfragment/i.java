package com.camerasideas.collagemaker.activity.fragment.commonfragment;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.app.AppCompatActivity;
import defpackage.fo;
import defpackage.yn;
import java.util.Objects;
import org.greenrobot.eventbus.j;

public abstract class i<V extends fo, P extends yn<V>> extends h implements fo<P> {
    protected P X;

    @Override // androidx.fragment.app.Fragment
    public void A0(Bundle bundle) {
        em.h(l1(), "onSaveInstanceState");
        P p = this.X;
        if (p != null) {
            p.i(bundle);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void B0() {
        super.B0();
        P p = this.X;
        if (p != null) {
            Objects.requireNonNull(p);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void C0() {
        super.C0();
        P p = this.X;
        if (p != null) {
            Objects.requireNonNull(p);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void D0(View view, Bundle bundle) {
        P n1 = n1(this);
        this.X = n1;
        n1.d(this);
    }

    @Override // androidx.fragment.app.Fragment
    public void E0(Bundle bundle) {
        P p;
        super.E0(bundle);
        em.h(l1(), "onViewStateRestored");
        if (bundle != null && (p = this.X) != null) {
            p.h(bundle);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void d0(Bundle bundle) {
        super.d0(bundle);
        P p = this.X;
        if (p != null) {
            AppCompatActivity appCompatActivity = this.W;
            p.g(appCompatActivity != null ? appCompatActivity.getIntent() : null, A(), bundle);
        }
    }

    @Override // androidx.fragment.app.Fragment, com.camerasideas.collagemaker.activity.fragment.commonfragment.h
    public void f0(Activity activity) {
        super.f0(activity);
    }

    @Override // androidx.fragment.app.Fragment
    public void g0(Context context) {
        super.g0(context);
    }

    @Override // androidx.fragment.app.Fragment
    public void j0(Bundle bundle) {
        super.j0(bundle);
        am.a().c(this);
    }

    @Override // androidx.fragment.app.Fragment, com.camerasideas.collagemaker.activity.fragment.commonfragment.h
    public View m0(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return super.m0(layoutInflater, viewGroup, bundle);
    }

    @Override // androidx.fragment.app.Fragment, com.camerasideas.collagemaker.activity.fragment.commonfragment.h
    public void n0() {
        super.n0();
        P p = this.X;
        if (p != null) {
            p.j();
        }
    }

    /* access modifiers changed from: protected */
    public abstract P n1(V v);

    @Override // androidx.fragment.app.Fragment, com.camerasideas.collagemaker.activity.fragment.commonfragment.h
    public void o0() {
        super.o0();
        am.a().d(this);
    }

    @j
    public void onEvent(Object obj) {
    }

    @Override // androidx.fragment.app.Fragment, com.camerasideas.collagemaker.activity.fragment.commonfragment.h
    public void p0() {
        super.p0();
    }

    @Override // androidx.fragment.app.Fragment
    public void v0() {
        super.v0();
        P p = this.X;
        if (p != null) {
            Objects.requireNonNull(p);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void z0() {
        super.z0();
        P p = this.X;
        if (p != null) {
            p.k();
        }
    }
}
