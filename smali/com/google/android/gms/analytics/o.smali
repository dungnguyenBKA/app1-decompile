.class final Lcom/google/android/gms/analytics/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# static fields
.field private static final b:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/google/android/gms/analytics/o;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 3

    sget-object v0, Lcom/google/android/gms/analytics/o;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    const/16 v1, 0x17

    const-string v2, "measurement-"

    invoke-static {v1, v2, v0}, Lic;->C(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/analytics/p;

    .line 2
    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/analytics/p;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v1
.end method
