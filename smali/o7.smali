.class public Lo7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld7;
.implements Ll7;
.implements Li7;
.implements Ls7$b;
.implements Lj7;


# instance fields
.field private final a:Landroid/graphics/Matrix;

.field private final b:Landroid/graphics/Path;

.field private final c:Lcom/airbnb/lottie/g;

.field private final d:Lz9;

.field private final e:Ljava/lang/String;

.field private final f:Z

.field private final g:Ls7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls7<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ls7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls7<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lg8;

.field private j:Lc7;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/g;Lz9;Lr9;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lo7;->a:Landroid/graphics/Matrix;

    .line 3
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lo7;->b:Landroid/graphics/Path;

    .line 4
    iput-object p1, p0, Lo7;->c:Lcom/airbnb/lottie/g;

    .line 5
    iput-object p2, p0, Lo7;->d:Lz9;

    .line 6
    invoke-virtual {p3}, Lr9;->c()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo7;->e:Ljava/lang/String;

    .line 7
    invoke-virtual {p3}, Lr9;->f()Z

    move-result p1

    iput-boolean p1, p0, Lo7;->f:Z

    .line 8
    invoke-virtual {p3}, Lr9;->b()Lu8;

    move-result-object p1

    invoke-virtual {p1}, Lu8;->a()Ls7;

    move-result-object p1

    iput-object p1, p0, Lo7;->g:Ls7;

    .line 9
    invoke-virtual {p2, p1}, Lz9;->i(Ls7;)V

    .line 10
    invoke-virtual {p1, p0}, Ls7;->a(Ls7$b;)V

    .line 11
    invoke-virtual {p3}, Lr9;->d()Lu8;

    move-result-object p1

    invoke-virtual {p1}, Lu8;->a()Ls7;

    move-result-object p1

    iput-object p1, p0, Lo7;->h:Ls7;

    .line 12
    invoke-virtual {p2, p1}, Lz9;->i(Ls7;)V

    .line 13
    invoke-virtual {p1, p0}, Ls7;->a(Ls7$b;)V

    .line 14
    invoke-virtual {p3}, Lr9;->e()Le9;

    move-result-object p1

    .line 15
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    new-instance p3, Lg8;

    invoke-direct {p3, p1}, Lg8;-><init>(Le9;)V

    .line 17
    iput-object p3, p0, Lo7;->i:Lg8;

    .line 18
    invoke-virtual {p3, p2}, Lg8;->a(Lz9;)V

    .line 19
    invoke-virtual {p3, p0}, Lg8;->b(Ls7$b;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lo7;->c:Lcom/airbnb/lottie/g;

    invoke-virtual {v0}, Lcom/airbnb/lottie/g;->invalidateSelf()V

    return-void
.end method

.method public b(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lb7;",
            ">;",
            "Ljava/util/List<",
            "Lb7;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lo7;->j:Lc7;

    invoke-virtual {v0, p1, p2}, Lc7;->b(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public c(Lo8;ILjava/util/List;Lo8;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo8;",
            "I",
            "Ljava/util/List<",
            "Lo8;",
            ">;",
            "Lo8;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {p1, p2, p3, p4, p0}, Lcc;->g(Lo8;ILjava/util/List;Lo8;Lj7;)V

    return-void
.end method

.method public d(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lo7;->j:Lc7;

    invoke-virtual {v0, p1, p2, p3}, Lc7;->d(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    return-void
.end method

.method public e(Ljava/util/ListIterator;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ListIterator<",
            "Lb7;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lo7;->j:Lc7;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 4
    :goto_1
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-interface {p1}, Ljava/util/ListIterator;->remove()V

    goto :goto_1

    .line 7
    :cond_2
    invoke-static {v6}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 8
    new-instance p1, Lc7;

    iget-object v2, p0, Lo7;->c:Lcom/airbnb/lottie/g;

    iget-object v3, p0, Lo7;->d:Lz9;

    iget-boolean v5, p0, Lo7;->f:Z

    const/4 v7, 0x0

    const-string v4, "Repeater"

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lc7;-><init>(Lcom/airbnb/lottie/g;Lz9;Ljava/lang/String;ZLjava/util/List;Le9;)V

    iput-object p1, p0, Lo7;->j:Lc7;

    return-void
.end method

.method public f(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 9

    .line 1
    iget-object v0, p0, Lo7;->g:Ls7;

    invoke-virtual {v0}, Ls7;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 2
    iget-object v1, p0, Lo7;->h:Ls7;

    invoke-virtual {v1}, Ls7;->g()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 3
    iget-object v2, p0, Lo7;->i:Lg8;

    invoke-virtual {v2}, Lg8;->i()Ls7;

    move-result-object v2

    invoke-virtual {v2}, Ls7;->g()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    .line 4
    iget-object v4, p0, Lo7;->i:Lg8;

    invoke-virtual {v4}, Lg8;->e()Ls7;

    move-result-object v4

    invoke-virtual {v4}, Ls7;->g()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    div-float/2addr v4, v3

    float-to-int v3, v0

    add-int/lit8 v3, v3, -0x1

    :goto_0
    if-ltz v3, :cond_0

    .line 5
    iget-object v5, p0, Lo7;->a:Landroid/graphics/Matrix;

    invoke-virtual {v5, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 6
    iget-object v5, p0, Lo7;->a:Landroid/graphics/Matrix;

    iget-object v6, p0, Lo7;->i:Lg8;

    int-to-float v7, v3

    add-float v8, v7, v1

    invoke-virtual {v6, v8}, Lg8;->g(F)Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    int-to-float v5, p3

    div-float/2addr v7, v0

    .line 7
    invoke-static {v2, v4, v7}, Lcc;->f(FFF)F

    move-result v6

    mul-float v6, v6, v5

    .line 8
    iget-object v5, p0, Lo7;->j:Lc7;

    iget-object v7, p0, Lo7;->a:Landroid/graphics/Matrix;

    float-to-int v6, v6

    invoke-virtual {v5, p1, v7, v6}, Lc7;->f(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_0
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
    iget-object v0, p0, Lo7;->i:Lg8;

    invoke-virtual {v0, p1, p2}, Lg8;->c(Ljava/lang/Object;Lgc;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/airbnb/lottie/l;->q:Ljava/lang/Float;

    if-ne p1, v0, :cond_1

    .line 3
    iget-object p1, p0, Lo7;->g:Ls7;

    invoke-virtual {p1, p2}, Ls7;->l(Lgc;)V

    goto :goto_0

    .line 4
    :cond_1
    sget-object v0, Lcom/airbnb/lottie/l;->r:Ljava/lang/Float;

    if-ne p1, v0, :cond_2

    .line 5
    iget-object p1, p0, Lo7;->h:Ls7;

    invoke-virtual {p1, p2}, Ls7;->l(Lgc;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lo7;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 6

    .line 1
    iget-object v0, p0, Lo7;->j:Lc7;

    invoke-virtual {v0}, Lc7;->getPath()Landroid/graphics/Path;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lo7;->b:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 3
    iget-object v1, p0, Lo7;->g:Ls7;

    invoke-virtual {v1}, Ls7;->g()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 4
    iget-object v2, p0, Lo7;->h:Ls7;

    invoke-virtual {v2}, Ls7;->g()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-int v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 5
    iget-object v3, p0, Lo7;->a:Landroid/graphics/Matrix;

    iget-object v4, p0, Lo7;->i:Lg8;

    int-to-float v5, v1

    add-float/2addr v5, v2

    invoke-virtual {v4, v5}, Lg8;->g(F)Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 6
    iget-object v3, p0, Lo7;->b:Landroid/graphics/Path;

    iget-object v4, p0, Lo7;->a:Landroid/graphics/Matrix;

    invoke-virtual {v3, v0, v4}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lo7;->b:Landroid/graphics/Path;

    return-object v0
.end method
