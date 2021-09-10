.class final Lve0$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lud0;
.implements Lbe0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lve0;
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
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lbe0;",
        ">;",
        "Lud0<",
        "TT;>;",
        "Lbe0;"
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


# direct methods
.method constructor <init>(Lwd0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwd0<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    iput-object p1, p0, Lve0$a;->b:Lwd0;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lve0$a;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lve0$a;->b:Lwd0;

    invoke-interface {v0}, Lwd0;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-static {p0}, Lle0;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {p0}, Lle0;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 4
    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lve0$a;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lve0$a;->b:Lwd0;

    invoke-interface {v0, p1}, Lwd0;->b(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-static {p0}, Lle0;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p0}, Lle0;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 4
    throw p1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 5
    invoke-static {p1}, Lmf0;->f(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public c(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "onNext called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lve0$a;->b(Ljava/lang/Throwable;)V

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lve0$a;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lve0$a;->b:Lwd0;

    invoke-interface {v0, p1}, Lwd0;->c(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public d()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbe0;

    .line 2
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

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    const-class v1, Lve0$a;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-super {p0}, Ljava/util/concurrent/atomic/AtomicReference;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "%s{%s}"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
