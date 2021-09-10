package com.camerasideas.collagemaker.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Bundle;
import android.os.Process;
import com.camerasideas.collagemaker.appdata.e;
import com.camerasideas.collagemaker.appdata.f;
import com.google.firebase.crashlytics.FirebaseCrashlytics;
import com.zjsoft.baseadlib.b;
import inshot.collage.adconfig.a;
import java.util.ArrayList;
import java.util.List;
import java.util.TimeZone;
import java.util.UUID;

public class DummyActivity extends Activity {
    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Activity activity = e.b;
        if (activity != null) {
            activity.finish();
            e.b = null;
        }
        e.c = this;
        a.g(this);
        im.a();
        f.g(this).edit().putBoolean("hasInstagram", c2.r(this, "com.instagram.android")).apply();
        f.g(this).edit().putBoolean("hasFacebook", c2.r(this, "com.facebook.katana")).apply();
        f.g(this).edit().putBoolean("hasGooglePhotos", c2.r(this, "com.google.android.apps.photos")).apply();
        if (f.g(this).getBoolean("isNewUser", true) && f.g(this).getLong("FirstEnterTime", 0) == 0) {
            f.g(this).edit().putLong("FirstEnterTime", System.currentTimeMillis()).apply();
        }
        em.q(rq.i(this), "backgrounderaser");
        em.h("DummyActivity", "onCreate PID=" + Process.myPid());
        b.c cVar = new b.c();
        cVar.a = "https://ad.myinstashot.com/collagemaker";
        cVar.c = "pub-7943096714640626";
        cVar.b = c2.i(this);
        b.b(this, cVar);
        Context applicationContext = getApplicationContext();
        List<String> list = sq.a;
        try {
            new Thread(new oq(applicationContext)).start();
        } catch (Exception e) {
            e.printStackTrace();
        }
        int i = c2.i(this);
        if (f.g(this).getInt("CollageVersionCode", 0) < i) {
            if (f.d(this) > 1) {
                f.g(this).edit().putBoolean("isUpdateUser", true).apply();
                f.g(this).edit().putBoolean("NewDownloadUser", false).apply();
            } else {
                f.g(this).edit().putBoolean("NewDownloadUser", true).apply();
            }
            int i2 = f.g(this).getInt("CollageVersionCode", 0);
            c2.i(this);
            em.h("Preferences", "onUpgrade oldVersion = " + i2);
            SharedPreferences.Editor edit = f.g(this).edit();
            if (i2 > 0) {
                if (i2 <= 6000) {
                    edit.putBoolean("EnableShowTextTagNew", true);
                } else if (i2 < 9000) {
                    edit.putBoolean("EnableShowNewMarkMagic", true);
                    edit.putBoolean("EnableShowNewMarkSmooth", true);
                }
            }
            edit.apply();
        } else {
            f.g(this).edit().putBoolean("isUpdateUser", false).apply();
        }
        f.g(this).edit().putInt("CollageVersionCode", i).apply();
        if (f.g(this).getInt("NewUserVersion", -1) == -1) {
            f.g(this).edit().putInt("NewUserVersion", f.h(this).equals("") ? i : 1).apply();
        }
        if (f.h(this).equals("")) {
            f.g(this).edit().putInt("ShowAnimCircleVersion", i).apply();
            f.g(this).edit().putString("uuid", UUID.randomUUID().toString()).apply();
        }
        try {
            FirebaseCrashlytics.getInstance().setUserId(f.h(this));
        } catch (Exception e2) {
            em.h("DummyActivity", "Crashlytics e : " + e2);
            e2.printStackTrace();
        }
        StringBuilder q = ic.q("AppVer:");
        q.append(c2.j(this));
        q.append(",OS:");
        q.append(Build.VERSION.RELEASE);
        q.append(",Model:");
        q.append(Build.MODEL);
        q.append(",TimeZone:");
        q.append(TimeZone.getDefault().getDisplayName(false, 0));
        q.append(",Space:");
        dq.a(this);
        q.append(androidx.core.app.b.C(dq.e));
        q.append(",ID:");
        q.append(f.h(this));
        q.append(",time:");
        q.append(System.currentTimeMillis());
        em.h("DummyActivity", q.toString());
        if (rq.k(this)) {
            em.h("DummyActivity", "isAppNewUser");
        }
        if (f.g(this).getInt("ShowAnimCircleVersion", -1) < c2.i(this)) {
            em.h("DummyActivity", "isUpgradedUser");
            f.g(this).edit().putBoolean("enabledShowAnimCircle", true).apply();
        }
        Intent intent = getIntent();
        if (intent == null || !intent.getBooleanExtra("EXTRA_KEY_FROM_SHARE_ACTIVITY", false)) {
            Intent intent2 = new Intent(this, MainActivity.class);
            intent2.putExtra("fromDummyActivity", true);
            if (e.a) {
                intent2.setFlags(67108864);
                e.a = false;
            }
            startActivity(intent2);
            finish();
            return;
        }
        em.h("TesterLog-Share", "从分享入口进入");
        ArrayList<String> stringArrayListExtra = intent.getStringArrayListExtra("EXTRA_KEY_LIST_PATHS");
        boolean booleanExtra = intent.getBooleanExtra("EXTRA_KEY_URI_SUPPORTED", false);
        String stringExtra = intent.getStringExtra("EXTRA_KEY_REPORT_MSG");
        String stringExtra2 = intent.getStringExtra("EXTRA_KEY_SUBJECT_MSG");
        int intExtra = intent.getIntExtra("EXTRA_KEY_MODE", 0);
        Intent intent3 = new Intent(this, MainActivity.class);
        intent3.setFlags(67108864);
        intent3.putExtra("EXTRA_KEY_FROM_SHARE_ACTIVITY", true);
        intent3.putStringArrayListExtra("EXTRA_KEY_LIST_PATHS", stringArrayListExtra);
        intent3.putExtra("EXTRA_KEY_URI_SUPPORTED", booleanExtra);
        intent3.putExtra("EXTRA_KEY_REPORT_MSG", stringExtra);
        intent3.putExtra("EXTRA_KEY_SUBJECT_MSG", stringExtra2);
        intent3.putExtra("EXTRA_KEY_MODE", intExtra);
        startActivity(intent3);
        finish();
    }
}
