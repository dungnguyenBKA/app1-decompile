.class Ls3$c;
.super Lo3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic b:Ls3;


# direct methods
.method constructor <init>(Ls3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ls3$c;->b:Ls3;

    invoke-direct {p0}, Lo3;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Ln3;
    .locals 1

    .line 1
    iget-object v0, p0, Ls3$c;->b:Ls3;

    .line 2
    invoke-virtual {v0, p1}, Ls3;->u(I)Ln3;

    move-result-object p1

    .line 3
    invoke-static {p1}, Ln3;->G(Ln3;)Ln3;

    move-result-object p1

    return-object p1
.end method

.method public b(I)Ln3;
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Ls3$c;->b:Ls3;

    iget p1, p1, Ls3;->k:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Ls3$c;->b:Ls3;

    iget p1, p1, Ls3;->l:I

    :goto_0
    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_1
    iget-object v0, p0, Ls3$c;->b:Ls3;

    .line 3
    invoke-virtual {v0, p1}, Ls3;->u(I)Ln3;

    move-result-object p1

    .line 4
    invoke-static {p1}, Ln3;->G(Ln3;)Ln3;

    move-result-object p1

    return-object p1
.end method

.method public d(IILandroid/os/Bundle;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Ls3$c;->b:Ls3;

    invoke-virtual {v0, p1, p2, p3}, Ls3;->A(IILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method
