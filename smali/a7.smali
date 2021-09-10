.class public La7;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lr7;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, La7;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method a(Lr7;)V
    .locals 1

    .line 1
    iget-object v0, p0, La7;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Landroid/graphics/Path;)V
    .locals 5

    .line 1
    iget-object v0, p0, La7;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 2
    iget-object v1, p0, La7;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr7;

    .line 3
    sget v2, Ldc;->g:I

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v1}, Lr7;->j()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {v1}, Lr7;->h()Ls7;

    move-result-object v2

    check-cast v2, Lu7;

    invoke-virtual {v2}, Lu7;->m()F

    move-result v2

    .line 6
    invoke-virtual {v1}, Lr7;->e()Ls7;

    move-result-object v3

    check-cast v3, Lu7;

    invoke-virtual {v3}, Lu7;->m()F

    move-result v3

    .line 7
    invoke-virtual {v1}, Lr7;->g()Ls7;

    move-result-object v1

    check-cast v1, Lu7;

    invoke-virtual {v1}, Lu7;->m()F

    move-result v1

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v2, v4

    div-float/2addr v3, v4

    const/high16 v4, 0x43b40000    # 360.0f

    div-float/2addr v1, v4

    .line 8
    invoke-static {p1, v2, v3, v1}, Ldc;->a(Landroid/graphics/Path;FFF)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method
