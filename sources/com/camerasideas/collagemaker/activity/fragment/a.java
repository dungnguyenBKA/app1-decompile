package com.camerasideas.collagemaker.activity.fragment;

import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.os.LocaleList;
import android.util.DisplayMetrics;
import android.view.View;
import com.camerasideas.collagemaker.activity.SettingActivity;
import com.camerasideas.collagemaker.activity.fragment.FragmentLanguageDialog;
import com.camerasideas.collagemaker.activity.t0;
import java.util.Locale;
import java.util.Objects;

public final /* synthetic */ class a implements View.OnClickListener {
    public final /* synthetic */ FragmentLanguageDialog.b b;
    public final /* synthetic */ int c;

    public /* synthetic */ a(FragmentLanguageDialog.b bVar, int i) {
        this.b = bVar;
        this.c = i;
    }

    public final void onClick(View view) {
        FragmentLanguageDialog.b bVar = this.b;
        int i = this.c;
        t0 t0Var = (t0) FragmentLanguageDialog.this.g0;
        SettingActivity settingActivity = t0Var.a;
        FragmentLanguageDialog fragmentLanguageDialog = t0Var.b;
        Objects.requireNonNull(settingActivity);
        fragmentLanguageDialog.l1();
        em.h("TesterLog-Setting", "选中的语言：" + xq.b(Math.min(i, xq.f().length - 1)));
        xq.a(settingActivity, i);
        Resources resources = settingActivity.getApplicationContext().getResources();
        DisplayMetrics displayMetrics = resources.getDisplayMetrics();
        Configuration configuration = resources.getConfiguration();
        Locale c2 = xq.c(settingActivity, i);
        configuration.locale = c2;
        if (Build.VERSION.SDK_INT >= 24) {
            LocaleList localeList = new LocaleList(c2);
            LocaleList.setDefault(localeList);
            configuration.setLocales(localeList);
            settingActivity.getApplicationContext().createConfigurationContext(configuration);
            Locale.setDefault(c2);
        }
        resources.updateConfiguration(configuration, displayMetrics);
        settingActivity.startActivity(new Intent(settingActivity, settingActivity.getClass()));
        settingActivity.finish();
    }
}
