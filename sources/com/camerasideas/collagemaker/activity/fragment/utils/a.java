package com.camerasideas.collagemaker.activity.fragment.utils;

import androidx.appcompat.app.AppCompatActivity;
import androidx.core.app.b;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.g;

public class a {
    public static boolean a(AppCompatActivity appCompatActivity, Class cls) {
        Fragment K = b.K(appCompatActivity, cls);
        return K != null && K.c0();
    }

    public static boolean b(g gVar, Class cls) {
        Fragment c = gVar.c(cls.getName());
        if (c == null) {
            c = null;
        }
        return c != null && c.c0();
    }
}
