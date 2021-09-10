.class final Lxe0$a;
.super Lre0;
.source "SourceFile"

# interfaces
.implements Lwd0;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxe0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lre0<",
        "TT;>;",
        "Lwd0<",
        "TT;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final b:Lwd0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lwd0<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final c:Lxd0$b;

.field final d:Z

.field final e:I

.field f:Lqe0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqe0<",
            "TT;>;"
        }
    .end annotation
.end field

.field g:Lbe0;

.field h:Ljava/lang/Throwable;

.field volatile i:Z

.field volatile j:Z

.field k:I

.field l:Z


# direct methods
.method constructor <init>(Lwd0;Lxd0$b;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwd0<",
            "-TT;>;",
            "Lxd0$b;",
            "ZI)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lre0;-><init>()V

    .line 2
    iput-object p1, p0, Lxe0$a;->b:Lwd0;

    .line 3
    iput-object p2, p0, Lxe0$a;->c:Lxd0$b;

    .line 4
    iput-boolean p3, p0, Lxe0$a;->d:Z

    .line 5
    iput p4, p0, Lxe0$a;->e:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lxe0$a;->i:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lxe0$a;->i:Z

    .line 3
    invoke-virtual {p0}, Lxe0$a;->j()V

    return-void
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lxe0$a;->i:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lmf0;->f(Ljava/lang/Throwable;)V

    return-void

    .line 3
    :cond_0
    iput-object p1, p0, Lxe0$a;->h:Ljava/lang/Throwable;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lxe0$a;->i:Z

    .line 5
    invoke-virtual {p0}, Lxe0$a;->j()V

    return-void
.end method

.method public c(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lxe0$a;->i:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lxe0$a;->k:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lxe0$a;->f:Lqe0;

    invoke-interface {v0, p1}, Lqe0;->d(Ljava/lang/Object;)Z

    .line 4
    :cond_1
    invoke-virtual {p0}, Lxe0$a;->j()V

    return-void
.end method

.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lxe0$a;->f:Lqe0;

    invoke-interface {v0}, Lqe0;->clear()V

    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lxe0$a;->j:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lxe0$a;->j:Z

    .line 3
    iget-object v0, p0, Lxe0$a;->g:Lbe0;

    invoke-interface {v0}, Lbe0;->e()V

    .line 4
    iget-object v0, p0, Lxe0$a;->c:Lxd0$b;

    invoke-interface {v0}, Lbe0;->e()V

    .line 5
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lxe0$a;->f:Lqe0;

    invoke-interface {v0}, Lqe0;->clear()V

    :cond_0
    return-void
.end method

.method public f(Lbe0;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lxe0$a;->g:Lbe0;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1}, Lbe0;->e()V

    .line 3
    new-instance v0, Lge0;

    const-string v2, "Disposable already set!"

    invoke-direct {v0, v2}, Lge0;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lmf0;->f(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_3

    .line 4
    iput-object p1, p0, Lxe0$a;->g:Lbe0;

    .line 5
    instance-of v0, p1, Lpe0;

    if-eqz v0, :cond_2

    .line 6
    check-cast p1, Lpe0;

    const/4 v0, 0x7

    .line 7
    invoke-interface {p1, v0}, Lpe0;->h(I)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 8
    iput v0, p0, Lxe0$a;->k:I

    .line 9
    iput-object p1, p0, Lxe0$a;->f:Lqe0;

    .line 10
    iput-boolean v1, p0, Lxe0$a;->i:Z

    .line 11
    iget-object p1, p0, Lxe0$a;->b:Lwd0;

    invoke-interface {p1, p0}, Lwd0;->f(Lbe0;)V

    .line 12
    invoke-virtual {p0}, Lxe0$a;->j()V

    return-void

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 13
    iput v0, p0, Lxe0$a;->k:I

    .line 14
    iput-object p1, p0, Lxe0$a;->f:Lqe0;

    .line 15
    iget-object p1, p0, Lxe0$a;->b:Lwd0;

    invoke-interface {p1, p0}, Lwd0;->f(Lbe0;)V

    return-void

    .line 16
    :cond_2
    new-instance p1, Lze0;

    iget v0, p0, Lxe0$a;->e:I

    invoke-direct {p1, v0}, Lze0;-><init>(I)V

    iput-object p1, p0, Lxe0$a;->f:Lqe0;

    .line 17
    iget-object p1, p0, Lxe0$a;->b:Lwd0;

    invoke-interface {p1, p0}, Lwd0;->f(Lbe0;)V

    :cond_3
    return-void
.end method

.method public g()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lxe0$a;->f:Lqe0;

    invoke-interface {v0}, Lqe0;->g()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public h(I)I
    .locals 1

    const/4 v0, 0x2

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Lxe0$a;->l:Z

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method i(ZZLwd0;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lwd0<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lxe0$a;->j:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lxe0$a;->f:Lqe0;

    invoke-interface {p1}, Lqe0;->clear()V

    return v1

    :cond_0
    if-eqz p1, :cond_4

    .line 3
    iget-object p1, p0, Lxe0$a;->h:Ljava/lang/Throwable;

    .line 4
    iget-boolean v0, p0, Lxe0$a;->d:Z

    if-eqz v0, :cond_2

    if-eqz p2, :cond_4

    if-eqz p1, :cond_1

    .line 5
    invoke-interface {p3, p1}, Lwd0;->b(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {p3}, Lwd0;->a()V

    .line 7
    :goto_0
    iget-object p1, p0, Lxe0$a;->c:Lxd0$b;

    invoke-interface {p1}, Lbe0;->e()V

    return v1

    :cond_2
    if-eqz p1, :cond_3

    .line 8
    iget-object p2, p0, Lxe0$a;->f:Lqe0;

    invoke-interface {p2}, Lqe0;->clear()V

    .line 9
    invoke-interface {p3, p1}, Lwd0;->b(Ljava/lang/Throwable;)V

    .line 10
    iget-object p1, p0, Lxe0$a;->c:Lxd0$b;

    invoke-interface {p1}, Lbe0;->e()V

    return v1

    :cond_3
    if-eqz p2, :cond_4

    .line 11
    invoke-interface {p3}, Lwd0;->a()V

    .line 12
    iget-object p1, p0, Lxe0$a;->c:Lxd0$b;

    invoke-interface {p1}, Lbe0;->e()V

    return v1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lxe0$a;->f:Lqe0;

    invoke-interface {v0}, Lqe0;->isEmpty()Z

    move-result v0

    return v0
.end method

.method j()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lxe0$a;->c:Lxd0$b;

    invoke-virtual {v0, p0}, Lxd0$b;->b(Ljava/lang/Runnable;)Lbe0;

    :cond_0
    return-void
.end method

.method public run()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lxe0$a;->l:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    .line 2
    :cond_0
    iget-boolean v0, p0, Lxe0$a;->j:Z

    if-eqz v0, :cond_1

    goto/16 :goto_3

    .line 3
    :cond_1
    iget-boolean v0, p0, Lxe0$a;->i:Z

    .line 4
    iget-object v2, p0, Lxe0$a;->h:Ljava/lang/Throwable;

    .line 5
    iget-boolean v3, p0, Lxe0$a;->d:Z

    if-nez v3, :cond_2

    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    .line 6
    iget-object v0, p0, Lxe0$a;->b:Lwd0;

    invoke-interface {v0, v2}, Lwd0;->b(Ljava/lang/Throwable;)V

    .line 7
    iget-object v0, p0, Lxe0$a;->c:Lxd0$b;

    invoke-interface {v0}, Lbe0;->e()V

    goto/16 :goto_3

    .line 8
    :cond_2
    iget-object v2, p0, Lxe0$a;->b:Lwd0;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lwd0;->c(Ljava/lang/Object;)V

    if-eqz v0, :cond_4

    .line 9
    iget-object v0, p0, Lxe0$a;->h:Ljava/lang/Throwable;

    if-eqz v0, :cond_3

    .line 10
    iget-object v1, p0, Lxe0$a;->b:Lwd0;

    invoke-interface {v1, v0}, Lwd0;->b(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 11
    :cond_3
    iget-object v0, p0, Lxe0$a;->b:Lwd0;

    invoke-interface {v0}, Lwd0;->a()V

    .line 12
    :goto_0
    iget-object v0, p0, Lxe0$a;->c:Lxd0$b;

    invoke-interface {v0}, Lbe0;->e()V

    goto :goto_3

    :cond_4
    neg-int v0, v1

    .line 13
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_3

    .line 14
    :cond_5
    iget-object v0, p0, Lxe0$a;->f:Lqe0;

    .line 15
    iget-object v2, p0, Lxe0$a;->b:Lwd0;

    const/4 v3, 0x1

    .line 16
    :cond_6
    iget-boolean v4, p0, Lxe0$a;->i:Z

    invoke-interface {v0}, Lqe0;->isEmpty()Z

    move-result v5

    invoke-virtual {p0, v4, v5, v2}, Lxe0$a;->i(ZZLwd0;)Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_3

    .line 17
    :cond_7
    :goto_1
    iget-boolean v4, p0, Lxe0$a;->i:Z

    .line 18
    :try_start_0
    invoke-interface {v0}, Lqe0;->g()Ljava/lang/Object;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_8

    const/4 v6, 0x1

    goto :goto_2

    :cond_8
    const/4 v6, 0x0

    .line 19
    :goto_2
    invoke-virtual {p0, v4, v6, v2}, Lxe0$a;->i(ZZLwd0;)Z

    move-result v4

    if-eqz v4, :cond_9

    goto :goto_3

    :cond_9
    if-eqz v6, :cond_a

    neg-int v3, v3

    .line 20
    invoke-virtual {p0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v3

    if-nez v3, :cond_6

    goto :goto_3

    .line 21
    :cond_a
    invoke-interface {v2, v5}, Lwd0;->c(Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 22
    invoke-static {v1}, Landroidx/core/app/b;->K0(Ljava/lang/Throwable;)V

    .line 23
    iget-object v3, p0, Lxe0$a;->g:Lbe0;

    invoke-interface {v3}, Lbe0;->e()V

    .line 24
    invoke-interface {v0}, Lqe0;->clear()V

    .line 25
    invoke-interface {v2, v1}, Lwd0;->b(Ljava/lang/Throwable;)V

    .line 26
    iget-object v0, p0, Lxe0$a;->c:Lxd0$b;

    invoke-interface {v0}, Lbe0;->e()V

    :goto_3
    return-void
.end method
