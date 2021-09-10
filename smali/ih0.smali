.class final Lih0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Log0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lih0$b;
    }
.end annotation


# instance fields
.field final b:Lgh0;

.field final c:Lmi0;

.field final d:Lvj0;

.field private e:Lzg0;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final f:Ljh0;

.field final g:Z

.field private h:Z


# direct methods
.method private constructor <init>(Lgh0;Ljh0;Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lih0;->b:Lgh0;

    .line 3
    iput-object p2, p0, Lih0;->f:Ljh0;

    .line 4
    iput-boolean p3, p0, Lih0;->g:Z

    .line 5
    new-instance p2, Lmi0;

    invoke-direct {p2, p1, p3}, Lmi0;-><init>(Lgh0;Z)V

    iput-object p2, p0, Lih0;->c:Lmi0;

    .line 6
    new-instance p2, Lih0$a;

    invoke-direct {p2, p0}, Lih0$a;-><init>(Lih0;)V

    iput-object p2, p0, Lih0;->d:Lvj0;

    .line 7
    iget p1, p1, Lgh0;->x:I

    int-to-long v0, p1

    .line 8
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v0, v1, p1}, Lsk0;->g(JLjava/util/concurrent/TimeUnit;)Lsk0;

    return-void
.end method

.method static synthetic a(Lih0;)Lzg0;
    .locals 0

    .line 1
    iget-object p0, p0, Lih0;->e:Lzg0;

    return-object p0
.end method

.method static c(Lgh0;Ljh0;Z)Lih0;
    .locals 1

    .line 1
    new-instance v0, Lih0;

    invoke-direct {v0, p0, p1, p2}, Lih0;-><init>(Lgh0;Ljh0;Z)V

    .line 2
    iget-object p0, p0, Lgh0;->h:Lzg0$b;

    .line 3
    check-cast p0, Lah0;

    .line 4
    iget-object p0, p0, Lah0;->a:Lzg0;

    .line 5
    iput-object p0, v0, Lih0;->e:Lzg0;

    return-object v0
.end method


