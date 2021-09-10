.class Lle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Luc$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Luc$a<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lzf$a;

.field final synthetic c:Lme;


# direct methods
.method constructor <init>(Lme;Lzf$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lle;->c:Lme;

    iput-object p2, p0, Lle;->b:Lzf$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lle;->c:Lme;

    iget-object v1, p0, Lle;->b:Lzf$a;

    invoke-virtual {v0, v1}, Lme;->e(Lzf$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lle;->c:Lme;

    iget-object v1, p0, Lle;->b:Lzf$a;

    invoke-virtual {v0, v1, p1}, Lme;->g(Lzf$a;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public f(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lle;->c:Lme;

    iget-object v1, p0, Lle;->b:Lzf$a;

    invoke-virtual {v0, v1}, Lme;->e(Lzf$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lle;->c:Lme;

    iget-object v1, p0, Lle;->b:Lzf$a;

    invoke-virtual {v0, v1, p1}, Lme;->f(Lzf$a;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
