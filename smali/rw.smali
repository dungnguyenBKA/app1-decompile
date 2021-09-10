.class final Lrw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic b:Lkw;

.field private final synthetic c:Lpw;


# direct methods
.method constructor <init>(Lpw;Lkw;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrw;->c:Lpw;

    iput-object p2, p0, Lrw;->b:Lkw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lrw;->c:Lpw;

    invoke-static {v0}, Lpw;->c(Lpw;)Ldw;

    move-result-object v0

    iget-object v1, p0, Lrw;->b:Lkw;

    invoke-interface {v0, v1}, Ldw;->then(Lkw;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;
    :try_end_0
    .catch Liw; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lrw;->c:Lpw;

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Continuation returned null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lpw;->onFailure(Ljava/lang/Exception;)V

    return-void

    .line 3
    :cond_0
    sget-object v1, Lmw;->b:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lrw;->c:Lpw;

    invoke-virtual {v0, v1, v2}, Lkw;->e(Ljava/util/concurrent/Executor;Lhw;)Lkw;

    .line 4
    iget-object v2, p0, Lrw;->c:Lpw;

    invoke-virtual {v0, v1, v2}, Lkw;->c(Ljava/util/concurrent/Executor;Lgw;)Lkw;

    .line 5
    iget-object v2, p0, Lrw;->c:Lpw;

    invoke-virtual {v0, v1, v2}, Lkw;->a(Ljava/util/concurrent/Executor;Lfw;)Lkw;

    return-void

    :catch_0
    move-exception v0

    .line 6
    iget-object v1, p0, Lrw;->c:Lpw;

    invoke-static {v1}, Lpw;->d(Lpw;)Ldx;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldx;->p(Ljava/lang/Exception;)V

    return-void

    :catch_1
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Exception;

    if-eqz v1, :cond_1

    .line 8
    iget-object v1, p0, Lrw;->c:Lpw;

    invoke-static {v1}, Lpw;->d(Lpw;)Ldx;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    invoke-virtual {v1, v0}, Ldx;->p(Ljava/lang/Exception;)V

    return-void

    .line 9
    :cond_1
    iget-object v1, p0, Lrw;->c:Lpw;

    invoke-static {v1}, Lpw;->d(Lpw;)Ldx;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldx;->p(Ljava/lang/Exception;)V

    return-void
.end method
