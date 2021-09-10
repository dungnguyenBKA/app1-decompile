package defpackage;

/* renamed from: w30  reason: default package */
public class w30 implements z30 {
    private final z30[] a;
    private final x30 b;

    public w30(int i, z30... z30Arr) {
        this.a = z30Arr;
        this.b = new x30(i);
    }

    @Override // defpackage.z30
    public StackTraceElement[] a(StackTraceElement[] stackTraceElementArr) {
        if (stackTraceElementArr.length <= 1024) {
            return stackTraceElementArr;
        }
        z30[] z30Arr = this.a;
        StackTraceElement[] stackTraceElementArr2 = stackTraceElementArr;
        for (z30 z30 : z30Arr) {
            if (stackTraceElementArr2.length <= 1024) {
                break;
            }
            stackTraceElementArr2 = z30.a(stackTraceElementArr);
        }
        return stackTraceElementArr2.length > 1024 ? this.b.a(stackTraceElementArr2) : stackTraceElementArr2;
    }
}
