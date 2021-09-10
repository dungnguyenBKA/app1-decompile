package com.camerasideas.stackblur;

import android.content.Context;
import android.graphics.Bitmap;
import android.renderscript.RSRuntimeException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class c {
    static final ExecutorService d = Executors.newFixedThreadPool(1);
    private final Bitmap a;
    private Bitmap b;
    private a c;

    public c(Context context, Bitmap bitmap) {
        this.a = bitmap;
        try {
            this.c = new b(context);
        } catch (RSRuntimeException e) {
            e.printStackTrace();
            if (NativeBlurProcess.c()) {
                this.c = new NativeBlurProcess();
            } else {
                this.c = new JavaBlurProcess();
            }
        }
    }

    public Bitmap a(float f) {
        try {
            this.b = this.c.a(this.a, f);
        } catch (Exception e) {
            e.printStackTrace();
            if (this.c instanceof b) {
                Bitmap a2 = new NativeBlurProcess().a(this.a, f);
                this.b = a2;
                this.b = a2;
            }
        }
        return this.b;
    }
}
