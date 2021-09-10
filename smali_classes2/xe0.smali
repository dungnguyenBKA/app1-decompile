.class public final Lxe0;
.super Lue0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxe0$a;
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

.field final c:Z

.field final d:I


# direct methods
.method public constructor <init>(Ltd0;Lxd0;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltd0<",
            "TT;>;",
            "Lxd0;",
            "ZI)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lue0;-><init>(Ltd0;)V

    .line 2
    iput-object p2, p0, Lxe0;->b:Lxd0;

    .line 3
    iput-boolean p3, p0, Lxe0;->c:Z

    .line 4
    iput p4, p0, Lxe0;->d:I

    return-void
.end method


# virtual methods
.method protected d(Lwd0;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwd0<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lxe0;->b:Lxd0;

    instance-of v1, v0, Ljf0;

    if-eqz v1, :cond_0

    .line 2
    iget-object v0, p0, Lue0;->a:Ltd0;

    invoke-virtual {v0, p1}, Ltd0;->c(Lwd0;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lxd0;->a()Lxd0$b;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lue0;->a:Ltd0;

    new-instance v2, Lxe0$a;

    iget-boolean v3, p0, Lxe0;->c:Z

    iget v4, p0, Lxe0;->d:I

    invoke-direct {v2, p1, v0, v3, v4}, Lxe0$a;-><init>(Lwd0;Lxd0$b;ZI)V

    invoke-virtual {v1, v2}, Ltd0;->c(Lwd0;)V

    :goto_0
    return-void
.end method
