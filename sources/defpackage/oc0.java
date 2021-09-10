package defpackage;

import java.util.Random;

/* renamed from: oc0  reason: default package */
public class oc0 {
    private static final Random a = new Random();

    public int a(int i) {
        return a.nextInt(i);
    }

    public float b(float f, float f2) {
        float min = Math.min(f, f2);
        return c(Math.max(f, f2) - min) + min;
    }

    public float c(float f) {
        return a.nextFloat() * f;
    }
}
