.class public Ls9;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lk8;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/graphics/PointF;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ls9;->a:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/PointF;ZLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/PointF;",
            "Z",
            "Ljava/util/List<",
            "Lk8;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ls9;->b:Landroid/graphics/PointF;

    .line 3
    iput-boolean p2, p0, Ls9;->c:Z

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Ls9;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lk8;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls9;->a:Ljava/util/List;

    return-object v0
.end method

.method public b()Landroid/graphics/PointF;
    .locals 1

    .line 1
    iget-object v0, p0, Ls9;->b:Landroid/graphics/PointF;

    return-object v0
.end method

.method public c(Ls9;Ls9;F)V
    .locals 10

    .line 1
    iget-object v0, p0, Ls9;->b:Landroid/graphics/PointF;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Ls9;->b:Landroid/graphics/PointF;

    .line 3
    :cond_0
    iget-boolean v0, p1, Ls9;->c:Z

    if-nez v0, :cond_2

    iget-boolean v0, p2, Ls9;->c:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 4
    :goto_1
    iput-boolean v0, p0, Ls9;->c:Z

    .line 5
    iget-object v0, p1, Ls9;->a:Ljava/util/List;

    .line 6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 7
    iget-object v1, p2, Ls9;->a:Ljava/util/List;

    .line 8
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_3

    const-string v0, "Curves must have the same number of control points. Shape 1: "

    .line 9
    invoke-static {v0}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 10
    iget-object v1, p1, Ls9;->a:Ljava/util/List;

    .line 11
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\tShape 2: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    iget-object v1, p2, Ls9;->a:Ljava/util/List;

    .line 13
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-static {v0}, Lzb;->b(Ljava/lang/String;)V

    .line 15
    :cond_3
    iget-object v0, p1, Ls9;->a:Ljava/util/List;

    .line 16
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 17
    iget-object v1, p2, Ls9;->a:Ljava/util/List;

    .line 18
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 19
    iget-object v1, p0, Ls9;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, v0, :cond_4

    .line 20
    iget-object v1, p0, Ls9;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_2
    if-ge v1, v0, :cond_5

    .line 21
    iget-object v2, p0, Ls9;->a:Ljava/util/List;

    new-instance v3, Lk8;

    invoke-direct {v3}, Lk8;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 22
    :cond_4
    iget-object v1, p0, Ls9;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v0, :cond_5

    .line 23
    iget-object v1, p0, Ls9;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_3
    if-lt v1, v0, :cond_5

    .line 24
    iget-object v2, p0, Ls9;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 25
    :cond_5
    iget-object v0, p1, Ls9;->b:Landroid/graphics/PointF;

    .line 26
    iget-object v1, p2, Ls9;->b:Landroid/graphics/PointF;

    .line 27
    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v3, v1, Landroid/graphics/PointF;->x:F

    invoke-static {v2, v3, p3}, Lcc;->f(FFF)F

    move-result v2

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 28
    invoke-static {v0, v1, p3}, Lcc;->f(FFF)F

    move-result v0

    .line 29
    iget-object v1, p0, Ls9;->b:Landroid/graphics/PointF;

    if-nez v1, :cond_6

    .line 30
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Ls9;->b:Landroid/graphics/PointF;

    .line 31
    :cond_6
    iget-object v1, p0, Ls9;->b:Landroid/graphics/PointF;

    invoke-virtual {v1, v2, v0}, Landroid/graphics/PointF;->set(FF)V

    .line 32
    iget-object v0, p0, Ls9;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_4
    if-ltz v0, :cond_7

    .line 33
    iget-object v1, p1, Ls9;->a:Ljava/util/List;

    .line 34
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk8;

    .line 35
    iget-object v2, p2, Ls9;->a:Ljava/util/List;

    .line 36
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lk8;

    .line 37
    invoke-virtual {v1}, Lk8;->a()Landroid/graphics/PointF;

    move-result-object v3

    .line 38
    invoke-virtual {v1}, Lk8;->b()Landroid/graphics/PointF;

    move-result-object v4

    .line 39
    invoke-virtual {v1}, Lk8;->c()Landroid/graphics/PointF;

    move-result-object v1

    .line 40
    invoke-virtual {v2}, Lk8;->a()Landroid/graphics/PointF;

    move-result-object v5

    .line 41
    invoke-virtual {v2}, Lk8;->b()Landroid/graphics/PointF;

    move-result-object v6

    .line 42
    invoke-virtual {v2}, Lk8;->c()Landroid/graphics/PointF;

    move-result-object v2

    .line 43
    iget-object v7, p0, Ls9;->a:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lk8;

    iget v8, v3, Landroid/graphics/PointF;->x:F

    iget v9, v5, Landroid/graphics/PointF;->x:F

    .line 44
    invoke-static {v8, v9, p3}, Lcc;->f(FFF)F

    move-result v8

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-static {v3, v5, p3}, Lcc;->f(FFF)F

    move-result v3

    .line 45
    invoke-virtual {v7, v8, v3}, Lk8;->d(FF)V

    .line 46
    iget-object v3, p0, Ls9;->a:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lk8;

    iget v5, v4, Landroid/graphics/PointF;->x:F

    iget v7, v6, Landroid/graphics/PointF;->x:F

    .line 47
    invoke-static {v5, v7, p3}, Lcc;->f(FFF)F

    move-result v5

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-static {v4, v6, p3}, Lcc;->f(FFF)F

    move-result v4

    .line 48
    invoke-virtual {v3, v5, v4}, Lk8;->e(FF)V

    .line 49
    iget-object v3, p0, Ls9;->a:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lk8;

    iget v4, v1, Landroid/graphics/PointF;->x:F

    iget v5, v2, Landroid/graphics/PointF;->x:F

    .line 50
    invoke-static {v4, v5, p3}, Lcc;->f(FFF)F

    move-result v4

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-static {v1, v2, p3}, Lcc;->f(FFF)F

    move-result v1

    .line 51
    invoke-virtual {v3, v4, v1}, Lk8;->f(FF)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_7
    return-void
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ls9;->c:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "ShapeData{numCurves="

    .line 1
    invoke-static {v0}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ls9;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "closed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Ls9;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
