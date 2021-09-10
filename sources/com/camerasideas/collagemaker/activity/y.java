package com.camerasideas.collagemaker.activity;

public final /* synthetic */ class y implements Runnable {
    public final /* synthetic */ x0 b;
    public final /* synthetic */ double c;

    public /* synthetic */ y(x0 x0Var, double d) {
        this.b = x0Var;
        this.c = d;
    }

    public final void run() {
        x0 x0Var = this.b;
        double d = this.c;
        if (x0Var.b.r != null && d < 100.0d) {
            x0Var.b.r.y1((int) d);
        }
    }
}
