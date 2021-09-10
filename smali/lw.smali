.class public Llw;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ldx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldx<",
            "TTResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ldx;

    invoke-direct {v0}, Ldx;-><init>()V

    iput-object v0, p0, Llw;->a:Ldx;

    return-void
.end method


# virtual methods
.method public a()Lkw;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkw<",
            "TTResult;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Llw;->a:Ldx;

    return-object v0
.end method

.method public b(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    iget-object v0, p0, Llw;->a:Ldx;

    invoke-virtual {v0, p1}, Ldx;->p(Ljava/lang/Exception;)V

    return-void
.end method

.method public c(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Llw;->a:Ldx;

    invoke-virtual {v0, p1}, Ldx;->q(Ljava/lang/Object;)V

    return-void
.end method

.method public d(Ljava/lang/Exception;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Llw;->a:Ldx;

    invoke-virtual {v0, p1}, Ldx;->s(Ljava/lang/Exception;)Z

    move-result p1

    return p1
.end method

.method public e(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Llw;->a:Ldx;

    invoke-virtual {v0, p1}, Ldx;->t(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
