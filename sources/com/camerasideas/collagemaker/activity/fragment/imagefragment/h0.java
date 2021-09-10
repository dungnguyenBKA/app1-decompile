package com.camerasideas.collagemaker.activity.fragment.imagefragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.app.b;
import com.camerasideas.collagemaker.activity.ImageCutoutActivity;
import com.camerasideas.collagemaker.activity.fragment.commonfragment.SubscribeProFragment;
import com.camerasideas.collagemaker.photoproc.editorview.CutoutEditorView;
import com.camerasideas.collagemaker.photoproc.graphicsitems.i;
import defpackage.yn;
import photoeditor.cutout.backgrounderaser.R;

public abstract class h0<V, P extends yn<V>> extends vm<V, P> {
    protected View Y;
    protected LinearLayout Z;
    protected LinearLayout a0;
    public CutoutEditorView b0;
    protected ImageView c0;
    public View d0;

    @Override // defpackage.vm, androidx.fragment.app.Fragment, defpackage.tm
    public void D0(View view, Bundle bundle) {
        super.D0(view, bundle);
        uq.t(this.c0, r1());
    }

    @Override // defpackage.vm, androidx.fragment.app.Fragment, defpackage.tm
    public View m0(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.Y = this.W.findViewById(R.id.qn);
        this.b0 = (CutoutEditorView) this.W.findViewById(R.id.iz);
        this.Z = (LinearLayout) this.W.findViewById(R.id.e2);
        this.a0 = (LinearLayout) this.W.findViewById(R.id.e1);
        this.c0 = (ImageView) this.W.findViewById(R.id.di);
        this.d0 = this.W.findViewById(R.id.g3);
        return super.m0(layoutInflater, viewGroup, bundle);
    }

    @Override // defpackage.vm, androidx.fragment.app.Fragment, defpackage.tm
    public void o0() {
        super.o0();
        if (q1()) {
            w1();
        }
        uq.t(this.c0, p1());
    }

    public void o1() {
        AppCompatActivity appCompatActivity = this.W;
        if (appCompatActivity instanceof ImageCutoutActivity) {
            ((ImageCutoutActivity) appCompatActivity).c();
        }
    }

    /* access modifiers changed from: protected */
    public boolean p1() {
        return true;
    }

    /* access modifiers changed from: protected */
    public boolean q1() {
        return true;
    }

    /* access modifiers changed from: protected */
    public boolean r1() {
        return false;
    }

    /* access modifiers changed from: protected */
    public void s1() {
        uq.t(this.Y, false);
    }

    public boolean t1() {
        AppCompatActivity appCompatActivity = this.W;
        if (appCompatActivity instanceof ImageCutoutActivity) {
            return ((ImageCutoutActivity) appCompatActivity).v();
        }
        return false;
    }

    public void u1() {
        AppCompatActivity appCompatActivity = this.W;
        if (appCompatActivity instanceof ImageCutoutActivity) {
            ((ImageCutoutActivity) appCompatActivity).m();
        }
    }

    /* access modifiers changed from: protected */
    public void v1(String str) {
        Bundle bundle = new Bundle();
        bundle.putString("PRO_FROM", str);
        b.s(this.W, SubscribeProFragment.class, bundle, R.id.hn, true, true);
    }

    public void w1() {
        com.camerasideas.collagemaker.photoproc.graphicsitems.b m = i.k().m();
        uq.t(this.Y, false);
        if (m != null && i.k().l().size() > 1) {
            uq.t(this.Y, true);
            ((ImageView) this.a0.getChildAt(0)).setSelected(i.k().f(m));
            ((TextView) this.a0.getChildAt(1)).setSelected(i.k().f(m));
            ((ImageView) this.Z.getChildAt(0)).setSelected(i.k().g(m));
            ((TextView) this.Z.getChildAt(1)).setSelected(i.k().g(m));
        }
    }
}
