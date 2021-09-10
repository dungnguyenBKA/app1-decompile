package androidx.work;

public enum m {
    ENQUEUED,
    RUNNING,
    SUCCEEDED,
    FAILED,
    BLOCKED,
    CANCELLED;

    public boolean a() {
        return this == SUCCEEDED || this == FAILED || this == CANCELLED;
    }
}
