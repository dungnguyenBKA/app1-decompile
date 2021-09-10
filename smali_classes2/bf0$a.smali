.class final Lbf0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbf0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private final b:J

.field private final c:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lbf0$c;",
            ">;"
        }
    .end annotation
.end field

.field final d:Lae0;

.field private final e:Ljava/util/concurrent/ScheduledExecutorService;

.field private final f:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method constructor <init>(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p3, :cond_0

    .line 2
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x0

    :goto_0
    move-wide v4, p1

    iput-wide v4, p0, Lbf0$a;->b:J

    .line 3
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lbf0$a;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 4
    new-instance p1, Lae0;

    invoke-direct {p1}, Lae0;-><init>()V

    iput-object p1, p0, Lbf0$a;->d:Lae0;

    .line 5
    iput-object p4, p0, Lbf0$a;->g:Ljava/util/concurrent/ThreadFactory;

    const/4 p1, 0x0

    if-eqz p3, :cond_1

    const/4 p1, 0x1

    .line 6
    sget-object p2, Lbf0;->d:Lef0;

    invoke-static {p1, p2}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    .line 7
    sget-object v6, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v0, p1

    move-object v1, p0

    move-wide v2, v4

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p2

    goto :goto_1

    :cond_1
    move-object p2, p1

    .line 8
    :goto_1
    iput-object p1, p0, Lbf0$a;->e:Ljava/util/concurrent/ScheduledExecutorService;

    .line 9
    iput-object p2, p0, Lbf0$a;->f:Ljava/util/concurrent/Future;

    return-void
.end method


# virtual methods
.method a()Lbf0$c;
    .locals 2

    .line 1
    iget-object v0, p0, Lbf0$a;->d:Lae0;

    invoke-virtual {v0}, Lae0;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lbf0;->f:Lbf0$c;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lbf0$a;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lbf0$a;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbf0$c;

    if-eqz v0, :cond_0

    return-object v0

    .line 5
    :cond_1
    new-instance v0, Lbf0$c;

    iget-object v1, p0, Lbf0$a;->g:Ljava/util/concurrent/ThreadFactory;

    invoke-direct {v0, v1}, Lbf0$c;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    .line 6
    iget-object v1, p0, Lbf0$a;->d:Lae0;

    invoke-virtual {v1, v0}, Lae0;->b(Lbe0;)Z

    return-object v0
.end method

.method b(Lbf0$c;)V
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 2
    iget-wide v2, p0, Lbf0$a;->b:J

    add-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lbf0$c;->j(J)V

    .line 3
    iget-object v0, p0, Lbf0$a;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lbf0$a;->d:Lae0;

    invoke-virtual {v0}, Lae0;->e()V

    .line 2
    iget-object v0, p0, Lbf0$a;->f:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 3
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 4
    :cond_0
    iget-object v0, p0, Lbf0$a;->e:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    :cond_1
    return-void
.end method

.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lbf0$a;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 3
    iget-object v2, p0, Lbf0$a;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbf0$c;

    .line 4
    invoke-virtual {v3}, Lbf0$c;->i()J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-gtz v6, :cond_1

    .line 5
    iget-object v4, p0, Lbf0$a;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6
    iget-object v4, p0, Lbf0$a;->d:Lae0;

    .line 7
    invoke-virtual {v4, v3}, Lae0;->c(Lbe0;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 8
    invoke-virtual {v3}, Ldf0;->e()V

    goto :goto_0

    :cond_1
    return-void
.end method
