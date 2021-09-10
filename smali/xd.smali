.class Lxd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltd$a;
.implements Lil$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxd$c;,
        Lxd$d;,
        Lxd$e;,
        Lxd$b;,
        Lxd$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ltd$a<",
        "TR;>;",
        "Lil$d;"
    }
.end annotation


# static fields
.field private static final z:Lxd$c;


# instance fields
.field final b:Lxd$e;

.field private final c:Lll;

.field private final d:Lbe$a;

.field private final e:Lk2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk2<",
            "Lxd<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final f:Lxd$c;

.field private final g:Lyd;

.field private final h:Llf;

.field private final i:Llf;

.field private final j:Llf;

.field private final k:Llf;

.field private final l:Ljava/util/concurrent/atomic/AtomicInteger;

.field private m:Lcom/bumptech/glide/load/g;

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Lhe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhe<",
            "*>;"
        }
    .end annotation
.end field

.field s:Lcom/bumptech/glide/load/a;

.field private t:Z

.field u:Lce;

.field private v:Z

.field w:Lbe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbe<",
            "*>;"
        }
    .end annotation
.end field

.field private x:Ltd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltd<",
            "TR;>;"
        }
    .end annotation
.end field

.field private volatile y:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lxd$c;

    invoke-direct {v0}, Lxd$c;-><init>()V

    sput-object v0, Lxd;->z:Lxd$c;

    return-void
.end method

