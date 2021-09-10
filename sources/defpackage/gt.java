package defpackage;

import java.util.concurrent.Executor;

/* renamed from: gt  reason: default package */
class gt implements Executor {
    private final Executor b;

    /* renamed from: gt$a */
    static class a implements Runnable {
        private final Runnable b;

        a(Runnable runnable) {
            this.b = runnable;
        }

        public void run() {
            try {
                this.b.run();
            } catch (Exception e) {
                st.c("Executor", "Background execution failure.", e);
            }
        }
    }

    gt(Executor executor) {
        this.b = executor;
    }

    public void execute(Runnable runnable) {
        this.b.execute(new a(runnable));
    }
}
