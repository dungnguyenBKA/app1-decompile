.class Lxi0;
.super Lqh0;
.source "SourceFile"


# instance fields
.field final synthetic c:Z

.field final synthetic d:Lej0;

.field final synthetic e:Lvi0$l;


# direct methods
.method varargs constructor <init>(Lvi0$l;Ljava/lang/String;[Ljava/lang/Object;ZLej0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lxi0;->e:Lvi0$l;

    iput-boolean p4, p0, Lxi0;->c:Z

    iput-object p5, p0, Lxi0;->d:Lej0;

    invoke-direct {p0, p2, p3}, Lqh0;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 12

    .line 1
    iget-object v0, p0, Lxi0;->e:Lvi0$l;

    iget-boolean v1, p0, Lxi0;->c:Z

    iget-object v2, p0, Lxi0;->d:Lej0;

    .line 2
    iget-object v3, v0, Lvi0$l;->d:Lvi0;

    iget-object v3, v3, Lvi0;->w:Lbj0;

    monitor-enter v3

    .line 3
    :try_start_0
    iget-object v4, v0, Lvi0$l;->d:Lvi0;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 4
    :try_start_1
    iget-object v5, v0, Lvi0$l;->d:Lvi0;

    iget-object v5, v5, Lvi0;->u:Lej0;

    invoke-virtual {v5}, Lej0;->d()I

    move-result v5

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, v0, Lvi0$l;->d:Lvi0;

    iget-object v1, v1, Lvi0;->u:Lej0;

    invoke-virtual {v1}, Lej0;->a()V

    .line 6
    :cond_0
    iget-object v1, v0, Lvi0$l;->d:Lvi0;

    iget-object v1, v1, Lvi0;->u:Lej0;

    invoke-virtual {v1, v2}, Lej0;->h(Lej0;)V

    .line 7
    iget-object v1, v0, Lvi0$l;->d:Lvi0;

    iget-object v1, v1, Lvi0;->u:Lej0;

    invoke-virtual {v1}, Lej0;->d()I

    move-result v1

    const/4 v2, -0x1

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    if-eq v1, v2, :cond_1

    if-eq v1, v5, :cond_1

    sub-int/2addr v1, v5

    int-to-long v1, v1

    .line 8
    iget-object v5, v0, Lvi0$l;->d:Lvi0;

    iget-object v5, v5, Lvi0;->d:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 9
    iget-object v5, v0, Lvi0$l;->d:Lvi0;

    iget-object v5, v5, Lvi0;->d:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    iget-object v6, v0, Lvi0$l;->d:Lvi0;

    iget-object v6, v6, Lvi0;->d:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    new-array v6, v6, [Laj0;

    invoke-interface {v5, v6}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, [Laj0;

    goto :goto_0

    :cond_1
    move-wide v1, v7

    .line 10
    :cond_2
    :goto_0
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 11
    :try_start_2
    iget-object v4, v0, Lvi0$l;->d:Lvi0;

    iget-object v5, v4, Lvi0;->w:Lbj0;

    iget-object v4, v4, Lvi0;->u:Lej0;

    invoke-virtual {v5, v4}, Lbj0;->j(Lej0;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    .line 12
    :catch_0
    :try_start_3
    iget-object v4, v0, Lvi0$l;->d:Lvi0;

    invoke-static {v4}, Lvi0;->j(Lvi0;)V

    .line 13
    :goto_1
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/4 v3, 0x0

    if-eqz v6, :cond_4

    .line 14
    array-length v4, v6

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v4, :cond_4

    aget-object v9, v6, v5

    .line 15
    monitor-enter v9

    .line 16
    :try_start_4
    iget-wide v10, v9, Laj0;->b:J

    add-long/2addr v10, v1

    iput-wide v10, v9, Laj0;->b:J

    cmp-long v10, v1, v7

    if-lez v10, :cond_3

    .line 17
    invoke-virtual {v9}, Ljava/lang/Object;->notifyAll()V

    .line 18
    :cond_3
    monitor-exit v9

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 19
    :cond_4
    invoke-static {}, Lvi0;->j0()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lyi0;

    const-string v4, "OkHttp %s settings"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, v0, Lvi0$l;->d:Lvi0;

    iget-object v6, v6, Lvi0;->e:Ljava/lang/String;

    aput-object v6, v5, v3

    invoke-direct {v2, v0, v4, v5}, Lyi0;-><init>(Lvi0$l;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_1
    move-exception v0

    .line 20
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0

    :catchall_2
    move-exception v0

    .line 21
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method