# virtual methods
.method b()Llh0;
    .locals 14

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v0, p0, Lih0;->b:Lgh0;

    .line 3
    iget-object v0, v0, Lgh0;->f:Ljava/util/List;

    .line 4
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 5
    iget-object v0, p0, Lih0;->c:Lmi0;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance v0, Lei0;

    iget-object v2, p0, Lih0;->b:Lgh0;

    .line 7
    iget-object v2, v2, Lgh0;->j:Lwg0;

    .line 8
    invoke-direct {v0, v2}, Lei0;-><init>(Lwg0;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    new-instance v0, Lth0;

    iget-object v2, p0, Lih0;->b:Lgh0;

    .line 10
    iget-object v2, v2, Lgh0;->k:Lwh0;

    .line 11
    invoke-direct {v0, v2}, Lth0;-><init>(Lwh0;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    new-instance v0, Lxh0;

    iget-object v2, p0, Lih0;->b:Lgh0;

    invoke-direct {v0, v2}, Lxh0;-><init>(Lgh0;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    iget-boolean v0, p0, Lih0;->g:Z

    if-nez v0, :cond_0

    .line 14
    iget-object v0, p0, Lih0;->b:Lgh0;

    .line 15
    iget-object v0, v0, Lgh0;->g:Ljava/util/List;

    .line 16
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 17
    :cond_0
    new-instance v0, Lfi0;

    iget-boolean v2, p0, Lih0;->g:Z

    invoke-direct {v0, v2}, Lfi0;-><init>(Z)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    new-instance v12, Lji0;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v13, p0, Lih0;->f:Ljh0;

    iget-object v8, p0, Lih0;->e:Lzg0;

    iget-object v0, p0, Lih0;->b:Lgh0;

    .line 19
    iget v9, v0, Lgh0;->y:I

    .line 20
    iget v10, v0, Lgh0;->z:I

    .line 21
    iget v11, v0, Lgh0;->A:I

    move-object v0, v12

    move-object v6, v13

    move-object v7, p0

    .line 22
    invoke-direct/range {v0 .. v11}, Lji0;-><init>(Ljava/util/List;Ldi0;Lgi0;Lzh0;ILjh0;Log0;Lzg0;III)V

    .line 23
    invoke-virtual {v12, v13}, Lji0;->f(Ljh0;)Llh0;

    move-result-object v0

    .line 24
    iget-object v1, p0, Lih0;->c:Lmi0;

    invoke-virtual {v1}, Lmi0;->d()Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 25
    :cond_1
    invoke-static {v0}, Lrh0;->g(Ljava/io/Closeable;)V

    .line 26
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lih0;->c:Lmi0;

    invoke-virtual {v0}, Lmi0;->a()V

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lih0;->b:Lgh0;

    iget-object v1, p0, Lih0;->f:Ljh0;

    iget-boolean v2, p0, Lih0;->g:Z

    .line 2
    new-instance v3, Lih0;

    invoke-direct {v3, v0, v1, v2}, Lih0;-><init>(Lgh0;Ljh0;Z)V

    .line 3
    iget-object v0, v0, Lgh0;->h:Lzg0$b;

    .line 4
    check-cast v0, Lah0;

    .line 5
    iget-object v0, v0, Lah0;->a:Lzg0;

    .line 6
    iput-object v0, v3, Lih0;->e:Lzg0;

    return-object v3
.end method

.method d(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2
    .param p1    # Ljava/io/IOException;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lih0;->d:Lvj0;

    invoke-virtual {v0}, Lvj0;->l()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {v0, p1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_1
    return-object v0
.end method

.method e()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p0, Lih0;->c:Lmi0;

    invoke-virtual {v1}, Lmi0;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "canceled "

    goto :goto_0

    :cond_0
    const-string v1, ""

    .line 3
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-boolean v1, p0, Lih0;->g:Z

    if-eqz v1, :cond_1

    const-string v1, "web socket"

    goto :goto_1

    :cond_1
    const-string v1, "call"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-object v1, p0, Lih0;->f:Ljh0;

    .line 6
    iget-object v1, v1, Ljh0;->a:Ldh0;

    .line 7
    invoke-virtual {v1}, Ldh0;->w()Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public execute()Llh0;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lih0;->h:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lih0;->h:Z

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    invoke-static {}, Lmj0;->h()Lmj0;

    move-result-object v0

    const-string v1, "response.body().close()"

    invoke-virtual {v0, v1}, Lmj0;->k(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lih0;->c:Lmi0;

    invoke-virtual {v1, v0}, Lmi0;->h(Ljava/lang/Object;)V

    .line 7
    iget-object v0, p0, Lih0;->d:Lvj0;

    invoke-virtual {v0}, Lvj0;->j()V

    .line 8
    iget-object v0, p0, Lih0;->e:Lzg0;

    .line 9
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :try_start_1
    iget-object v0, p0, Lih0;->b:Lgh0;

    .line 11
    iget-object v0, v0, Lgh0;->b:Lxg0;

    .line 12
    invoke-virtual {v0, p0}, Lxg0;->b(Lih0;)V

    .line 13
    invoke-virtual {p0}, Lih0;->b()Llh0;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    .line 14
    iget-object v1, p0, Lih0;->b:Lgh0;

    .line 15
    iget-object v1, v1, Lgh0;->b:Lxg0;

    .line 16
    invoke-virtual {v1, p0}, Lxg0;->e(Lih0;)V

    return-object v0

    .line 17
    :cond_0
    :try_start_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 18
    :try_start_3
    invoke-virtual {p0, v0}, Lih0;->d(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    .line 19
    iget-object v1, p0, Lih0;->e:Lzg0;

    .line 20
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 22
    :goto_0
    iget-object v1, p0, Lih0;->b:Lgh0;

    .line 23
    iget-object v1, v1, Lgh0;->b:Lxg0;

    .line 24
    invoke-virtual {v1, p0}, Lxg0;->e(Lih0;)V

    throw v0

    .line 25
    :cond_1
    :try_start_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already Executed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    .line 26
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public o(Lpg0;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lih0;->h:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lih0;->h:Z

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-static {}, Lmj0;->h()Lmj0;

    move-result-object v0

    const-string v1, "response.body().close()"

    invoke-virtual {v0, v1}, Lmj0;->k(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lih0;->c:Lmi0;

    invoke-virtual {v1, v0}, Lmi0;->h(Ljava/lang/Object;)V

    .line 7
    iget-object v0, p0, Lih0;->e:Lzg0;

    .line 8
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v0, p0, Lih0;->b:Lgh0;

    .line 10
    iget-object v0, v0, Lgh0;->b:Lxg0;

    .line 11
    new-instance v1, Lih0$b;

    invoke-direct {v1, p0, p1}, Lih0$b;-><init>(Lih0;Lpg0;)V

    invoke-virtual {v0, v1}, Lxg0;->a(Lih0$b;)V

    return-void

    .line 12
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already Executed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 13
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
