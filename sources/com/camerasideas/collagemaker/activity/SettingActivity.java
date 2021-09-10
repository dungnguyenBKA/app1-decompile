package com.camerasideas.collagemaker.activity;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.appcompat.widget.AppCompatRadioButton;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.m;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.camerasideas.collagemaker.activity.adapter.q;
import com.camerasideas.collagemaker.activity.adapter.s;
import com.camerasideas.collagemaker.activity.fragment.FragmentLanguageDialog;
import com.camerasideas.collagemaker.activity.fragment.commonfragment.ConsumePurchasesFragment;
import com.camerasideas.collagemaker.activity.fragment.commonfragment.SubscribeProFragment;
import com.camerasideas.collagemaker.activity.fragment.commonfragment.p;
import com.camerasideas.collagemaker.appdata.b;
import com.camerasideas.collagemaker.appdata.c;
import com.camerasideas.collagemaker.appdata.f;
import com.vungle.warren.error.VungleException;
import com.vungle.warren.model.ReportDBAdapter;
import com.vungle.warren.omsdk.BuildConfig;
import inshot.collage.adconfig.d;
import java.util.Objects;
import org.apache.http.HttpHost;
import photoeditor.cutout.backgrounderaser.R;

public class SettingActivity extends BaseActivity {
    public static final /* synthetic */ int d = 0;
    private RecyclerView b;
    private s c;

    @Override // com.camerasideas.collagemaker.activity.BaseActivity
    public String getTAG() {
        return "SettingActivity";
    }

    public void o(RecyclerView recyclerView, RecyclerView.b0 b0Var, int i, View view) {
        s sVar;
        int i2 = -1;
        if (i != -1 && (sVar = this.c) != null) {
            if (i >= 0 && i < sVar.B().size()) {
                i2 = ((q) sVar.B().get(i)).e();
            }
            if (i2 == 1) {
                FragmentLanguageDialog fragmentLanguageDialog = new FragmentLanguageDialog();
                getString(R.string.ar);
                fragmentLanguageDialog.v1(new t0(this, fragmentLanguageDialog));
                fragmentLanguageDialog.t1(getSupportFragmentManager(), "");
            } else if (i2 == 11) {
                em.h("TesterLog-Setting", "点击隐私政策");
                Intent intent = new Intent(this, PolicyActivity.class);
                String str = b.k;
                if (cc0.f(this) == 0) {
                    str = b.n;
                }
                if ("ko".equals(c2.o(this))) {
                    str = b.m;
                } else if ("ja".equals(c2.o(this))) {
                    str = b.l;
                }
                if (!str.startsWith("https")) {
                    str.replace(HttpHost.DEFAULT_SCHEME_NAME, "https");
                }
                intent.putExtra(ReportDBAdapter.ReportColumns.COLUMN_URL, str);
                intent.putExtra("color", -16777216);
                intent.putExtra("email", "collageteam.feedback@gmail.com");
                intent.putExtra("title", getString(R.string.he));
                startActivity(intent);
            } else if (i2 == 6) {
                ((sm) Fragment.Y(this, p.class.getName(), null)).x1(getSupportFragmentManager());
            } else if (i2 == 7) {
                Intent intent2 = new Intent("android.intent.action.SEND");
                intent2.setType("text/html");
                intent2.putExtra("android.intent.extra.SUBJECT", getString(R.string.hm));
                intent2.putExtra("android.intent.extra.TEXT", Html.fromHtml(getString(R.string.hj, new Object[]{"<br/><br/><a href='https://play.google.com/store/apps/details?id=photoeditor.cutout.backgrounderaser'/>https://play.google.com/store/apps/details?id=photoeditor.cutout.backgrounderaser"})));
                if (c2.r(this, "com.google.android.gm")) {
                    intent2.setPackage("com.google.android.gm");
                    intent2.setFlags(268435456);
                }
                startActivity(Intent.createChooser(intent2, getResources().getString(R.string.hm)));
            } else if (i2 != 8) {
                switch (i2) {
                    case VungleException.NO_SPACE_TO_DOWNLOAD_ASSETS /*{ENCODED_INT: 19}*/:
                        try {
                            m a = getSupportFragmentManager().a();
                            a.b(R.id.ho, Fragment.Y(this, ConsumePurchasesFragment.class.getName(), null), ConsumePurchasesFragment.class.getName());
                            a.e(ConsumePurchasesFragment.class.getName());
                            a.g();
                            return;
                        } catch (Exception e) {
                            e.printStackTrace();
                            return;
                        }
                    case 20:
                        String[] strArr = {"Admob", "Fan", BuildConfig.PARTNER_NAME};
                        new AlertDialog.Builder(this).setMultiChoiceItems(strArr, new boolean[]{d.a(this, strArr[0]), d.a(this, strArr[1]), d.a(this, strArr[2])}, new s0(this, strArr)).setPositiveButton(" 确 定 ", n0.b).show();
                        return;
                    case VungleException.SERVER_ERROR /*{ENCODED_INT: 21}*/:
                        View inflate = LayoutInflater.from(this).inflate(R.layout.b5, (ViewGroup) null);
                        View findViewById = inflate.findViewById(R.id.dv);
                        AppCompatRadioButton appCompatRadioButton = (AppCompatRadioButton) inflate.findViewById(R.id.nw);
                        View findViewById2 = inflate.findViewById(R.id.ea);
                        AppCompatRadioButton appCompatRadioButton2 = (AppCompatRadioButton) inflate.findViewById(R.id.ny);
                        if (f.g(this).getBoolean("EnableHighResolution", false)) {
                            appCompatRadioButton.setChecked(true);
                        } else {
                            appCompatRadioButton2.setChecked(true);
                        }
                        AlertDialog show = new AlertDialog.Builder(this).setView(inflate).show();
                        if (show.getWindow() != null) {
                            Window window = show.getWindow();
                            double h = (double) c2.h(this);
                            Double.isNaN(h);
                            Double.isNaN(h);
                            Double.isNaN(h);
                            window.setLayout((int) (h * 0.9d), -2);
                        }
                        findViewById.setOnClickListener(new q0(this, appCompatRadioButton, appCompatRadioButton2, show));
                        findViewById2.setOnClickListener(new o0(this, appCompatRadioButton, appCompatRadioButton2, show));
                        return;
                    case VungleException.SERVER_TEMPORARY_UNAVAILABLE /*{ENCODED_INT: 22}*/:
                        if (!androidx.core.app.b.d0(this)) {
                            Bundle bundle = new Bundle();
                            bundle.putString("PRO_FROM", c.Settings.toString());
                            androidx.core.app.b.s(this, SubscribeProFragment.class, bundle, R.id.hn, true, true);
                            return;
                        }
                        return;
                    case VungleException.ASSET_DOWNLOAD_RECOVERABLE /*{ENCODED_INT: 23}*/:
                        new AlertDialog.Builder(this).setSingleChoiceItems(new String[]{"关闭", "true", "false"}, f.g(this).getInt("ABTestFlag", 0), new r0(this)).setPositiveButton(" 确 定 ", l0.b).show();
                        return;
                    default:
                        return;
                }
            } else if (uq.c(this)) {
                uq.h(this);
            } else {
                c2.q(this, getPackageName());
            }
        }
    }

