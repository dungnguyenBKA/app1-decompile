.class public Lq7;
.super Lz6;
.source "SourceFile"


# instance fields
.field private final o:Lz9;

.field private final p:Ljava/lang/String;

.field private final q:Z

.field private final r:Ls7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls7<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private s:Ls7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls7<",
            "Landroid/graphics/ColorFilter;",
            "Landroid/graphics/ColorFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/g;Lz9;Lw9;)V
    .locals 11

    .line 1
    invoke-virtual {p3}, Lw9;->b()Lw9$a;

    move-result-object v0

    invoke-virtual {v0}, Lw9$a;->a()Landroid/graphics/Paint$Cap;

    move-result-object v4

    .line 2
    invoke-virtual {p3}, Lw9;->e()Lw9$b;

    move-result-object v0

    invoke-virtual {v0}, Lw9$b;->a()Landroid/graphics/Paint$Join;

    move-result-object v5

    invoke-virtual {p3}, Lw9;->g()F

    move-result v6

    invoke-virtual {p3}, Lw9;->i()Lw8;

    move-result-object v7

    .line 3
    invoke-virtual {p3}, Lw9;->j()Lu8;

    move-result-object v8

    invoke-virtual {p3}, Lw9;->f()Ljava/util/List;

    move-result-object v9

    invoke-virtual {p3}, Lw9;->d()Lu8;

    move-result-object v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 4
    invoke-direct/range {v1 .. v10}, Lz6;-><init>(Lcom/airbnb/lottie/g;Lz9;Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLw8;Lu8;Ljava/util/List;Lu8;)V

    .line 5
    iput-object p2, p0, Lq7;->o:Lz9;

    .line 6
    invoke-virtual {p3}, Lw9;->h()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lq7;->p:Ljava/lang/String;

    .line 7
    invoke-virtual {p3}, Lw9;->k()Z

    move-result p1

    iput-boolean p1, p0, Lq7;->q:Z

    .line 8
    invoke-virtual {p3}, Lw9;->c()Lt8;

    move-result-object p1

    invoke-virtual {p1}, Lt8;->a()Ls7;

    move-result-object p1

    iput-object p1, p0, Lq7;->r:Ls7;

    .line 9
    invoke-virtual {p1, p0}, Ls7;->a(Ls7$b;)V

    .line 10
    invoke-virtual {p2, p1}, Lz9;->i(Ls7;)V

    return-void
.end method


# virtual methods
.method public f(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lq7;->q:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lz6;->i:Landroid/graphics/Paint;

    iget-object v1, p0, Lq7;->r:Ls7;

    check-cast v1, Lt7;

    invoke-virtual {v1}, Lt7;->m()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3
    iget-object v0, p0, Lq7;->s:Ls7;

    if-eqz v0, :cond_1

    .line 4
    iget-object v1, p0, Lz6;->i:Landroid/graphics/Paint;

    invoke-virtual {v0}, Ls7;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/ColorFilter;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 5
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lz6;->f(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    return-void
.end method

.method public g(Ljava/lang/Object;Lgc;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lgc<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lz6;->g(Ljava/lang/Object;Lgc;)V

    .line 2
    sget-object v0, Lcom/airbnb/lottie/l;->b:Ljava/lang/Integer;

    if-ne p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Lq7;->r:Ls7;

    invoke-virtual {p1, p2}, Ls7;->l(Lgc;)V

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Lcom/airbnb/lottie/l;->C:Landroid/graphics/ColorFilter;

    if-ne p1, v0, :cond_3

    .line 5
    iget-object p1, p0, Lq7;->s:Ls7;

    if-eqz p1, :cond_1

    .line 6
    iget-object v0, p0, Lq7;->o:Lz9;

    invoke-virtual {v0, p1}, Lz9;->o(Ls7;)V

    :cond_1
    const/4 p1, 0x0

    if-nez p2, :cond_2

    .line 7
    iput-object p1, p0, Lq7;->s:Ls7;

    goto :goto_0

    .line 8
    :cond_2
    new-instance v0, Lh8;

    .line 9
    invoke-direct {v0, p2, p1}, Lh8;-><init>(Lgc;Ljava/lang/Object;)V

    .line 10
    iput-object v0, p0, Lq7;->s:Ls7;

    .line 11
    invoke-virtual {v0, p0}, Ls7;->a(Ls7$b;)V

    .line 12
    iget-object p1, p0, Lq7;->o:Lz9;

    iget-object p2, p0, Lq7;->r:Ls7;

    invoke-virtual {p1, p2}, Lz9;->i(Ls7;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lq7;->p:Ljava/lang/String;

    return-object v0
.end method
