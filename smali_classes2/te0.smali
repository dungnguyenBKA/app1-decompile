.class public final Lte0;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lwd0;
.implements Lbe0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lbe0;",
        ">;",
        "Lwd0<",
        "TT;>;",
        "Lbe0;",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final b:Lje0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lje0<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final c:Lje0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lje0<",
            "-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field final d:Lie0;

.field final e:Lje0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lje0<",
            "-",
            "Lbe0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lje0;Lje0;Lie0;Lje0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lje0<",
            "-TT;>;",
            "Lje0<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lie0;",
            "Lje0<",
            "-",
            "Lbe0;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    iput-object p1, p0, Lte0;->b:Lje0;

    .line 3
    iput-object p2, p0, Lte0;->c:Lje0;

    .line 4
    iput-object p3, p0, Lte0;->d:Lie0;

    .line 5
    iput-object p4, p0, Lte0;->e:Lje0;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lte0;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lle0;->b:Lle0;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 3
    :try_start_0
    iget-object v0, p0, Lte0;->d:Lie0;

    invoke-interface {v0}, Lie0;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 4
    invoke-static {v0}, Landroidx/core/app/b;->K0(Ljava/lang/Throwable;)V

    .line 5
    invoke-static {v0}, Lmf0;->f(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lte0;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lle0;->b:Lle0;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 3
    :try_start_0
    iget-object v0, p0, Lte0;->c:Lje0;

    invoke-interface {v0, p1}, Lje0;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 4
    invoke-static {v0}, Landroidx/core/app/b;->K0(Ljava/lang/Throwable;)V

    .line 5
    new-instance v1, Lee0;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Throwable;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object v0, v2, p1

    .line 6
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 7
    invoke-direct {v1, p1}, Lee0;-><init>(Ljava/lang/Iterable;)V

    .line 8
    invoke-static {v1}, Lmf0;->f(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-static {p1}, Lmf0;->f(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public c(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lte0;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lte0;->b:Lje0;

    invoke-interface {v0, p1}, Lje0;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3
    invoke-static {p1}, Landroidx/core/app/b;->K0(Ljava/lang/Throwable;)V

    .line 4
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbe0;

    invoke-interface {v0}, Lbe0;->e()V

    .line 5
    invoke-virtual {p0, p1}, Lte0;->b(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public d()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lle0;->b:Lle0;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e()V
    .locals 0

    .line 1
    invoke-static {p0}, Lle0;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public f(Lbe0;)V
    .locals 1

    .line 1
    invoke-static {p0, p1}, Lle0;->b(Ljava/util/concurrent/atomic/AtomicReference;Lbe0;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lte0;->e:Lje0;

    invoke-interface {v0, p0}, Lje0;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    invoke-static {v0}, Landroidx/core/app/b;->K0(Ljava/lang/Throwable;)V

    .line 4
    invoke-interface {p1}, Lbe0;->e()V

    .line 5
    invoke-virtual {p0, v0}, Lte0;->b(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
