.class public final Lye0;
.super Lue0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lye0$b;,
        Lye0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lue0<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final b:Lxd0;


# direct methods
.method public constructor <init>(Ltd0;Lxd0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltd0<",
            "TT;>;",
            "Lxd0;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lue0;-><init>(Ltd0;)V

    .line 2
    iput-object p2, p0, Lye0;->b:Lxd0;

    return-void
.end method


# virtual methods
.method public d(Lwd0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwd0<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lye0$a;

    invoke-direct {v0, p1}, Lye0$a;-><init>(Lwd0;)V

    .line 2
    invoke-interface {p1, v0}, Lwd0;->f(Lbe0;)V

    .line 3
    iget-object p1, p0, Lye0;->b:Lxd0;

    new-instance v1, Lye0$b;

    invoke-direct {v1, p0, v0}, Lye0$b;-><init>(Lye0;Lye0$a;)V

    invoke-virtual {p1, v1}, Lxd0;->b(Ljava/lang/Runnable;)Lbe0;

    move-result-object p1

    .line 4
    invoke-static {v0, p1}, Lle0;->b(Ljava/util/concurrent/atomic/AtomicReference;Lbe0;)Z

    return-void
.end method