    /* access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity
    public void onActivityResult(int i, int i2, Intent intent) {
        Bundle extras;
        super.onActivityResult(i, i2, intent);
        if (i == 1 && intent != null && (extras = intent.getExtras()) != null) {
            dq.a(this);
            String str = dq.e;
            if (!str.equals(extras.getString("file"))) {
                StringBuilder q = ic.q("用户选取新的保存路径：");
                q.append(extras.getString("file"));
                em.h("TesterLog-Setting", q.toString());
                f.g(this).edit().putString("savePath", extras.getString("file")).apply();
                f.g(this).edit().putBoolean("IsSavePathChanged", true).apply();
                s sVar = new s(this, q.d(this));
                this.c = sVar;
                this.b.setAdapter(sVar);
                return;
            }
            em.h("TesterLog-Setting", "用户没有选取新的保存路径，当前使用的保存路径：" + str);
        }
    }

    @Override // androidx.activity.ComponentActivity
    public void onBackPressed() {
        if (androidx.core.app.b.D(this) != 0) {
            super.onBackPressed();
        } else {
            return2MainActivity();
        }
    }

    /* access modifiers changed from: protected */
    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, com.camerasideas.collagemaker.activity.BaseActivity
    public void onCreate(Bundle bundle) {
        boolean z;
        super.onCreate(bundle);
        try {
            setContentView(R.layout.a7);
            if (Build.VERSION.SDK_INT > 21) {
                getWindow().setNavigationBarColor(-16777216);
            }
            z = false;
        } catch (Exception e) {
            e.printStackTrace();
            new vq(this).b();
            z = true;
        }
        if (!z) {
            findViewById(R.id.ie).setOnClickListener(new m0(this));
            RecyclerView recyclerView = (RecyclerView) findViewById(R.id.pu);
            this.b = recyclerView;
            recyclerView.setLayoutManager(new LinearLayoutManager(1, false));
            s sVar = new s(this, q.d(this));
            this.c = sVar;
            this.b.setAdapter(sVar);
            dm.d(this.b).e(new p0(this));
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.core.app.a.b
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        super.onRequestPermissionsResult(i, strArr, iArr);
        if (i == 2) {
            em.n("SettingActivity", "Received response for storage permissions request.");
            if (hm.e(iArr)) {
                yp F = yp.F();
                Objects.requireNonNull(F);
                ml.i.execute(new op(F));
                return;
            }
            if (f.i(this)) {
                hm.b(this, "android.permission.WRITE_EXTERNAL_STORAGE");
            }
            f.g(this).edit().putBoolean("HasDeniedStorageAccess", true).apply();
            return;
        }
        super.onRequestPermissionsResult(i, strArr, iArr);
    }

    @Override // androidx.fragment.app.FragmentActivity, com.camerasideas.collagemaker.activity.BaseActivity
    public void onResume() {
        super.onResume();
    }

    /* access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, com.camerasideas.collagemaker.activity.BaseActivity
    public void onStart() {
        super.onStart();
        uq.n(this, "PV", "SettingPage");
    }

    public void p(AppCompatRadioButton appCompatRadioButton, AppCompatRadioButton appCompatRadioButton2, Dialog dialog, View view) {
        f.g(this).edit().putBoolean("EnableHighResolution", true).apply();
        appCompatRadioButton.setChecked(true);
        appCompatRadioButton2.setChecked(false);
        dialog.dismiss();
        ((q) this.c.D(1)).g(getString(R.string.ch));
        this.c.f();
    }

    public void q(AppCompatRadioButton appCompatRadioButton, AppCompatRadioButton appCompatRadioButton2, Dialog dialog, View view) {
        f.g(this).edit().putBoolean("EnableHighResolution", false).apply();
        appCompatRadioButton.setChecked(false);
        appCompatRadioButton2.setChecked(true);
        dialog.dismiss();
        ((q) this.c.D(1)).g(getString(R.string.g9));
        this.c.f();
    }
}
