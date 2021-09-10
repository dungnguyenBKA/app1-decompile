.class final Lih0$b;
.super Lqh0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lih0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation


# instance fields
.field private final c:Lpg0;

.field final synthetic d:Lih0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lih0;

    return-void
.end method

.method constructor <init>(Lih0;Lpg0;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lih0$b;->d:Lih0;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 2
    iget-object p1, p1, Lih0;->f:Ljh0;

    .line 3
    iget-object p1, p1, Ljh0;->a:Ldh0;

    .line 4
    invoke-virtual {p1}, Ldh0;->w()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "OkHttp %s"

    .line 5
    invoke-direct {p0, p1, v0}, Lqh0;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    iput-object p2, p0, Lih0$b;->c:Lpg0;

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 5

    .line 1
    iget-object v0, p0, Lih0$b;->d:Lih0;

    iget-object v0, v0, Lih0;->d:Lvj0;

    invoke-virtual {v0}, Lvj0;->j()V

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lih0$b;->d:Lih0;

    invoke-virtual {v1}, Lih0;->b()Llh0;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x1

    .line 3
    :try_start_1
    iget-object v2, p0, Lih0$b;->c:Lpg0;

    iget-object v3, p0, Lih0$b;->d:Lih0;

    invoke-interface {v2, v3, v0}, Lpg0;->onResponse(Log0;Llh0;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    iget-object v0, p0, Lih0$b;->d:Lih0;

    iget-object v0, v0, Lih0;->b:Lgh0;

    .line 5
    :goto_0
    iget-object v0, v0, Lgh0;->b:Lxg0;

    .line 6
    invoke-virtual {v0, p0}, Lxg0;->d(Lih0$b;)V

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v1

    move-object v0, v1

    const/4 v1, 0x0

    .line 7
    :goto_1
    :try_start_2
    iget-object v2, p0, Lih0$b;->d:Lih0;

    .line 8
    iget-object v2, v2, Lih0;->c:Lmi0;

    invoke-virtual {v2}, Lmi0;->a()V

    if-nez v1, :cond_0

    .line 9
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "canceled due to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 10
    iget-object v2, p0, Lih0$b;->c:Lpg0;

    iget-object v3, p0, Lih0$b;->d:Lih0;

    invoke-interface {v2, v3, v1}, Lpg0;->onFailure(Log0;Ljava/io/IOException;)V

    .line 11
    :cond_0
    throw v0

    :catch_1
    move-exception v1

    move-object v0, v1

    const/4 v1, 0x0

    .line 12
    :goto_2
    iget-object v2, p0, Lih0$b;->d:Lih0;

    invoke-virtual {v2, v0}, Lih0;->d(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    if-eqz v1, :cond_1

    .line 13
    invoke-static {}, Lmj0;->h()Lmj0;

    move-result-object v1

    const/4 v2, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback failure for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lih0$b;->d:Lih0;

    invoke-virtual {v4}, Lih0;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lmj0;->n(ILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 14
    :cond_1
    iget-object v1, p0, Lih0$b;->d:Lih0;

    invoke-static {v1}, Lih0;->a(Lih0;)Lzg0;

    move-result-object v1

    .line 15
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v1, p0, Lih0$b;->c:Lpg0;

    iget-object v2, p0, Lih0$b;->d:Lih0;

    invoke-interface {v1, v2, v0}, Lpg0;->onFailure(Log0;Ljava/io/IOException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 17
    :goto_3
    iget-object v0, p0, Lih0$b;->d:Lih0;

    iget-object v0, v0, Lih0;->b:Lgh0;

    goto :goto_0

    :goto_4
    return-void

    :catchall_2
    move-exception v0

    iget-object v1, p0, Lih0$b;->d:Lih0;

    iget-object v1, v1, Lih0;->b:Lgh0;

    .line 18
    iget-object v1, v1, Lgh0;->b:Lxg0;

    .line 19
    invoke-virtual {v1, p0}, Lxg0;->d(Lih0$b;)V

    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method

.method b(Ljava/util/concurrent/ExecutorService;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-interface {p1, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    :try_start_1
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "executor rejected"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 4
    iget-object p1, p0, Lih0$b;->d:Lih0;

    invoke-static {p1}, Lih0;->a(Lih0;)Lzg0;

    move-result-object p1

    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object p1, p0, Lih0$b;->c:Lpg0;

    iget-object v1, p0, Lih0$b;->d:Lih0;

    invoke-interface {p1, v1, v0}, Lpg0;->onFailure(Log0;Ljava/io/IOException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    iget-object p1, p0, Lih0$b;->d:Lih0;

    iget-object p1, p1, Lih0;->b:Lgh0;

    .line 8
    iget-object p1, p1, Lgh0;->b:Lxg0;

    .line 9
    invoke-virtual {p1, p0}, Lxg0;->d(Lih0$b;)V

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lih0$b;->d:Lih0;

    iget-object v0, v0, Lih0;->b:Lgh0;

    .line 10
    iget-object v0, v0, Lgh0;->b:Lxg0;

    .line 11
    invoke-virtual {v0, p0}, Lxg0;->d(Lih0$b;)V

    throw p1
.end method
