.class public final Ltg0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final g:Ljava/util/concurrent/Executor;


# instance fields
.field private final a:I

.field private final b:J

.field private final c:Ljava/lang/Runnable;

.field private final d:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lzh0;",
            ">;"
        }
    .end annotation
.end field

.field final e:Lai0;

.field f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x0

    const v2, 0x7fffffff

    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const/4 v0, 0x1

    const-string v7, "OkHttp ConnectionPool"

    .line 2
    invoke-static {v7, v0}, Lrh0;->z(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v8, Ltg0;->g:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v1, Ltg0$a;

    invoke-direct {v1, p0}, Ltg0$a;-><init>(Ltg0;)V

    iput-object v1, p0, Ltg0;->c:Ljava/lang/Runnable;

    .line 4
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, p0, Ltg0;->d:Ljava/util/Deque;

    .line 5
    new-instance v1, Lai0;

    invoke-direct {v1}, Lai0;-><init>()V

    iput-object v1, p0, Ltg0;->e:Lai0;

    const/4 v1, 0x5

    .line 6
    iput v1, p0, Ltg0;->a:I

    const-wide/16 v1, 0x5

    .line 7
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Ltg0;->b:J

    return-void
.end method

.method private e(Lzh0;J)I
    .locals 6

    .line 1
    iget-object v0, p1, Lzh0;->n:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 3
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/Reference;

    .line 4
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_1
    check-cast v3, Ldi0$a;

    const-string v4, "A connection to "

    .line 6
    invoke-static {v4}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lzh0;->m()Lnh0;

    move-result-object v5

    .line 7
    iget-object v5, v5, Lnh0;->a:Lkg0;

    .line 8
    iget-object v5, v5, Lkg0;->a:Ldh0;

    .line 9
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " was leaked. Did you forget to close a response body?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 10
    invoke-static {}, Lmj0;->h()Lmj0;

    move-result-object v5

    iget-object v3, v3, Ldi0$a;->a:Ljava/lang/Object;

    invoke-virtual {v5, v4, v3}, Lmj0;->o(Ljava/lang/String;Ljava/lang/Object;)V

    .line 11
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v3, 0x1

    .line 12
    iput-boolean v3, p1, Lzh0;->k:Z

    .line 13
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 14
    iget-wide v2, p0, Ltg0;->b:J

    sub-long/2addr p2, v2

    iput-wide p2, p1, Lzh0;->o:J

    return v1

    .line 15
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method


# virtual methods
.method a(J)J
    .locals 11

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Ltg0;->d:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/high16 v3, -0x8000000000000000L

    const/4 v5, 0x0

    const/4 v6, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lzh0;

    .line 4
    invoke-direct {p0, v7, p1, p2}, Ltg0;->e(Lzh0;J)I

    move-result v8

    if-lez v8, :cond_1

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 5
    iget-wide v8, v7, Lzh0;->o:J

    sub-long v8, p1, v8

    cmp-long v10, v8, v3

    if-lez v10, :cond_0

    move-object v2, v7

    move-wide v3, v8

    goto :goto_0

    .line 6
    :cond_2
    iget-wide p1, p0, Ltg0;->b:J

    cmp-long v0, v3, p1

    if-gez v0, :cond_6

    iget v0, p0, Ltg0;->a:I

    if-le v5, v0, :cond_3

    goto :goto_1

    :cond_3
    if-lez v5, :cond_4

    sub-long/2addr p1, v3

    .line 7
    monitor-exit p0

    return-wide p1

    :cond_4
    if-lez v6, :cond_5

    .line 8
    monitor-exit p0

    return-wide p1

    .line 9
    :cond_5
    iput-boolean v1, p0, Ltg0;->f:Z

    const-wide/16 p1, -0x1

    .line 10
    monitor-exit p0

    return-wide p1

    .line 11
    :cond_6
    :goto_1
    iget-object p1, p0, Ltg0;->d:Ljava/util/Deque;

    invoke-interface {p1, v2}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    .line 12
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-virtual {v2}, Lzh0;->n()Ljava/net/Socket;

    move-result-object p1

    invoke-static {p1}, Lrh0;->h(Ljava/net/Socket;)V

    const-wide/16 p1, 0x0

    return-wide p1

    :catchall_0
    move-exception p1

    .line 14
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method b(Lzh0;)Z
    .locals 1

    .line 1
    iget-boolean v0, p1, Lzh0;->k:Z

    if-nez v0, :cond_1

    iget v0, p0, Ltg0;->a:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, Ltg0;->d:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1
.end method

.method c(Lkg0;Ldi0;)Ljava/net/Socket;
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Ltg0;->d:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzh0;

    .line 2
    invoke-virtual {v1, p1, v2}, Lzh0;->i(Lkg0;Lnh0;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v1}, Lzh0;->k()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {p2}, Ldi0;->d()Lzh0;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 5
    invoke-virtual {p2, v1}, Ldi0;->k(Lzh0;)Ljava/net/Socket;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v2
.end method

.method d(Lkg0;Ldi0;Lnh0;)Lzh0;
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Ltg0;->d:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzh0;

    .line 2
    invoke-virtual {v1, p1, p3}, Lzh0;->i(Lkg0;Lnh0;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p2, v1, p1}, Ldi0;->a(Lzh0;Z)V

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method f(Lzh0;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Ltg0;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Ltg0;->f:Z

    .line 3
    sget-object v0, Ltg0;->g:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Ltg0;->c:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 4
    :cond_0
    iget-object v0, p0, Ltg0;->d:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    return-void
.end method
