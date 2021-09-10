package com.camerasideas.collagemaker.activity;

import android.app.ActivityManager;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.constraintlayout.widget.ConstraintLayout;
import butterknife.BindView;
import butterknife.OnClick;
import com.camerasideas.collagemaker.activity.fragment.commonfragment.AllowStorageAccessFragment;
import com.camerasideas.collagemaker.activity.fragment.commonfragment.SubscribeProFragment;
import com.camerasideas.collagemaker.activity.fragment.commonfragment.j;
import com.camerasideas.collagemaker.appdata.e;
import com.camerasideas.collagemaker.appdata.f;
import com.camerasideas.collagemaker.appdata.g;
import com.camerasideas.collagemaker.photoproc.graphicsitems.i;
import com.facebook.ads.AdError;
import inshot.collage.adconfig.h;
import inshot.collage.adconfig.l;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import photoeditor.cutout.backgrounderaser.R;

public class MainActivity extends BaseMvpActivity<so, oo> implements so, SharedPreferences.OnSharedPreferenceChangeListener {
    private Uri e;
    private boolean f = false;
    private boolean g = false;
    private int h = 4;
    private Handler i;
    private boolean j;
    private boolean k;
    private boolean l = false;
    private long m = 0;
    @BindView
    View mBtnPro;
    @BindView
    FrameLayout mCardAdLayout;
    @BindView
    ConstraintLayout mMainLayout;
    @BindView
    View mProgressView;
    @BindView
    View mRootLayout;
    private long n = 0;
    private long o = 0;
    private List<String> p = new ArrayList();
    private ul q;
    private j r;
    private boolean s;

    class a implements AllowStorageAccessFragment.a {
        a() {
        }

        @Override // com.camerasideas.collagemaker.activity.fragment.commonfragment.AllowStorageAccessFragment.a
        public void a() {
            androidx.core.app.b.E0(MainActivity.this);
        }

        @Override // com.camerasideas.collagemaker.activity.fragment.commonfragment.AllowStorageAccessFragment.a
        public void onDismiss() {
        }
    }

    /* access modifiers changed from: package-private */
    public class b implements AllowStorageAccessFragment.a {
        b() {
        }

        @Override // com.camerasideas.collagemaker.activity.fragment.commonfragment.AllowStorageAccessFragment.a
        public void a() {
            hm.c(MainActivity.this);
        }

        @Override // com.camerasideas.collagemaker.activity.fragment.commonfragment.AllowStorageAccessFragment.a
        public void onDismiss() {
        }
    }

    private static class c extends Handler {
        private final WeakReference<MainActivity> a;

        c(MainActivity mainActivity) {
            this.a = new WeakReference<>(mainActivity);
        }

        public void handleMessage(Message message) {
            Object obj;
            MainActivity mainActivity = this.a.get();
            if (mainActivity != null && message.what == 8 && (obj = message.obj) != null) {
                com.camerasideas.collagemaker.filter.c cVar = (com.camerasideas.collagemaker.filter.c) obj;
                String c = cVar.c();
                em.h("MainActivity", "HandleMessage gpuModel=" + c);
                if (c != null && !c.equals("")) {
                    f.g(mainActivity).edit().putString("gpuModel", c).apply();
                    em.h("MainActivity", "HandleMessage set gpuModel");
                }
                ViewGroup viewGroup = (ViewGroup) mainActivity.findViewById(R.id.kw);
                em.h("MainActivity", "HandleMessage mainLayout=" + viewGroup);
                if (viewGroup != null) {
                    try {
                        viewGroup.removeView(cVar);
                    } catch (Exception e) {
                        em.h("MainActivity", "HandleMessage removeView failed");
                        e.printStackTrace();
                    }
                }
            }
        }
    }

    /* access modifiers changed from: private */
    /* renamed from: H */
    public void F() {
        if (this.l) {
            int q2 = ((oo) this.b).q(this, this.f);
            boolean z = true;
            boolean z2 = q2 == 2;
            this.g = z2;
            if (q2 >= 0 && !this.f) {
                z = false;
            }
            this.f = z;
            if (z2) {
                I();
            }
            this.l = false;
        }
    }

    private void I() {
        AllowStorageAccessFragment allowStorageAccessFragment;
        this.j = false;
        this.k = hm.b(this, "android.permission.WRITE_EXTERNAL_STORAGE");
        if (f.i(this)) {
            if (this.j) {
                allowStorageAccessFragment = null;
            } else {
                this.j = true;
                allowStorageAccessFragment = androidx.core.app.b.D0(this);
            }
            if (allowStorageAccessFragment != null) {
                allowStorageAccessFragment.y1(new b());
                return;
            }
            return;
        }
        hm.c(this);
    }

