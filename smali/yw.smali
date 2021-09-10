.class final Lyw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic b:Lkw;

.field private final synthetic c:Lzw;


# direct methods
.method constructor <init>(Lzw;Lkw;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lyw;->c:Lzw;

    iput-object p2, p0, Lyw;->b:Lkw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lyw;->c:Lzw;

    invoke-static {v0}, Lzw;->c(Lzw;)Ljw;

    move-result-object v0

    iget-object v1, p0, Lyw;->b:Lkw;

    invoke-virtual {v1}, Lkw;->j()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljw;->a(Ljava/lang/Object;)Lkw;

    move-result-object v0
    :try_end_0
    .catch Liw; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lyw;->c:Lzw;

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Continuation returned null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lzw;->onFailure(Ljava/lang/Exception;)V

    return-void

    .line 3
    :cond_0
    sget-object v1, Lmw;->b:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lyw;->c:Lzw;

    invoke-virtual {v0, v1, v2}, Lkw;->e(Ljava/util/concurrent/Executor;Lhw;)Lkw;

    .line 4
    iget-object v2, p0, Lyw;->c:Lzw;

    invoke-virtual {v0, v1, v2}, Lkw;->c(Ljava/util/concurrent/Executor;Lgw;)Lkw;

    .line 5
    iget-object v2, p0, Lyw;->c:Lzw;

    invoke-virtual {v0, v1, v2}, Lkw;->a(Ljava/util/concurrent/Executor;Lfw;)Lkw;

    return-void

    :catch_0
    move-exception v0

    .line 6
    iget-object v1, p0, Lyw;->c:Lzw;

    invoke-virtual {v1, v0}, Lzw;->onFailure(Ljava/lang/Exception;)V

    return-void

    .line 7
    :catch_1
    iget-object v0, p0, Lyw;->c:Lzw;

    invoke-virtual {v0}, Lzw;->b()V

    return-void

    :catch_2
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Exception;

    if-eqz v1, :cond_1

    .line 9
    iget-object v1, p0, Lyw;->c:Lzw;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    invoke-virtual {v1, v0}, Lzw;->onFailure(Ljava/lang/Exception;)V

    return-void

    .line 10
    :cond_1
    iget-object v1, p0, Lyw;->c:Lzw;

    invoke-virtual {v1, v0}, Lzw;->onFailure(Ljava/lang/Exception;)V

    return-void
.end method
