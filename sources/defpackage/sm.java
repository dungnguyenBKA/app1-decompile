package defpackage;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.b;
import androidx.fragment.app.g;
import butterknife.ButterKnife;
import butterknife.Unbinder;
import com.camerasideas.collagemaker.activity.CollageMakerApplication;

/* renamed from: sm  reason: default package */
public abstract class sm extends b {
    protected Context f0 = CollageMakerApplication.b();
    protected Unbinder g0;
    protected AppCompatActivity h0;

    @Override // androidx.fragment.app.b, androidx.fragment.app.Fragment
    public void B0() {
        super.B0();
        Dialog o1 = o1();
        if (o1 != null) {
            o1.getWindow().setLayout(-2, -2);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void D0(View view, Bundle bundle) {
    }

    @Override // androidx.fragment.app.Fragment
    public void f0(Activity activity) {
        super.f0(activity);
        this.h0 = (AppCompatActivity) activity;
    }

    @Override // androidx.fragment.app.Fragment
    public View m0(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(w1(), viewGroup, false);
        this.g0 = ButterKnife.a(this, inflate);
        return inflate;
    }

    @Override // androidx.fragment.app.b, androidx.fragment.app.Fragment
    public void o0() {
        super.o0();
        Unbinder unbinder = this.g0;
        if (unbinder != null) {
            unbinder.a();
        }
    }

    @Override // androidx.fragment.app.b
    public Dialog p1(Bundle bundle) {
        Dialog p1 = super.p1(bundle);
        p1.getWindow().requestFeature(1);
        return p1;
    }

    public void u1() {
        try {
            l1();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public abstract String v1();

    /* access modifiers changed from: protected */
    public abstract int w1();

    public void x1(g gVar) {
        try {
            t1(gVar, v1());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void z0() {
        super.z0();
        o1().getWindow().setBackgroundDrawable(new ColorDrawable(0));
        s1(2, 16973829);
    }
}
