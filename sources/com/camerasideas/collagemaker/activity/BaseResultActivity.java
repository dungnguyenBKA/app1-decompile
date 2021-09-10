package com.camerasideas.collagemaker.activity;

import android.os.Bundle;
import android.widget.FrameLayout;
import androidx.core.app.b;
import androidx.fragment.app.Fragment;
import com.camerasideas.collagemaker.activity.fragment.commonfragment.m;
import com.camerasideas.collagemaker.appdata.e;
import inshot.collage.adconfig.h;
import inshot.collage.adconfig.i;
import photoeditor.cutout.backgrounderaser.R;

public abstract class BaseResultActivity extends BaseMvpActivity<to, po> implements to {
    private FrameLayout e;

    @Override // defpackage.to
    public void b() {
    }

    @Override // defpackage.to
    public void h(boolean z) {
        em.h("TesterLog-Rate", "弹出EnjoyApp打分对话框");
        if (z) {
            uq.h(this);
        } else {
            ((sm) Fragment.Y(this, m.class.getName(), null)).x1(getSupportFragmentManager());
        }
    }

    @Override // androidx.activity.ComponentActivity
    public void onBackPressed() {
        if (b.D(this) == 0) {
            ((CutoutResultActivity) this).finish();
        } else {
            super.onBackPressed();
        }
    }

    /* access modifiers changed from: protected */
    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, com.camerasideas.collagemaker.activity.BaseMvpActivity, com.camerasideas.collagemaker.activity.BaseActivity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        h.g.m(new c(this));
    }

    /* access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, com.camerasideas.collagemaker.activity.BaseMvpActivity, com.camerasideas.collagemaker.activity.BaseActivity
    public void onDestroy() {
        super.onDestroy();
        h.g.m(null);
    }

    /* access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, com.camerasideas.collagemaker.activity.BaseMvpActivity, com.camerasideas.collagemaker.activity.BaseActivity
    public void onPause() {
        super.onPause();
        h.g.j(i.ResultPage);
    }

    /* access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity, com.camerasideas.collagemaker.activity.BaseMvpActivity
    public void onPostCreate(Bundle bundle) {
        super.onPostCreate(bundle);
        this.e = (FrameLayout) findViewById(R.id.c5);
    }

    /* access modifiers changed from: protected */
    @Override // com.camerasideas.collagemaker.activity.BaseMvpActivity
    public void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        ((po) this.b).o(bundle);
    }

    @Override // androidx.fragment.app.FragmentActivity, com.camerasideas.collagemaker.activity.BaseMvpActivity, com.camerasideas.collagemaker.activity.BaseActivity
    public void onResume() {
        super.onResume();
        e.b = null;
        e.a = false;
        if (b.g(this)) {
            h.g.k(i.ResultPage, this.e);
        }
    }

    /* access modifiers changed from: protected */
    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, com.camerasideas.collagemaker.activity.BaseMvpActivity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        ((po) this.b).p(bundle);
    }

    /* Return type fixed from 'yn' to match base method */
    /* access modifiers changed from: protected */
    @Override // com.camerasideas.collagemaker.activity.BaseMvpActivity
    public po p() {
        return new po();
    }

    public /* synthetic */ void s(i iVar) {
        i iVar2 = i.ResultPage;
        if (iVar == iVar2) {
            h.g.n(this.e, iVar2);
        }
    }
}