    public /* synthetic */ void A() {
        j jVar;
        if (!this.s && (jVar = this.r) != null) {
            jVar.t1(getSupportFragmentManager(), "");
            f.k(this, true);
        }
    }

    public /* synthetic */ void B(long j2) {
        uq.n(this, "DataMove_Feature_Time", String.valueOf(Math.max(((int) (System.currentTimeMillis() - j2)) / AdError.NETWORK_ERROR_CODE, 1)));
        j jVar = this.r;
        if (jVar != null) {
            jVar.y1(99);
        }
    }

    public /* synthetic */ void C() {
        uq.n(this, "DataMoveSuccess", "Yes");
        j jVar = this.r;
        if (jVar != null) {
            jVar.m1();
            F();
        }
    }

    public /* synthetic */ void D() {
        uq.n(this, "DataMoveSuccess", "Yes");
        j jVar = this.r;
        if (jVar != null) {
            jVar.m1();
            F();
        }
    }

    public /* synthetic */ void G() {
        this.p.clear();
        this.m = 0;
        long currentTimeMillis = System.currentTimeMillis();
        File file = new File(com.camerasideas.collagemaker.appdata.b.b);
        if (file.exists()) {
            File[] listFiles = file.listFiles();
            if (listFiles != null) {
                for (File file2 : listFiles) {
                    if (file2.isDirectory() && file2.getName().startsWith(".")) {
                        this.p.add(file2.getName());
                        z(new File(file2.getAbsolutePath()));
                        this.n = this.m;
                    }
                }
            }
            if (this.p.size() > 0) {
                long j2 = this.n;
                if (j2 > 0) {
                    uq.n(this, "DataMove_Feature_Size", j2 < 10485760 ? "< 10M" : j2 < 52428800 ? "10 - 50M" : j2 < 104857600 ? "50 - 100M" : "> 100M");
                }
                runOnUiThread(new e0(this));
                for (String str : this.p) {
                    em.h("MainActivity", "开始迁移数据，目录" + str);
                    StringBuilder sb = new StringBuilder();
                    sb.append(com.camerasideas.collagemaker.appdata.b.b);
                    String str2 = File.separator;
                    bm.a(ic.l(sb, str2, str), getExternalFilesDir("").getAbsolutePath() + str2 + str, this.q);
                }
                j jVar = this.r;
                if (jVar != null) {
                    jVar.w1(this.p);
                    if (this.r.u1() < 3000) {
                        runOnUiThread(new a0(this, currentTimeMillis));
                        this.mBtnPro.postDelayed(new g0(this), 3000 - (System.currentTimeMillis() - currentTimeMillis));
                        return;
                    }
                    uq.n(this, "DataMove_Feature_Time", String.valueOf(((int) (System.currentTimeMillis() - currentTimeMillis)) / AdError.NETWORK_ERROR_CODE));
                    em.h("MainActivity", "迁移数据总耗时" + (System.currentTimeMillis() - currentTimeMillis));
                    runOnUiThread(new c0(this));
                    return;
                }
                return;
            }
            f.k(this, true);
            runOnUiThread(new d0(this));
            return;
        }
        f.k(this, true);
        runOnUiThread(new b0(this));
    }

    @Override // defpackage.so
    public void c() {
        runOnUiThread(new z(this));
    }

    /* access modifiers changed from: protected */
    @Override // com.camerasideas.collagemaker.activity.BaseActivity
    public String getTAG() {
        return "MainActivity";
    }

    @Override // defpackage.so
    public void m() {
        runOnUiThread(new i0(this));
    }

