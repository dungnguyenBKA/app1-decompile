package com.camerasideas.collagemaker.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.View;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.o0;
import androidx.lifecycle.b;
import androidx.lifecycle.c;
import androidx.lifecycle.i;
import com.camerasideas.collagemaker.appdata.e;
import com.camerasideas.collagemaker.appdata.f;
import com.wcl.notchfit.a;
import inshot.collage.adconfig.h;
import inshot.collage.adconfig.l;
import java.util.Locale;
import org.greenrobot.eventbus.j;
import photoeditor.cutout.backgrounderaser.R;

public abstract class BaseActivity extends AppCompatActivity implements SharedPreferences.OnSharedPreferenceChangeListener {
    private static final String TAG = "BaseActivity";
    protected qq mAppExitUtils = new qq(this);
    private c mLifecycleObserver = new c() {
        /* class com.camerasideas.collagemaker.activity.BaseActivity.AnonymousClass1 */

        @Override // androidx.lifecycle.d
        public /* synthetic */ void a(i iVar) {
            b.c(this, iVar);
        }

        @Override // androidx.lifecycle.d
        public void b(i iVar) {
        }

        @Override // androidx.lifecycle.d
        public /* synthetic */ void d(i iVar) {
            b.b(this, iVar);
        }

        @Override // androidx.lifecycle.d
        public /* synthetic */ void e(i iVar) {
            b.d(this, iVar);
        }

        @Override // androidx.lifecycle.d
        public /* synthetic */ void f(i iVar) {
            b.a(this, iVar);
        }

        @Override // androidx.lifecycle.d
        public void g(i iVar) {
            BaseActivity.this.notchFit();
        }
    };
    protected View mTopSpace;

    static {
        int i = androidx.appcompat.app.i.d;
        o0.a(true);
    }

    private void n(xa0 xa0) {
        if (!xa0.c() || xa0.b() <= 0) {
            f.g(this).edit().putInt("NotchHeight", 0).apply();
            return;
        }
        onNotchReady(xa0.b());
        f.g(this).edit().putInt("NotchHeight", xa0.b()).apply();
    }

    private void setLocale(Configuration configuration, Locale locale) {
        Resources resources = getResources();
        DisplayMetrics displayMetrics = resources.getDisplayMetrics();
        configuration.setLocale(locale);
        if (Build.VERSION.SDK_INT > 24) {
            getApplicationContext().createConfigurationContext(configuration);
        } else {
            resources.updateConfiguration(configuration, displayMetrics);
        }
    }

    public void applyOverrideConfiguration(Configuration configuration) {
        if (configuration != null) {
            int i = configuration.uiMode;
            configuration.setTo(getBaseContext().getResources().getConfiguration());
            configuration.uiMode = i;
        }
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 21 && i2 <= 25) {
            setLocale(configuration, xq.c(this, xq.d(this)));
        }
        super.applyOverrideConfiguration(configuration);
    }

    /* access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity
    public void attachBaseContext(Context context) {
        super.attachBaseContext(xq.e(context));
    }

    /* access modifiers changed from: protected */
    public void finishNewUserTrip() {
        if (f.g(this).getBoolean("isNewUser", true)) {
            f.g(this).edit().putBoolean("isNewUser", false).apply();
        }
    }

    /* access modifiers changed from: protected */
    public abstract String getTAG();

    /* access modifiers changed from: protected */
    public void notchFit() {
        if (f.c(this) <= 0) {
            a.a(this, ya0.FULL_SCREEN, new a(this));
            return;
        }
        ((za0) bb0.a().b()).b(this, true);
        androidx.core.app.b.B0(this);
        onNotchReady(f.c(this));
    }

    /* access modifiers changed from: protected */
    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        am.a().c(this);
        androidx.core.app.b.r0(this);
        getLifecycle().a(this.mLifecycleObserver);
    }

    /* access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity
    public void onDestroy() {
        super.onDestroy();
        am.a().d(this);
        androidx.core.app.b.M0(this);
    }

    @j
    public void onEvent(Object obj) {
    }

    /* access modifiers changed from: protected */
    public void onNotchReady(int i) {
        View view = this.mTopSpace;
        if (view != null) {
            view.getLayoutParams().height = i;
            this.mTopSpace.requestLayout();
        }
    }

    /* access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity
    public void onPause() {
        super.onPause();
        Activity activity = e.c;
        l.f.g();
    }

    /* access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity
    public void onResume() {
        super.onResume();
        Activity activity = e.c;
    }

    public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        if ((TextUtils.equals(str, "photoeditor.layout.collagemaker.removeads") || TextUtils.equals(str, "SubscribePro")) && !androidx.core.app.b.g(this)) {
            removeAd();
            androidx.core.app.b.M0(this);
        }
    }

    /* access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity
    public void onStart() {
        super.onStart();
        this.mTopSpace = findViewById(R.id.sj);
    }

    public void removeAd() {
        try {
            inshot.collage.adconfig.f.k.j();
            h.g.i();
            l.f.e();
        } catch (Throwable th) {
            StringBuilder q = ic.q("destroyAd error: ");
            q.append(th.getMessage());
            em.h(TAG, q.toString());
            th.printStackTrace();
        }
    }

    /* access modifiers changed from: protected */
    public void return2MainActivity() {
        em.h(TAG, "return2MainActivity");
        if (getClass().equals(MainActivity.class)) {
            em.h(TAG, "Call return2MainActivity From MainActivity");
            return;
        }
        Intent intent = new Intent();
        h.g.g(inshot.collage.adconfig.i.ResultPage);
        intent.setFlags(67108864);
        intent.setClass(this, MainActivity.class);
        e.e(0);
        com.camerasideas.collagemaker.photoproc.graphicsitems.i.k().c();
        startActivity(intent);
        finish();
    }
}
