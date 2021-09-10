.class public final Lvi0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvi0$j;,
        Lvi0$l;,
        Lvi0$h;,
        Lvi0$i;,
        Lvi0$k;
    }
.end annotation


# static fields
.field private static final z:Ljava/util/concurrent/ExecutorService;


# instance fields
.field final b:Z

.field final c:Lvi0$j;

.field final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Laj0;",
            ">;"
        }
    .end annotation
.end field

.field final e:Ljava/lang/String;

.field f:I

.field g:I

.field private h:Z

.field private final i:Ljava/util/concurrent/ScheduledExecutorService;

.field private final j:Ljava/util/concurrent/ExecutorService;

.field final k:Ldj0;

.field private l:J

.field private m:J

.field private n:J

.field private o:J

.field private p:J

.field private q:J

.field r:J

.field s:J

.field t:Lej0;

.field final u:Lej0;

.field final v:Ljava/net/Socket;

.field final w:Lbj0;

.field final x:Lvi0$l;

.field final y:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    const-class v0, Lvi0;

    .line 2
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const/4 v1, 0x1

    const-string v8, "OkHttp Http2Connection"

    .line 3
    invoke-static {v8, v1}, Lrh0;->z(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lvi0;->z:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method constructor <init>(Lvi0$h;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, v0, Lvi0;->d:Ljava/util/Map;

    const-wide/16 v2, 0x0

    .line 3
    iput-wide v2, v0, Lvi0;->l:J

    .line 4
    iput-wide v2, v0, Lvi0;->m:J

    .line 5
    iput-wide v2, v0, Lvi0;->n:J

    .line 6
    iput-wide v2, v0, Lvi0;->o:J

    .line 7
    iput-wide v2, v0, Lvi0;->p:J

    .line 8
    iput-wide v2, v0, Lvi0;->q:J

    .line 9
    iput-wide v2, v0, Lvi0;->r:J

    .line 10
    new-instance v2, Lej0;

    invoke-direct {v2}, Lej0;-><init>()V

    iput-object v2, v0, Lvi0;->t:Lej0;

    .line 11
    new-instance v2, Lej0;

    invoke-direct {v2}, Lej0;-><init>()V

    iput-object v2, v0, Lvi0;->u:Lej0;

    .line 12
    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v3, v0, Lvi0;->y:Ljava/util/Set;

    .line 13
    sget-object v3, Ldj0;->a:Ldj0;

    iput-object v3, v0, Lvi0;->k:Ldj0;

    const/4 v3, 0x1

    .line 14
    iput-boolean v3, v0, Lvi0;->b:Z

    .line 15
    iget-object v4, v1, Lvi0$h;->e:Lvi0$j;

    iput-object v4, v0, Lvi0;->c:Lvi0$j;

    .line 16
    iput v3, v0, Lvi0;->g:I

    const/4 v4, 0x3

    .line 17
    iput v4, v0, Lvi0;->g:I

    const/4 v4, 0x7

    .line 18
    iget-object v5, v0, Lvi0;->t:Lej0;

    const/high16 v6, 0x1000000

    invoke-virtual {v5, v4, v6}, Lej0;->i(II)Lej0;

    .line 19
    iget-object v5, v1, Lvi0$h;->b:Ljava/lang/String;

    iput-object v5, v0, Lvi0;->e:Ljava/lang/String;

    .line 20
    new-instance v6, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-array v7, v3, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v5, v7, v13

    const-string v8, "OkHttp %s Writer"

    .line 21
    invoke-static {v8, v7}, Lrh0;->o(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v13}, Lrh0;->z(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    invoke-direct {v6, v3, v7}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    iput-object v6, v0, Lvi0;->i:Ljava/util/concurrent/ScheduledExecutorService;

    .line 22
    iget v7, v1, Lvi0$h;->f:I

    if-eqz v7, :cond_0

    .line 23
    new-instance v7, Lvi0$i;

    invoke-direct {v7, v0}, Lvi0$i;-><init>(Lvi0;)V

    iget v8, v1, Lvi0$h;->f:I

    int-to-long v10, v8

    sget-object v12, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v8, v10

    invoke-virtual/range {v6 .. v12}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 24
    :cond_0
    new-instance v6, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v15, 0x0

    const/16 v16, 0x1

    const-wide/16 v17, 0x3c

    sget-object v19, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v20, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct/range {v20 .. v20}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v5, v7, v13

    const-string v5, "OkHttp %s Push Observer"

    .line 25
    invoke-static {v5, v7}, Lrh0;->o(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lrh0;->z(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v21

    move-object v14, v6

    invoke-direct/range {v14 .. v21}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v6, v0, Lvi0;->j:Ljava/util/concurrent/ExecutorService;

    const v5, 0xffff

    .line 26
    invoke-virtual {v2, v4, v5}, Lej0;->i(II)Lej0;

    const/4 v4, 0x5

    const/16 v5, 0x4000

    .line 27
    invoke-virtual {v2, v4, v5}, Lej0;->i(II)Lej0;

    .line 28
    invoke-virtual {v2}, Lej0;->d()I

    move-result v2

    int-to-long v4, v2

    iput-wide v4, v0, Lvi0;->s:J

    .line 29
    iget-object v2, v1, Lvi0$h;->a:Ljava/net/Socket;

    iput-object v2, v0, Lvi0;->v:Ljava/net/Socket;

    .line 30
    new-instance v2, Lbj0;

    iget-object v4, v1, Lvi0$h;->d:Lyj0;

    invoke-direct {v2, v4, v3}, Lbj0;-><init>(Lyj0;Z)V

    iput-object v2, v0, Lvi0;->w:Lbj0;

    .line 31
    new-instance v2, Lvi0$l;

    new-instance v4, Lzi0;

    iget-object v1, v1, Lvi0$h;->c:Lzj0;

    invoke-direct {v4, v1, v3}, Lzi0;-><init>(Lzj0;Z)V

    invoke-direct {v2, v0, v4}, Lvi0$l;-><init>(Lvi0;Lzi0;)V

    iput-object v2, v0, Lvi0;->x:Lvi0$l;

    return-void
.end method

.method static synthetic L(Lvi0;)J
    .locals 4

    .line 1
    iget-wide v0, p0, Lvi0;->m:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lvi0;->m:J

    return-wide v0
.end method

.method static synthetic S(Lvi0;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lvi0;->l:J

    return-wide v0
.end method

.method static synthetic V(Lvi0;)J
    .locals 4

    .line 1
    iget-wide v0, p0, Lvi0;->l:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lvi0;->l:J

    return-wide v0
.end method

.method static synthetic b0(Lvi0;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lvi0;->h:Z

    return p0
.end method

.method static synthetic i0(Lvi0;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lvi0;->h:Z

    return p1
.end method

.method static j(Lvi0;)V
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    :try_start_0
    sget-object v0, Lqi0;->d:Lqi0;

    invoke-virtual {p0, v0, v0}, Lvi0;->n0(Lqi0;Lqi0;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method static synthetic j0()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 1
    sget-object v0, Lvi0;->z:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic k0(Lvi0;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    .line 1
    iget-object p0, p0, Lvi0;->i:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method static synthetic l0(Lvi0;)J
    .locals 4

    .line 1
    iget-wide v0, p0, Lvi0;->o:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lvi0;->o:J

    return-wide v0
.end method

.method static synthetic m0(Lvi0;)J
    .locals 4

    .line 1
    iget-wide v0, p0, Lvi0;->p:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lvi0;->p:J

    return-wide v0
.end method

.method static synthetic o(Lvi0;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lvi0;->m:J

    return-wide v0
.end method

.method private declared-synchronized t0(Lqh0;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lvi0;->h:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lvi0;->j:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public A0(Lqi0;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lvi0;->w:Lbj0;

    monitor-enter v0

    .line 2
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    iget-boolean v1, p0, Lvi0;->h:Z

    if-eqz v1, :cond_0

    .line 4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 5
    :try_start_3
    iput-boolean v1, p0, Lvi0;->h:Z

    .line 6
    iget v1, p0, Lvi0;->f:I

    .line 7
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 8
    :try_start_4
    iget-object v2, p0, Lvi0;->w:Lbj0;

    sget-object v3, Lrh0;->a:[B

    invoke-virtual {v2, v1, p1, v3}, Lbj0;->V(ILqi0;[B)V

    .line 9
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-void

    :catchall_0
    move-exception p1

    .line 10
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p1

    :catchall_1
    move-exception p1

    .line 11
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p1
.end method

.method public B0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lvi0;->w:Lbj0;

    invoke-virtual {v0}, Lbj0;->o()V

    .line 2
    iget-object v0, p0, Lvi0;->w:Lbj0;

    iget-object v1, p0, Lvi0;->t:Lej0;

    invoke-virtual {v0, v1}, Lbj0;->l0(Lej0;)V

    .line 3
    iget-object v0, p0, Lvi0;->t:Lej0;

    invoke-virtual {v0}, Lej0;->d()I

    move-result v0

    const v1, 0xffff

    if-eq v0, v1, :cond_0

    .line 4
    iget-object v2, p0, Lvi0;->w:Lbj0;

    const/4 v3, 0x0

    sub-int/2addr v0, v1

    int-to-long v0, v0

    invoke-virtual {v2, v3, v0, v1}, Lbj0;->n0(IJ)V

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lvi0;->x:Lvi0$l;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method declared-synchronized C0(J)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-wide v0, p0, Lvi0;->r:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lvi0;->r:J

    .line 2
    iget-object p1, p0, Lvi0;->t:Lej0;

    invoke-virtual {p1}, Lej0;->d()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-long p1, p1

    cmp-long v2, v0, p1

    if-ltz v2, :cond_0

    const/4 p1, 0x0

    .line 3
    iget-wide v0, p0, Lvi0;->r:J

    invoke-virtual {p0, p1, v0, v1}, Lvi0;->G0(IJ)V

    const-wide/16 p1, 0x0

    .line 4
    iput-wide p1, p0, Lvi0;->r:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public D0(IZLxj0;J)V
    .locals 8

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p4, v1

    if-nez v3, :cond_0

    .line 1
    iget-object p4, p0, Lvi0;->w:Lbj0;

    invoke-virtual {p4, p2, p1, p3, v0}, Lbj0;->L(ZILxj0;I)V

    return-void

    :cond_0
    :goto_0
    cmp-long v3, p4, v1

    if-lez v3, :cond_4

    .line 2
    monitor-enter p0

    .line 3
    :goto_1
    :try_start_0
    iget-wide v3, p0, Lvi0;->s:J

    cmp-long v5, v3, v1

    if-gtz v5, :cond_2

    .line 4
    iget-object v3, p0, Lvi0;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_1

    .line 6
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "stream closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :cond_2
    :try_start_1
    invoke-static {p4, p5, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v4, v3

    .line 8
    iget-object v3, p0, Lvi0;->w:Lbj0;

    invoke-virtual {v3}, Lbj0;->i0()I

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 9
    iget-wide v4, p0, Lvi0;->s:J

    int-to-long v6, v3

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lvi0;->s:J

    .line 10
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-long/2addr p4, v6

    .line 11
    iget-object v4, p0, Lvi0;->w:Lbj0;

    if-eqz p2, :cond_3

    cmp-long v5, p4, v1

    if-nez v5, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v4, v5, p1, p3, v3}, Lbj0;->L(ZILxj0;I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 12
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 13
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1

    .line 14
    :goto_3
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_4
    return-void
.end method

.method E0(ZII)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lvi0;->w:Lbj0;

    invoke-virtual {v0, p1, p2, p3}, Lbj0;->j0(ZII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2
    :catch_0
    :try_start_1
    sget-object p1, Lqi0;->d:Lqi0;

    invoke-virtual {p0, p1, p1}, Lvi0;->n0(Lqi0;Lqi0;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_0
    return-void
.end method

.method F0(ILqi0;)V
    .locals 8

    .line 1
    :try_start_0
    iget-object v0, p0, Lvi0;->i:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v7, Lvi0$a;

    const-string v3, "OkHttp %s stream %d"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lvi0;->e:Ljava/lang/String;

    aput-object v2, v4, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    move-object v1, v7

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lvi0$a;-><init>(Lvi0;Ljava/lang/String;[Ljava/lang/Object;ILqi0;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method G0(IJ)V
    .locals 9

    .line 1
    :try_start_0
    iget-object v0, p0, Lvi0;->i:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v8, Lvi0$b;

    const-string v3, "OkHttp Window Update %s stream %d"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lvi0;->e:Ljava/lang/String;

    aput-object v2, v4, v1

    const/4 v1, 0x1

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    move-object v1, v8

    move-object v2, p0

    move v5, p1

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lvi0$b;-><init>(Lvi0;Ljava/lang/String;[Ljava/lang/Object;IJ)V

    .line 3
    invoke-interface {v0, v8}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public close()V
    .locals 2

    .line 1
    sget-object v0, Lqi0;->c:Lqi0;

    sget-object v1, Lqi0;->h:Lqi0;

    invoke-virtual {p0, v0, v1}, Lvi0;->n0(Lqi0;Lqi0;)V

    return-void
.end method

.method public flush()V
    .locals 1

    .line 1
    iget-object v0, p0, Lvi0;->w:Lbj0;

    invoke-virtual {v0}, Lbj0;->flush()V

    return-void
.end method

.method n0(Lqi0;Lqi0;)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lvi0;->A0(Lqi0;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    :goto_0
    monitor-enter p0

    .line 3
    :try_start_1
    iget-object v1, p0, Lvi0;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    iget-object v0, p0, Lvi0;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lvi0;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Laj0;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Laj0;

    .line 5
    iget-object v1, p0, Lvi0;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 6
    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 7
    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 8
    :try_start_2
    invoke-virtual {v3, p2}, Laj0;->d(Lqi0;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v3

    if-eqz p1, :cond_1

    move-object p1, v3

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 9
    :cond_2
    :try_start_3
    iget-object p2, p0, Lvi0;->w:Lbj0;

    invoke-virtual {p2}, Lbj0;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception p2

    if-nez p1, :cond_3

    move-object p1, p2

    .line 10
    :cond_3
    :goto_3
    :try_start_4
    iget-object p2, p0, Lvi0;->v:Ljava/net/Socket;

    invoke-virtual {p2}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_3
    move-exception p1

    .line 11
    :goto_4
    iget-object p2, p0, Lvi0;->i:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p2}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 12
    iget-object p2, p0, Lvi0;->j:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    if-nez p1, :cond_4

    return-void

    .line 13
    :cond_4
    throw p1

    :catchall_0
    move-exception p1

    .line 14
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method

.method declared-synchronized o0(I)Laj0;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lvi0;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laj0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized p0(J)Z
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lvi0;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    monitor-exit p0

    return v1

    .line 2
    :cond_0
    :try_start_1
    iget-wide v2, p0, Lvi0;->o:J

    iget-wide v4, p0, Lvi0;->n:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    iget-wide v2, p0, Lvi0;->q:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v0, p1, v2

    if-ltz v0, :cond_1

    monitor-exit p0

    return v1

    :cond_1
    const/4 p1, 0x1

    .line 3
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized q0()I
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lvi0;->u:Lej0;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lej0;->e(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public r0(Ljava/util/List;Z)Laj0;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lri0;",
            ">;Z)",
            "Laj0;"
        }
    .end annotation

    xor-int/lit8 v6, p2, 0x1

    .line 1
    iget-object v7, p0, Lvi0;->w:Lbj0;

    monitor-enter v7

    .line 2
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    iget v0, p0, Lvi0;->g:I

    const v1, 0x3fffffff    # 1.9999999f

    if-le v0, v1, :cond_0

    .line 4
    sget-object v0, Lqi0;->g:Lqi0;

    invoke-virtual {p0, v0}, Lvi0;->A0(Lqi0;)V

    .line 5
    :cond_0
    iget-boolean v0, p0, Lvi0;->h:Z

    if-nez v0, :cond_5

    .line 6
    iget v8, p0, Lvi0;->g:I

    add-int/lit8 v0, v8, 0x2

    .line 7
    iput v0, p0, Lvi0;->g:I

    .line 8
    new-instance v9, Laj0;

    const/4 v5, 0x0

    const/4 v4, 0x0

    move-object v0, v9

    move v1, v8

    move-object v2, p0

    move v3, v6

    invoke-direct/range {v0 .. v5}, Laj0;-><init>(ILvi0;ZZLch0;)V

    if-eqz p2, :cond_2

    .line 9
    iget-wide v0, p0, Lvi0;->s:J

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-eqz p2, :cond_2

    iget-wide v0, v9, Laj0;->b:J

    cmp-long p2, v0, v2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p2, 0x1

    .line 10
    :goto_1
    invoke-virtual {v9}, Laj0;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11
    iget-object v0, p0, Lvi0;->d:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    :try_start_2
    iget-object v0, p0, Lvi0;->w:Lbj0;

    invoke-virtual {v0, v6, v8, p1}, Lbj0;->m0(ZILjava/util/List;)V

    .line 14
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p2, :cond_4

    .line 15
    iget-object p1, p0, Lvi0;->w:Lbj0;

    invoke-virtual {p1}, Lbj0;->flush()V

    :cond_4
    return-object v9

    .line 16
    :cond_5
    :try_start_3
    new-instance p1, Lpi0;

    invoke-direct {p1}, Lpi0;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    .line 17
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    :catchall_1
    move-exception p1

    .line 18
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method s0(ILzj0;IZ)V
    .locals 8

    .line 1
    new-instance v5, Lxj0;

    invoke-direct {v5}, Lxj0;-><init>()V

    int-to-long v0, p3

    .line 2
    invoke-interface {p2, v0, v1}, Lzj0;->c0(J)V

    .line 3
    invoke-interface {p2, v5, v0, v1}, Lrk0;->read(Lxj0;J)J

    .line 4
    invoke-virtual {v5}, Lxj0;->size()J

    move-result-wide v2

    cmp-long p2, v2, v0

    if-nez p2, :cond_0

    .line 5
    new-instance p2, Lvi0$f;

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v1, p0, Lvi0;->e:Ljava/lang/String;

    aput-object v1, v3, v0

    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    const-string v2, "OkHttp %s Push Data[%s]"

    move-object v0, p2

    move-object v1, p0

    move v4, p1

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lvi0$f;-><init>(Lvi0;Ljava/lang/String;[Ljava/lang/Object;ILxj0;IZ)V

    invoke-direct {p0, p2}, Lvi0;->t0(Lqh0;)V

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lxj0;->size()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p4, " != "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method u0(ILjava/util/List;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lri0;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v7, Lvi0$e;

    const-string v2, "OkHttp %s Push Headers[%s]"

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v1, p0, Lvi0;->e:Ljava/lang/String;

    aput-object v1, v3, v0

    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    move-object v0, v7

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lvi0$e;-><init>(Lvi0;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;Z)V

    invoke-direct {p0, v7}, Lvi0;->t0(Lqh0;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method v0(ILjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lri0;",
            ">;)V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lvi0;->y:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object p2, Lqi0;->d:Lqi0;

    invoke-virtual {p0, p1, p2}, Lvi0;->F0(ILqi0;)V

    .line 4
    monitor-exit p0

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lvi0;->y:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :try_start_1
    new-instance v0, Lvi0$d;

    const-string v4, "OkHttp %s Push Request[%s]"

    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lvi0;->e:Ljava/lang/String;

    aput-object v2, v5, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    move-object v2, v0

    move-object v3, p0

    move v6, p1

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lvi0$d;-><init>(Lvi0;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;)V

    invoke-direct {p0, v0}, Lvi0;->t0(Lqh0;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void

    :catchall_0
    move-exception p1

    .line 8
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method w0(ILqi0;)V
    .locals 7

    .line 1
    new-instance v6, Lvi0$g;

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    iget-object v0, p0, Lvi0;->e:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v0, v3, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v3, v1

    const-string v2, "OkHttp %s Push Reset[%s]"

    move-object v0, v6

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lvi0$g;-><init>(Lvi0;Ljava/lang/String;[Ljava/lang/Object;ILqi0;)V

    invoke-direct {p0, v6}, Lvi0;->t0(Lqh0;)V

    return-void
.end method

.method x0(I)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    and-int/2addr p1, v0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method declared-synchronized y0(I)Laj0;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lvi0;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laj0;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method z0()V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lvi0;->o:J

    iget-wide v2, p0, Lvi0;->n:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const-wide/16 v0, 0x1

    add-long/2addr v2, v0

    .line 3
    iput-wide v2, p0, Lvi0;->n:J

    .line 4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0x3b9aca00

    add-long/2addr v0, v2

    iput-wide v0, p0, Lvi0;->q:J

    .line 5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :try_start_1
    iget-object v0, p0, Lvi0;->i:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lvi0$c;

    const-string v2, "OkHttp %s ping"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lvi0;->e:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-direct {v1, p0, v2, v3}, Lvi0$c;-><init>(Lvi0;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void

    :catchall_0
    move-exception v0

    .line 7
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
