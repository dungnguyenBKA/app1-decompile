package defpackage;

/* renamed from: ec0  reason: default package */
class ec0 implements Runnable {
    final /* synthetic */ dc0 b;

    ec0(dc0 dc0) {
        this.b = dc0;
    }

    public void run() {
        if (this.b.isShowing()) {
            this.b.dismiss();
        }
    }
}
