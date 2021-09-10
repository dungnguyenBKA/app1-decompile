.class final Lye0$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lwd0;
.implements Lbe0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lye0;
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
        "Lwd0<",
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

.field final c:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lbe0;",
            ">;"
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
    iput-object p1, p0, Lye0$a;->b:Lwd0;

    .line 3
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lye0$a;->c:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lye0$a;->b:Lwd0;

    invoke-interface {v0}, Lwd0;->a()V

    return-void
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lye0$a;->b:Lwd0;

    invoke-interface {v0, p1}, Lwd0;->b(Ljava/lang/Throwable;)V

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
    iget-object v0, p0, Lye0$a;->b:Lwd0;

    invoke-interface {v0, p1}, Lwd0;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lye0$a;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lle0;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 2
    invoke-static {p0}, Lle0;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public f(Lbe0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lye0$a;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lle0;->b(Ljava/util/concurrent/atomic/AtomicReference;Lbe0;)Z

    return-void
.end method