    /* access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity
    public void onActivityResult(int i2, int i3, Intent intent) {
        em.h("MainActivity", "onActivityResult start");
        super.onActivityResult(i2, i3, intent);
        if (i2 == 13 && intent != null && hm.c(this)) {
            ((oo) this.b).r(this, this.h);
        }
    }

    @Override // androidx.activity.ComponentActivity
    public void onBackPressed() {
        if (androidx.core.app.b.D(this) != 0 || !this.mAppExitUtils.b(this)) {
            super.onBackPressed();
        } else {
            em.h("MainActivity", "点击了返回键");
        }
    }

    @OnClick
    public void onClickHome(View view) {
        int id = view.getId();
        if (id == R.id.d4) {
            if (hm.a(this)) {
                ((oo) this.b).r(this, this.h);
            } else {
                I();
            }
            uq.n(this, "HomeClick", "Create");
        } else if (id == R.id.e9) {
            uq.n(this, "HomeClick", "Pro");
            Bundle bundle = new Bundle();
            bundle.putString("PRO_FROM", "MainProIcon");
            androidx.core.app.b.s(this, SubscribeProFragment.class, bundle, R.id.hn, true, true);
        } else if (id == R.id.ed) {
            Objects.requireNonNull((oo) this.b);
            try {
                Intent intent = new Intent();
                intent.setClass(this, SettingActivity.class);
                startActivity(intent);
            } catch (Exception e2) {
                em.i("ImageMainPresenter", "SettingActivity occur exception", e2);
            }
            uq.n(this, "HomeClick", "Setting");
        }
    }

    /* access modifiers changed from: protected */
    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, com.camerasideas.collagemaker.activity.BaseMvpActivity, com.camerasideas.collagemaker.activity.BaseActivity
    public void onCreate(Bundle bundle) {
        if (bundle != null) {
            this.s = true;
            bundle.remove("android:support:fragments");
        } else {
            this.s = false;
        }
        super.onCreate(bundle);
        i.k().c();
        androidx.core.app.b.r0(this);
        em.h("MainActivity", "onCreate=" + this + ", savedInstanceState=" + bundle);
        StringBuilder sb = new StringBuilder();
        sb.append("from share=");
        sb.append(getIntent().getBooleanExtra("EXTRA_KEY_FROM_SHARE_ACTIVITY", false));
        em.h("MainActivity", sb.toString());
        try {
            Bitmap k2 = wq.k(this, R.drawable.c9, androidx.core.app.b.V(this) / 2, androidx.core.app.b.U(this) / 2);
            View view = this.mRootLayout;
            if (view != null) {
                view.setBackground(new BitmapDrawable(getResources(), k2));
            }
        } catch (OutOfMemoryError e2) {
            e2.printStackTrace();
        }
        if (getIntent() != null && bundle == null) {
            this.l = getIntent().getBooleanExtra("EXTRA_KEY_FROM_SHARE_ACTIVITY", false);
        }
        if (hm.a(this)) {
            en.a(null).i("image/*");
        }
        this.i = new c(this);
        if (f.b(this).isEmpty()) {
            try {
                if (f.b(this).equals("")) {
                    List<String> list = com.camerasideas.collagemaker.filter.a.a;
                    if ((((ActivityManager) getSystemService("activity")).getDeviceConfigurationInfo().reqGlEsVersion >= 131072) && !sq.b(this) && !sq.c(this)) {
                        em.h("MainActivity", "Start GPU Test");
                        com.camerasideas.collagemaker.filter.c cVar = new com.camerasideas.collagemaker.filter.c(this);
                        cVar.setLayoutParams(new LinearLayout.LayoutParams(1, 1));
                        cVar.setVisibility(0);
                        this.mMainLayout.addView(cVar);
                        em.h("MainActivity", "Start GPU Test2");
                        cVar.e(this.i, 8);
                    }
                }
            } catch (Exception e3) {
                e3.printStackTrace();
            }
        }
        h.g.m(new j0(this));
        com.zjsoft.baseadlib.b.d(this, com.camerasideas.collagemaker.appdata.b.n, true);
        uq.n(this, "PV", "MainPage");
        yp.F().K();
        uq.j(this);
        uq.t(this.mBtnPro, !androidx.core.app.b.d0(this));
        if (!cc0.g(this, "needUpdateFileNew", false) || this.s) {
            F();
        } else if (f.g(this).getBoolean("NewDownloadUser", false) || f.g(this).getBoolean("HasUpdateDownloadData", false)) {
            if (f.g(this).getBoolean("HasUpdateDownloadData", false)) {
                new Thread(new h0(this)).start();
                F();
                return;
            }
            F();
        } else if (!bm.f(com.camerasideas.collagemaker.appdata.b.b)) {
            f.k(this, true);
        } else {
            this.q = new x0(this);
            j jVar = new j();
            this.r = jVar;
            jVar.x1(System.currentTimeMillis());
            ml.h(new f0(this));
        }
    }

