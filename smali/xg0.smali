.class public final Lxg0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/concurrent/ExecutorService;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final b:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lih0$b;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lih0$b;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lih0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lxg0;->b:Ljava/util/Deque;

    .line 3
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lxg0;->c:Ljava/util/Deque;

    .line 4
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lxg0;->d:Ljava/util/Deque;

    return-void
.end method

.method private c(Ljava/util/Deque;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Deque<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-interface {p1, p2}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-direct {p0}, Lxg0;->f()Z

    move-result p1

    return-void

    .line 5
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Call wasn\'t in-flight!"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 6
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private f()Z
    .locals 15

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v1, p0, Lxg0;->b:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lih0$b;

    .line 5
    iget-object v3, p0, Lxg0;->c:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->size()I

    move-result v3

    const/16 v4, 0x40

    if-lt v3, v4, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    invoke-direct {p0, v2}, Lxg0;->g(Lih0$b;)I

    move-result v3

    const/4 v4, 0x5

    if-lt v3, v4, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 8
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object v3, p0, Lxg0;->c:Ljava/util/Deque;

    invoke-interface {v3, v2}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_2
    :goto_1
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 11
    :try_start_1
    iget-object v1, p0, Lxg0;->c:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    iget-object v2, p0, Lxg0;->d:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->size()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/2addr v1, v2

    :try_start_2
    monitor-exit p0

    const/4 v2, 0x0

    if-lez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    .line 12
    :goto_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v3, :cond_5

    .line 14
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lih0$b;

    .line 15
    monitor-enter p0

    .line 16
    :try_start_3
    iget-object v6, p0, Lxg0;->a:Ljava/util/concurrent/ExecutorService;

    if-nez v6, :cond_4

    .line 17
    new-instance v6, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v8, 0x0

    const v9, 0x7fffffff

    const-wide/16 v10, 0x3c

    sget-object v12, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v13, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v13}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string v7, "OkHttp Dispatcher"

    .line 18
    invoke-static {v7, v2}, Lrh0;->z(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v14

    move-object v7, v6

    invoke-direct/range {v7 .. v14}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v6, p0, Lxg0;->a:Ljava/util/concurrent/ExecutorService;

    .line 19
    :cond_4
    iget-object v6, p0, Lxg0;->a:Ljava/util/concurrent/ExecutorService;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    .line 20
    invoke-virtual {v5, v6}, Lih0$b;->b(Ljava/util/concurrent/ExecutorService;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :catchall_0
    move-exception v0

    .line 21
    monitor-exit p0

    throw v0

    :cond_5
    return v1

    :catchall_1
    move-exception v0

    .line 22
    :try_start_4
    monitor-exit p0

    throw v0

    :catchall_2
    move-exception v0

    .line 23
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method private g(Lih0$b;)I
    .locals 4

    .line 1
    iget-object v0, p0, Lxg0;->c:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lih0$b;

    .line 2
    iget-object v2, v2, Lih0$b;->d:Lih0;

    .line 3
    iget-boolean v3, v2, Lih0;->g:Z

    if-eqz v3, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v2, v2, Lih0;->f:Ljh0;

    .line 5
    iget-object v2, v2, Ljh0;->a:Ldh0;

    .line 6
    iget-object v2, v2, Ldh0;->d:Ljava/lang/String;

    .line 7
    iget-object v3, p1, Lih0$b;->d:Lih0;

    iget-object v3, v3, Lih0;->f:Ljh0;

    .line 8
    iget-object v3, v3, Ljh0;->a:Ldh0;

    .line 9
    iget-object v3, v3, Ldh0;->d:Ljava/lang/String;

    .line 10
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method


# virtual methods
.method a(Lih0$b;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lxg0;->b:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-direct {p0}, Lxg0;->f()Z

    return-void

    :catchall_0
    move-exception p1

    .line 5
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method declared-synchronized b(Lih0;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lxg0;->d:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method d(Lih0$b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lxg0;->c:Ljava/util/Deque;

    invoke-direct {p0, v0, p1}, Lxg0;->c(Ljava/util/Deque;Ljava/lang/Object;)V

    return-void
.end method

.method e(Lih0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lxg0;->d:Ljava/util/Deque;

    invoke-direct {p0, v0, p1}, Lxg0;->c(Ljava/util/Deque;Ljava/lang/Object;)V

    return-void
.end method
