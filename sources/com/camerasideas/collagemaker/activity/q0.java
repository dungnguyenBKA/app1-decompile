package com.camerasideas.collagemaker.activity;

import android.app.Dialog;
import android.view.View;
import androidx.appcompat.widget.AppCompatRadioButton;

public final /* synthetic */ class q0 implements View.OnClickListener {
    public final /* synthetic */ SettingActivity b;
    public final /* synthetic */ AppCompatRadioButton c;
    public final /* synthetic */ AppCompatRadioButton d;
    public final /* synthetic */ Dialog e;

    public /* synthetic */ q0(SettingActivity settingActivity, AppCompatRadioButton appCompatRadioButton, AppCompatRadioButton appCompatRadioButton2, Dialog dialog) {
        this.b = settingActivity;
        this.c = appCompatRadioButton;
        this.d = appCompatRadioButton2;
        this.e = dialog;
    }

    public final void onClick(View view) {
        this.b.p(this.c, this.d, this.e, view);
    }
}