    /* access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, com.camerasideas.collagemaker.activity.BaseMvpActivity, com.camerasideas.collagemaker.activity.BaseActivity
    public void onDestroy() {
        super.onDestroy();
        h hVar = h.g;
        hVar.m(null);
        hVar.g(inshot.collage.adconfig.i.HomePage);
    }

    /* access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, com.camerasideas.collagemaker.activity.BaseMvpActivity, com.camerasideas.collagemaker.activity.BaseActivity
    public void onPause() {
        super.onPause();
        h.g.j(inshot.collage.adconfig.i.HomePage);
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.core.app.a.b
    public void onRequestPermissionsResult(int i2, String[] strArr, int[] iArr) {
        AllowStorageAccessFragment allowStorageAccessFragment;
        super.onRequestPermissionsResult(i2, strArr, iArr);
        if (i2 == 2) {
            em.n("MainActivity", "Received response for storage permissions request.");
            boolean z = false;
            if (hm.e(iArr)) {
                yp F = yp.F();
                Objects.requireNonNull(F);
                ml.i.execute(new op(F));
                if (this.g) {
                    if (((oo) this.b).q(this, this.f) < 0 || this.f) {
                        z = true;
                    }
                    this.f = z;
                    return;
                }
                ((oo) this.b).r(this, this.h);
                return;
            }
            if (this.g) {
                this.g = false;
                if (getIntent() != null) {
                    getIntent().removeExtra("EXTRA_KEY_LIST_PATHS");
                }
                mr.d(getString(R.string.ho));
            }
            if (f.i(this) && hm.b(this, "android.permission.WRITE_EXTERNAL_STORAGE") && this.k) {
                if (this.j) {
                    allowStorageAccessFragment = null;
                } else {
                    this.j = true;
                    allowStorageAccessFragment = androidx.core.app.b.D0(this);
                }
                if (allowStorageAccessFragment != null) {
                    allowStorageAccessFragment.y1(new a());
                } else {
                    androidx.core.app.b.E0(this);
                }
            }
            f.g(this).edit().putBoolean("HasDeniedStorageAccess", true).apply();
            return;
        }
        super.onRequestPermissionsResult(i2, strArr, iArr);
    }

    /* access modifiers changed from: protected */
    @Override // com.camerasideas.collagemaker.activity.BaseMvpActivity
    public void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        em.h("MainActivity", "onRestoreInstanceState");
        this.f = com.camerasideas.collagemaker.appdata.a.e(bundle);
        this.e = com.camerasideas.collagemaker.appdata.a.f(bundle);
    }

    @Override // androidx.fragment.app.FragmentActivity, com.camerasideas.collagemaker.activity.BaseMvpActivity, com.camerasideas.collagemaker.activity.BaseActivity
    public void onResume() {
        super.onResume();
        boolean z = false;
        if (getIntent() != null && getIntent().getBooleanExtra("EXTRA_KEY_FROM_SHARE_ACTIVITY", false)) {
            z = true;
        }
        if (!z) {
            oo ooVar = (oo) this.b;
            Objects.requireNonNull(ooVar);
            em.h("ImageMainPresenter", "processFileSource:" + e.a());
            int a2 = e.a();
            if (a2 == 1) {
                em.h("TesterLog-Select Photo", "编辑页回退到图片单选界面");
                ooVar.r(this, 1);
            } else if (a2 == 2) {
                em.h("TesterLog-Select Photo", "编辑页回退到图片多选界面");
                ooVar.r(this, 2);
            }
            l.f.h(inshot.collage.adconfig.j.Picker);
            if (androidx.core.app.b.g(this)) {
                h.g.k(inshot.collage.adconfig.i.HomePage, this.mCardAdLayout);
            }
        }
    }

    /* access modifiers changed from: protected */
    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, com.camerasideas.collagemaker.activity.BaseMvpActivity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        this.s = true;
        bundle.remove("android:support:fragments");
        em.h("MainActivity", "onSaveInstanceState");
        bundle.putBoolean("HAS_REPORT_FEEDBACK", this.f);
        Uri uri = this.e;
        bundle.putString("IMAGE_PATH_FROM_CAMERA", uri != null ? uri.toString() : "");
    }

    @Override // com.camerasideas.collagemaker.activity.BaseActivity
    public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        if (TextUtils.equals(str, "SubscribePro") && androidx.core.app.b.d0(this)) {
            uq.t(this.mBtnPro, false);
        }
    }

    /* access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, com.camerasideas.collagemaker.activity.BaseActivity
    public void onStart() {
        super.onStart();
        int i2 = f.g(this).getInt("UserFlowState", -1);
        g gVar = g.HOME;
        if (i2 >= 0) {
            f.n(this, 100);
        } else {
            uq.m(this, gVar);
        }
    }

    /* Return type fixed from 'yn' to match base method */
    /* access modifiers changed from: protected */
    @Override // com.camerasideas.collagemaker.activity.BaseMvpActivity
    public oo p() {
        return new oo();
    }

    /* access modifiers changed from: protected */
    @Override // com.camerasideas.collagemaker.activity.BaseMvpActivity
    public int q() {
        return R.layout.a6;
    }

    /* access modifiers changed from: protected */
    @Override // com.camerasideas.collagemaker.activity.BaseMvpActivity
    public void r() {
    }

    @Override // com.camerasideas.collagemaker.activity.BaseActivity
    public void removeAd() {
        super.removeAd();
    }

    public void z(File file) {
        File[] listFiles;
        if (file.exists()) {
            if (file.isFile()) {
                this.m = file.length() + this.m;
            } else if (file.isDirectory() && (listFiles = file.listFiles()) != null) {
                for (File file2 : listFiles) {
                    z(file2);
                }
            }
        }
    }
}