.method constructor <init>(Llf;Llf;Llf;Llf;Lyd;Lbe$a;Lk2;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llf;",
            "Llf;",
            "Llf;",
            "Llf;",
            "Lyd;",
            "Lbe$a;",
            "Lk2<",
            "Lxd<",
            "*>;>;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lxd;->z:Lxd$c;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v1, Lxd$e;

    invoke-direct {v1}, Lxd$e;-><init>()V

    iput-object v1, p0, Lxd;->b:Lxd$e;

    .line 4
    invoke-static {}, Lll;->a()Lll;

    move-result-object v1

    iput-object v1, p0, Lxd;->c:Lll;

    .line 5
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v1, p0, Lxd;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 6
    iput-object p1, p0, Lxd;->h:Llf;

    .line 7
    iput-object p2, p0, Lxd;->i:Llf;

    .line 8
    iput-object p3, p0, Lxd;->j:Llf;

    .line 9
    iput-object p4, p0, Lxd;->k:Llf;

    .line 10
    iput-object p5, p0, Lxd;->g:Lyd;

    .line 11
    iput-object p6, p0, Lxd;->d:Lbe$a;

    .line 12
    iput-object p7, p0, Lxd;->e:Lk2;

    .line 13
    iput-object v0, p0, Lxd;->f:Lxd$c;

    return-void
.end method

.method private f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lxd;->v:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lxd;->t:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lxd;->y:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private declared-synchronized j()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lxd;->m:Lcom/bumptech/glide/load/g;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lxd;->b:Lxd$e;

    invoke-virtual {v0}, Lxd$e;->clear()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lxd;->m:Lcom/bumptech/glide/load/g;

    .line 4
    iput-object v0, p0, Lxd;->w:Lbe;

    .line 5
    iput-object v0, p0, Lxd;->r:Lhe;

    const/4 v1, 0x0

    .line 6
    iput-boolean v1, p0, Lxd;->v:Z

    .line 7
    iput-boolean v1, p0, Lxd;->y:Z

    .line 8
    iput-boolean v1, p0, Lxd;->t:Z

    .line 9
    iget-object v2, p0, Lxd;->x:Ltd;

    invoke-virtual {v2, v1}, Ltd;->o(Z)V

    .line 10
    iput-object v0, p0, Lxd;->x:Ltd;

    .line 11
    iput-object v0, p0, Lxd;->u:Lce;

    .line 12
    iput-object v0, p0, Lxd;->s:Lcom/bumptech/glide/load/a;

    .line 13
    iget-object v0, p0, Lxd;->e:Lk2;

    invoke-interface {v0, p0}, Lk2;->a(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    monitor-exit p0

    return-void

    .line 15
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method declared-synchronized a(Ldk;Ljava/util/concurrent/Executor;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lxd;->c:Lll;

    invoke-virtual {v0}, Lll;->c()V

    .line 2
    iget-object v0, p0, Lxd;->b:Lxd$e;

    invoke-virtual {v0, p1, p2}, Lxd$e;->a(Ldk;Ljava/util/concurrent/Executor;)V

    .line 3
    iget-boolean v0, p0, Lxd;->t:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0, v1}, Lxd;->d(I)V

    .line 5
    new-instance v0, Lxd$b;

    invoke-direct {v0, p0, p1}, Lxd$b;-><init>(Lxd;Ldk;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 6
    :cond_0
    iget-boolean v0, p0, Lxd;->v:Z

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p0, v1}, Lxd;->d(I)V

    .line 8
    new-instance v0, Lxd$a;

    invoke-direct {v0, p0, p1}, Lxd$a;-><init>(Lxd;Ldk;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 9
    :cond_1
    iget-boolean p1, p0, Lxd;->y:Z

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    const-string p1, "Cannot add callbacks to a cancelled EngineJob"

    invoke-static {v1, p1}, Landroidx/core/app/b;->i(ZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b()Lll;
    .locals 1

    .line 1
    iget-object v0, p0, Lxd;->c:Lll;

    return-object v0
.end method

.method c()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lxd;->c:Lll;

    invoke-virtual {v0}, Lll;->c()V

    .line 3
    invoke-direct {p0}, Lxd;->f()Z

    move-result v0

    const-string v1, "Not yet complete!"

    invoke-static {v0, v1}, Landroidx/core/app/b;->i(ZLjava/lang/String;)V

    .line 4
    iget-object v0, p0, Lxd;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Can\'t decrement below 0"

    .line 5
    invoke-static {v1, v2}, Landroidx/core/app/b;->i(ZLjava/lang/String;)V

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lxd;->w:Lbe;

    .line 7
    invoke-direct {p0}, Lxd;->j()V

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 8
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {v0}, Lbe;->g()V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    .line 10
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method declared-synchronized d(I)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lxd;->f()Z

    move-result v0

    const-string v1, "Not yet complete!"

    invoke-static {v0, v1}, Landroidx/core/app/b;->i(ZLjava/lang/String;)V

    .line 2
    iget-object v0, p0, Lxd;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lxd;->w:Lbe;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lbe;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized e(Lcom/bumptech/glide/load/g;ZZZZ)Lxd;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/g;",
            "ZZZZ)",
            "Lxd<",
            "TR;>;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iput-object p1, p0, Lxd;->m:Lcom/bumptech/glide/load/g;

    .line 2
    iput-boolean p2, p0, Lxd;->n:Z

    .line 3
    iput-boolean p3, p0, Lxd;->o:Z

    .line 4
    iput-boolean p4, p0, Lxd;->p:Z

    .line 5
    iput-boolean p5, p0, Lxd;->q:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public g(Lce;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, Lxd;->u:Lce;

    .line 3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    monitor-enter p0

    .line 5
    :try_start_1
    iget-object p1, p0, Lxd;->c:Lll;

    invoke-virtual {p1}, Lll;->c()V

    .line 6
    iget-boolean p1, p0, Lxd;->y:Z

    if-eqz p1, :cond_0

    .line 7
    invoke-direct {p0}, Lxd;->j()V

    .line 8
    monitor-exit p0

    goto :goto_1

    .line 9
    :cond_0
    iget-object p1, p0, Lxd;->b:Lxd$e;

    invoke-virtual {p1}, Lxd$e;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 10
    iget-boolean p1, p0, Lxd;->v:Z

    if-nez p1, :cond_2

    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lxd;->v:Z

    .line 12
    iget-object v0, p0, Lxd;->m:Lcom/bumptech/glide/load/g;

    .line 13
    iget-object v1, p0, Lxd;->b:Lxd$e;

    invoke-virtual {v1}, Lxd$e;->c()Lxd$e;

    move-result-object v1

    .line 14
    invoke-virtual {v1}, Lxd$e;->size()I

    move-result v2

    add-int/2addr v2, p1

    invoke-virtual {p0, v2}, Lxd;->d(I)V

    .line 15
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    iget-object p1, p0, Lxd;->g:Lyd;

    const/4 v2, 0x0

    check-cast p1, Lwd;

    invoke-virtual {p1, p0, v0, v2}, Lwd;->f(Lxd;Lcom/bumptech/glide/load/g;Lbe;)V

    .line 17
    invoke-virtual {v1}, Lxd$e;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxd$d;

    .line 18
    iget-object v1, v0, Lxd$d;->b:Ljava/util/concurrent/Executor;

    new-instance v2, Lxd$a;

    iget-object v0, v0, Lxd$d;->a:Ldk;

    invoke-direct {v2, p0, v0}, Lxd$a;-><init>(Lxd;Ldk;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 19
    :cond_1
    invoke-virtual {p0}, Lxd;->c()V

    :goto_1
    return-void

    .line 20
    :cond_2
    :try_start_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already failed once"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Received an exception without any callbacks to notify"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 22
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 23
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public h(Lhe;Lcom/bumptech/glide/load/a;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhe<",
            "TR;>;",
            "Lcom/bumptech/glide/load/a;",
            ")V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, Lxd;->r:Lhe;

    .line 3
    iput-object p2, p0, Lxd;->s:Lcom/bumptech/glide/load/a;

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    monitor-enter p0

    .line 6
    :try_start_1
    iget-object p1, p0, Lxd;->c:Lll;

    invoke-virtual {p1}, Lll;->c()V

    .line 7
    iget-boolean p1, p0, Lxd;->y:Z

    if-eqz p1, :cond_0

    .line 8
    iget-object p1, p0, Lxd;->r:Lhe;

    invoke-interface {p1}, Lhe;->a()V

    .line 9
    invoke-direct {p0}, Lxd;->j()V

    .line 10
    monitor-exit p0

    goto :goto_1

    .line 11
    :cond_0
    iget-object p1, p0, Lxd;->b:Lxd$e;

    invoke-virtual {p1}, Lxd$e;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 12
    iget-boolean p1, p0, Lxd;->t:Z

    if-nez p1, :cond_2

    .line 13
    iget-object p1, p0, Lxd;->f:Lxd$c;

    iget-object v1, p0, Lxd;->r:Lhe;

    iget-boolean v2, p0, Lxd;->n:Z

    iget-object v4, p0, Lxd;->m:Lcom/bumptech/glide/load/g;

    iget-object v5, p0, Lxd;->d:Lbe$a;

    .line 14
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    new-instance p1, Lbe;

    const/4 v3, 0x1

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lbe;-><init>(Lhe;ZZLcom/bumptech/glide/load/g;Lbe$a;)V

    .line 16
    iput-object p1, p0, Lxd;->w:Lbe;

    const/4 p1, 0x1

    .line 17
    iput-boolean p1, p0, Lxd;->t:Z

    .line 18
    iget-object p2, p0, Lxd;->b:Lxd$e;

    invoke-virtual {p2}, Lxd$e;->c()Lxd$e;

    move-result-object p2

    .line 19
    invoke-virtual {p2}, Lxd$e;->size()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lxd;->d(I)V

    .line 20
    iget-object p1, p0, Lxd;->m:Lcom/bumptech/glide/load/g;

    .line 21
    iget-object v0, p0, Lxd;->w:Lbe;

    .line 22
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    iget-object v1, p0, Lxd;->g:Lyd;

    check-cast v1, Lwd;

    invoke-virtual {v1, p0, p1, v0}, Lwd;->f(Lxd;Lcom/bumptech/glide/load/g;Lbe;)V

    .line 24
    invoke-virtual {p2}, Lxd$e;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lxd$d;

    .line 25
    iget-object v0, p2, Lxd$d;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Lxd$b;

    iget-object p2, p2, Lxd$d;->a:Ldk;

    invoke-direct {v1, p0, p2}, Lxd$b;-><init>(Lxd;Ldk;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 26
    :cond_1
    invoke-virtual {p0}, Lxd;->c()V

    :goto_1
    return-void

    .line 27
    :cond_2
    :try_start_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Already have resource"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Received a resource without any callbacks to notify"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 29
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 30
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method i()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lxd;->q:Z

    return v0
.end method

.method declared-synchronized k(Ldk;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lxd;->c:Lll;

    invoke-virtual {v0}, Lll;->c()V

    .line 2
    iget-object v0, p0, Lxd;->b:Lxd$e;

    invoke-virtual {v0, p1}, Lxd$e;->d(Ldk;)V

    .line 3
    iget-object p1, p0, Lxd;->b:Lxd$e;

    invoke-virtual {p1}, Lxd$e;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 4
    invoke-direct {p0}, Lxd;->f()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iput-boolean v0, p0, Lxd;->y:Z

    .line 6
    iget-object p1, p0, Lxd;->x:Ltd;

    invoke-virtual {p1}, Ltd;->e()V

    .line 7
    iget-object p1, p0, Lxd;->g:Lyd;

    iget-object v1, p0, Lxd;->m:Lcom/bumptech/glide/load/g;

    check-cast p1, Lwd;

    invoke-virtual {p1, p0, v1}, Lwd;->e(Lxd;Lcom/bumptech/glide/load/g;)V

    .line 8
    :goto_0
    iget-boolean p1, p0, Lxd;->t:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lxd;->v:Z

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 9
    iget-object p1, p0, Lxd;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-nez p1, :cond_3

    .line 10
    invoke-direct {p0}, Lxd;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public l(Ltd;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltd<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lxd;->o:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lxd;->j:Llf;

    goto :goto_0

    .line 3
    :cond_0
    iget-boolean v0, p0, Lxd;->p:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lxd;->k:Llf;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lxd;->i:Llf;

    .line 4
    :goto_0
    invoke-virtual {v0, p1}, Llf;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public declared-synchronized m(Ltd;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltd<",
            "TR;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iput-object p1, p0, Lxd;->x:Ltd;

    .line 2
    invoke-virtual {p1}, Ltd;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lxd;->h:Llf;

    goto :goto_0

    .line 3
    :cond_0
    iget-boolean v0, p0, Lxd;->o:Z

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lxd;->j:Llf;

    goto :goto_0

    .line 5
    :cond_1
    iget-boolean v0, p0, Lxd;->p:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lxd;->k:Llf;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lxd;->i:Llf;

    .line 6
    :goto_0
    invoke-virtual {v0, p1}, Llf;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
