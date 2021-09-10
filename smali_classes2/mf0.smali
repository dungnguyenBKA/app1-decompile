.class public final Lmf0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(Ljava/util/concurrent/Callable;)Lxd0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Lxd0;",
            ">;)",
            "Lxd0;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "Scheduler Callable result can\'t be null"

    .line 2
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    check-cast p0, Lxd0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 4
    invoke-static {p0}, Lkf0;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static b(Ljava/util/concurrent/Callable;)Lxd0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Lxd0;",
            ">;)",
            "Lxd0;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lmf0;->a(Ljava/util/concurrent/Callable;)Lxd0;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/util/concurrent/Callable;)Lxd0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Lxd0;",
            ">;)",
            "Lxd0;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lmf0;->a(Ljava/util/concurrent/Callable;)Lxd0;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/util/concurrent/Callable;)Lxd0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Lxd0;",
            ">;)",
            "Lxd0;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lmf0;->a(Ljava/util/concurrent/Callable;)Lxd0;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/util/concurrent/Callable;)Lxd0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Lxd0;",
            ">;)",
            "Lxd0;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lmf0;->a(Ljava/util/concurrent/Callable;)Lxd0;

    move-result-object p0

    return-object p0
.end method

.method public static f(Ljava/lang/Throwable;)V
    .locals 2

    if-nez p0, :cond_0

    .line 1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "onError called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 2
    :cond_0
    instance-of v0, p0, Lfe0;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    instance-of v0, p0, Ljava/lang/IllegalStateException;

    if-eqz v0, :cond_2

    goto :goto_0

    .line 4
    :cond_2
    instance-of v0, p0, Ljava/lang/NullPointerException;

    if-eqz v0, :cond_3

    goto :goto_0

    .line 5
    :cond_3
    instance-of v0, p0, Ljava/lang/IllegalArgumentException;

    if-eqz v0, :cond_4

    goto :goto_0

    .line 6
    :cond_4
    instance-of v0, p0, Lee0;

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_6

    .line 7
    new-instance v0, Lhe0;

    invoke-direct {v0, p0}, Lhe0;-><init>(Ljava/lang/Throwable;)V

    move-object p0, v0

    .line 8
    :cond_6
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 9
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    .line 11
    invoke-interface {v1, v0, p0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method
