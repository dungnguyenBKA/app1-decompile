.class public final Lh10;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/concurrent/ExecutorService;

.field public static final synthetic b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "awaitEvenIfOnMainThread task continuation executor"

    .line 1
    invoke-static {v0}, Lr00;->a(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lh10;->a:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static a(Lkw;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkw<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 2
    sget-object v1, Lh10;->a:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0}, Lf10;->a(Ljava/util/concurrent/CountDownLatch;)Ldw;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lkw;->g(Ljava/util/concurrent/Executor;Ldw;)Lkw;

    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_0

    const-wide/16 v1, 0x4

    .line 4
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 6
    :goto_0
    invoke-virtual {p0}, Lkw;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p0}, Lkw;->j()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 8
    :cond_1
    invoke-virtual {p0}, Lkw;->k()Z

    move-result v0

    if-nez v0, :cond_3

    .line 9
    invoke-virtual {p0}, Lkw;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lkw;->i()Ljava/lang/Exception;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 11
    :cond_2
    new-instance p0, Ljava/util/concurrent/TimeoutException;

    invoke-direct {p0}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw p0

    .line 12
    :cond_3
    new-instance p0, Ljava/util/concurrent/CancellationException;

    const-string v0, "Task is already canceled"

    invoke-direct {p0, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lkw;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Callable<",
            "Lkw<",
            "TT;>;>;)",
            "Lkw<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Llw;

    invoke-direct {v0}, Llw;-><init>()V

    .line 2
    new-instance v1, Lh10$a;

    invoke-direct {v1, p1, v0}, Lh10$a;-><init>(Ljava/util/concurrent/Callable;Llw;)V

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 3
    invoke-virtual {v0}, Llw;->a()Lkw;

    move-result-object p0

    return-object p0
.end method
