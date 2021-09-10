.class public Lb8;
.super Lx7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lx7<",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field private final i:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lec<",
            "Landroid/graphics/PointF;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lx7;-><init>(Ljava/util/List;)V

    .line 2
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lb8;->i:Landroid/graphics/PointF;

    return-void
.end method


# virtual methods
.method public h(Lec;F)Ljava/lang/Object;
    .locals 10

    .line 1
    iget-object v0, p1, Lec;->b:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v1, p1, Lec;->c:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 2
    check-cast v0, Landroid/graphics/PointF;

    .line 3
    check-cast v1, Landroid/graphics/PointF;

    .line 4
    iget-object v2, p0, Ls7;->e:Lgc;

    if-eqz v2, :cond_0

    .line 5
    iget v3, p1, Lec;->e:F

    iget-object p1, p1, Lec;->f:Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 6
    invoke-virtual {p0}, Ls7;->e()F

    move-result v8

    .line 7
    iget v9, p0, Ls7;->d:F

    move-object v5, v0

    move-object v6, v1

    move v7, p2

    .line 8
    invoke-virtual/range {v2 .. v9}, Lgc;->a(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/PointF;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Lb8;->i:Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v3, v1, Landroid/graphics/PointF;->x:F

    invoke-static {v3, v2, p2, v2}, Lic;->a(FFFF)F

    move-result v2

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v0

    mul-float v1, v1, p2

    add-float/2addr v1, v0

    invoke-virtual {p1, v2, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 10
    iget-object p1, p0, Lb8;->i:Landroid/graphics/PointF;

    :goto_0
    return-object p1

    .line 11
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Missing values for keyframe."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
