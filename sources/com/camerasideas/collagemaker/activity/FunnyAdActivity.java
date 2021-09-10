package com.camerasideas.collagemaker.activity;

import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.view.KeyEvent;
import android.widget.FrameLayout;
import androidx.appcompat.app.AppCompatActivity;
import inshot.collage.adconfig.k;
import photoeditor.cutout.backgrounderaser.R;

public class FunnyAdActivity extends AppCompatActivity {
    private k b;

    /* access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity
    public void attachBaseContext(Context context) {
        super.attachBaseContext(xq.e(context));
    }

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getWindow().getDecorView().setSystemUiVisibility(4);
        setContentView(R.layout.bv);
        if (Build.VERSION.SDK_INT > 21) {
            getWindow().setNavigationBarColor(-16777216);
        }
        k kVar = new k(this);
        this.b = kVar;
        kVar.h((FrameLayout) findViewById(R.id.hp));
        uq.n(this, "AD", "显示情趣广告页面");
    }

    /* access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity
    public void onDestroy() {
        super.onDestroy();
        this.b.f();
        this.b = null;
    }

    @Override // androidx.appcompat.app.AppCompatActivity
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i != 4) {
            return super.onKeyDown(i, keyEvent);
        }
        StringBuilder q = ic.q("关闭情趣广告：");
        q.append(this.b.g() ? "已展示" : "未展示");
        uq.n(this, "AD", q.toString());
        finish();
        return true;
    }

    /* access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity
    public void onResume() {
        super.onResume();
        getWindow().getDecorView().setSystemUiVisibility(4);
    }
}
