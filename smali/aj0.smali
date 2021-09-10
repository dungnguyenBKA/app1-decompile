.class public final Laj0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laj0$c;,
        Laj0$a;,
        Laj0$b;
    }
.end annotation


# instance fields
.field a:J

.field b:J

.field final c:I

.field final d:Lvi0;

.field private final e:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lch0;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field private final g:Laj0$b;

.field final h:Laj0$a;

.field final i:Laj0$c;

.field final j:Laj0$c;

.field k:Lqi0;


# direct methods
.method constructor <init>(ILvi0;ZZLch0;)V
    .locals 3
    .param p5    # Lch0;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Laj0;->a:J

    .line 3
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Laj0;->e:Ljava/util/Deque;

    .line 4
    new-instance v1, Laj0$c;

    invoke-direct {v1, p0}, Laj0$c;-><init>(Laj0;)V

    iput-object v1, p0, Laj0;->i:Laj0$c;

    .line 5
    new-instance v1, Laj0$c;

    invoke-direct {v1, p0}, Laj0$c;-><init>(Laj0;)V

    iput-object v1, p0, Laj0;->j:Laj0$c;

    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Laj0;->k:Lqi0;

    const-string v1, "connection == null"

    .line 7
    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    iput p1, p0, Laj0;->c:I

    .line 9
    iput-object p2, p0, Laj0;->d:Lvi0;

    .line 10
    iget-object p1, p2, Lvi0;->u:Lej0;

    .line 11
    invoke-virtual {p1}, Lej0;->d()I

    move-result p1

    int-to-long v1, p1

    iput-wide v1, p0, Laj0;->b:J

    .line 12
    new-instance p1, Laj0$b;

    iget-object p2, p2, Lvi0;->t:Lej0;

    invoke-virtual {p2}, Lej0;->d()I

    move-result p2

    int-to-long v1, p2

    invoke-direct {p1, p0, v1, v2}, Laj0$b;-><init>(Laj0;J)V

    iput-object p1, p0, Laj0;->g:Laj0$b;

    .line 13
    new-instance p2, Laj0$a;

    invoke-direct {p2, p0}, Laj0$a;-><init>(Laj0;)V

    iput-object p2, p0, Laj0;->h:Laj0$a;

    .line 14
    iput-boolean p4, p1, Laj0$b;->f:Z

    .line 15
    iput-boolean p3, p2, Laj0$a;->d:Z

    if-eqz p5, :cond_0

    .line 16
    invoke-virtual {v0, p5}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 17
    :cond_0
    invoke-virtual {p0}, Laj0;->i()Z

    move-result p1

    if-eqz p1, :cond_2

    if-nez p5, :cond_1

    goto :goto_0

    .line 18
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "locally-initiated streams shouldn\'t have headers yet"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_2
    :goto_0
    invoke-virtual {p0}, Laj0;->i()Z

    move-result p1

    if-nez p1, :cond_4

    if-eqz p5, :cond_3

    goto :goto_1

    .line 20
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "remotely-initiated streams should have headers"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    return-void
.end method

.method static synthetic a(Laj0;)Ljava/util/Deque;
    .locals 0

    .line 1
    iget-object p0, p0, Laj0;->e:Ljava/util/Deque;

    return-object p0
.end method

