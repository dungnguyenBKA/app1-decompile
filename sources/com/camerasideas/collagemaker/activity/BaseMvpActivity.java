package com.camerasideas.collagemaker.activity;

import android.os.Build;
import android.os.Bundle;
import android.os.Looper;
import android.os.MessageQueue;
import butterknife.ButterKnife;
import com.camerasideas.baseutils.widget.AnimCircleView;
import com.camerasideas.collagemaker.appdata.e;
import defpackage.ql;
import defpackage.yn;
import java.util.Objects;
import org.greenrobot.eventbus.j;
import photoeditor.cutout.backgrounderaser.R;

public abstract class BaseMvpActivity<V, T extends yn<V>> extends BaseActivity {
    protected T b;
    protected boolean c = false;
    private MessageQueue.IdleHandler d;

    public /* synthetic */ boolean o() {
        this.d = null;
        return false;
    }

    /* access modifiers changed from: protected */
    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, com.camerasideas.collagemaker.activity.BaseActivity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (this instanceof ImageCutoutActivity) {
            fn.a(0.25f);
            em.h("BaseMvpActivity", "set memory cache size: 0.25");
        }
        ql.a.h = false;
        am.a().c(this);
        T p = p();
        this.b = p;
        p.d(this);
        try {
            setContentView(q());
            int i = ButterKnife.b;
            ButterKnife.a(this, getWindow().getDecorView());
            if (Build.VERSION.SDK_INT > 21) {
                getWindow().setNavigationBarColor(-16777216);
            }
        } catch (Throwable th) {
            th.printStackTrace();
            rq.m(th);
            this.c = true;
            em.h("BaseMvpActivity", "mIsLoadXmlError=true");
            new vq(this).b();
        }
        this.b.g(getIntent(), null, bundle);
        r();
    }

    /* access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, com.camerasideas.collagemaker.activity.BaseActivity
    public void onDestroy() {
        super.onDestroy();
        Objects.requireNonNull(this.b);
        this.b.j();
    }

    @Override // com.camerasideas.collagemaker.activity.BaseActivity
    @j
    public void onEvent(Object obj) {
    }

    /* access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, com.camerasideas.collagemaker.activity.BaseActivity
    public void onPause() {
        super.onPause();
        Objects.requireNonNull(this.b);
    }

    /* access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity
    public void onPostCreate(Bundle bundle) {
        super.onPostCreate(bundle);
        AnimCircleView animCircleView = (AnimCircleView) findViewById(R.id.fd);
    }

    /* access modifiers changed from: protected */
    public void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        if (bundle != null && bundle.containsKey("mode")) {
            e.e(bundle.getInt("mode"));
        }
        this.b.h(bundle);
    }

    /* access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, com.camerasideas.collagemaker.activity.BaseActivity
    public void onResume() {
        super.onResume();
        this.b.d(this);
        this.b.k();
    }

    /* access modifiers changed from: protected */
    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("mode", e.a());
        this.b.i(bundle);
    }

    /* access modifiers changed from: protected */
    public abstract T p();

    /* access modifiers changed from: protected */
    public abstract int q();

    /* access modifiers changed from: protected */
    public void r() {
        if (this.d == null) {
            this.d = new b(this);
            Looper.myQueue().addIdleHandler(this.d);
        }
    }
}
