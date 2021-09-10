package com.camerasideas.collagemaker.activity.widget;

public final /* synthetic */ class c implements Runnable {
    public final /* synthetic */ StyleEditText b;
    public final /* synthetic */ float c;

    public /* synthetic */ c(StyleEditText styleEditText, float f) {
        this.b = styleEditText;
        this.c = f;
    }

    public final void run() {
        this.b.k(this.c);
    }
}