.method private e(Lqi0;)Z
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Laj0;->k:Lqi0;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    monitor-exit p0

    return v1

    .line 4
    :cond_0
    iget-object v0, p0, Laj0;->g:Laj0$b;

    iget-boolean v0, v0, Laj0$b;->f:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Laj0;->h:Laj0$a;

    iget-boolean v0, v0, Laj0$a;->d:Z

    if-eqz v0, :cond_1

    .line 5
    monitor-exit p0

    return v1

    .line 6
    :cond_1
    iput-object p1, p0, Laj0;->k:Lqi0;

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 8
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    iget-object p1, p0, Laj0;->d:Lvi0;

    iget v0, p0, Laj0;->c:I

    invoke-virtual {p1, v0}, Lvi0;->y0(I)Laj0;

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method b()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Laj0;->g:Laj0$b;

    iget-boolean v1, v0, Laj0$b;->f:Z

    if-nez v1, :cond_1

    iget-boolean v0, v0, Laj0$b;->e:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Laj0;->h:Laj0$a;

    iget-boolean v1, v0, Laj0$a;->d:Z

    if-nez v1, :cond_0

    iget-boolean v0, v0, Laj0$a;->c:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0}, Laj0;->j()Z

    move-result v1

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 5
    sget-object v0, Lqi0;->h:Lqi0;

    invoke-virtual {p0, v0}, Laj0;->d(Lqi0;)V

    goto :goto_1

    :cond_2
    if-nez v1, :cond_3

    .line 6
    iget-object v0, p0, Laj0;->d:Lvi0;

    iget v1, p0, Laj0;->c:I

    invoke-virtual {v0, v1}, Lvi0;->y0(I)Laj0;

    :cond_3
    :goto_1
    return-void

    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method c()V
    .locals 2

    .line 1
    iget-object v0, p0, Laj0;->h:Laj0$a;

    iget-boolean v1, v0, Laj0$a;->c:Z

    if-nez v1, :cond_2

    .line 2
    iget-boolean v0, v0, Laj0$a;->d:Z

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Laj0;->k:Lqi0;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance v0, Lfj0;

    iget-object v1, p0, Laj0;->k:Lqi0;

    invoke-direct {v0, v1}, Lfj0;-><init>(Lqi0;)V

    throw v0

    .line 5
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d(Lqi0;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Laj0;->e(Lqi0;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Laj0;->d:Lvi0;

    iget v1, p0, Laj0;->c:I

    .line 3
    iget-object v0, v0, Lvi0;->w:Lbj0;

    invoke-virtual {v0, v1, p1}, Lbj0;->k0(ILqi0;)V

    return-void
.end method

.method public f(Lqi0;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Laj0;->e(Lqi0;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Laj0;->d:Lvi0;

    iget v1, p0, Laj0;->c:I

    invoke-virtual {v0, v1, p1}, Lvi0;->F0(ILqi0;)V

    return-void
.end method

.method public g()Lqk0;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Laj0;->f:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Laj0;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "reply before requesting the sink"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_1
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, p0, Laj0;->h:Laj0$a;

    return-object v0

    :catchall_0
    move-exception v0

    .line 6
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public h()Lrk0;
    .locals 1

    .line 1
    iget-object v0, p0, Laj0;->g:Laj0$b;

    return-object v0
.end method

.method public i()Z
    .locals 4

    .line 1
    iget v0, p0, Laj0;->c:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v3, p0, Laj0;->d:Lvi0;

    iget-boolean v3, v3, Lvi0;->b:Z

    if-ne v3, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public declared-synchronized j()Z
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Laj0;->k:Lqi0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    monitor-exit p0

    return v1

    .line 3
    :cond_0
    :try_start_1
    iget-object v0, p0, Laj0;->g:Laj0$b;

    iget-boolean v2, v0, Laj0$b;->f:Z

    if-nez v2, :cond_1

    iget-boolean v0, v0, Laj0$b;->e:Z

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Laj0;->h:Laj0$a;

    iget-boolean v2, v0, Laj0$a;->d:Z

    if-nez v2, :cond_2

    iget-boolean v0, v0, Laj0$a;->c:Z

    if-eqz v0, :cond_3

    :cond_2
    iget-boolean v0, p0, Laj0;->f:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    .line 4
    monitor-exit p0

    return v1

    :cond_3
    const/4 v0, 0x1

    .line 5
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method k(Lzj0;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Laj0;->g:Laj0$b;

    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2}, Laj0$b;->j(Lzj0;J)V

    return-void
.end method

.method l()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Laj0;->g:Laj0$b;

    const/4 v1, 0x1

    iput-boolean v1, v0, Laj0$b;->f:Z

    .line 3
    invoke-virtual {p0}, Laj0;->j()Z

    move-result v0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Laj0;->d:Lvi0;

    iget v1, p0, Laj0;->c:I

    invoke-virtual {v0, v1}, Lvi0;->y0(I)Laj0;

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method m(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lri0;",
            ">;)V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    const/4 v0, 0x1

    .line 2
    :try_start_0
    iput-boolean v0, p0, Laj0;->f:Z

    .line 3
    iget-object v0, p0, Laj0;->e:Ljava/util/Deque;

    invoke-static {p1}, Lrh0;->A(Ljava/util/List;)Lch0;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {p0}, Laj0;->j()Z

    move-result p1

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 7
    iget-object p1, p0, Laj0;->d:Lvi0;

    iget v0, p0, Laj0;->c:I

    invoke-virtual {p1, v0}, Lvi0;->y0(I)Laj0;

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 8
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized n()Lch0;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Laj0;->i:Laj0$c;

    invoke-virtual {v0}, Lvj0;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :goto_0
    :try_start_1
    iget-object v0, p0, Laj0;->e:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Laj0;->k:Lqi0;

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Laj0;->o()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4
    :cond_0
    :try_start_2
    iget-object v0, p0, Laj0;->i:Laj0$c;

    invoke-virtual {v0}, Laj0$c;->o()V

    .line 5
    iget-object v0, p0, Laj0;->e:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Laj0;->e:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch0;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-object v0

    .line 7
    :cond_1
    :try_start_3
    new-instance v0, Lfj0;

    iget-object v1, p0, Laj0;->k:Lqi0;

    invoke-direct {v0, v1}, Lfj0;-><init>(Lqi0;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 8
    iget-object v1, p0, Laj0;->i:Laj0$c;

    invoke-virtual {v1}, Laj0$c;->o()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method o()V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 2
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 3
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
.end method
