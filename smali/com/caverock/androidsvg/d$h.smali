.class Lcom/caverock/androidsvg/d$h;
.super Lcom/caverock/androidsvg/d$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "h"
.end annotation


# instance fields
.field a:F

.field b:F

.field c:Landroid/graphics/RectF;

.field final synthetic d:Lcom/caverock/androidsvg/d;


# direct methods
.method public constructor <init>(Lcom/caverock/androidsvg/d;FF)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/caverock/androidsvg/d$h;->d:Lcom/caverock/androidsvg/d;

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/caverock/androidsvg/d$i;-><init>(Lcom/caverock/androidsvg/d;Lcom/caverock/androidsvg/d$i;)V

    .line 3
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/caverock/androidsvg/d$h;->c:Landroid/graphics/RectF;

    .line 4
    iput p2, p0, Lcom/caverock/androidsvg/d$h;->a:F

    .line 5
    iput p3, p0, Lcom/caverock/androidsvg/d$h;->b:F

    return-void
.end method


# virtual methods
.method public a(Lcom/caverock/androidsvg/c$x0;)Z
    .locals 5

    .line 1
    instance-of v0, p1, Lcom/caverock/androidsvg/c$y0;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/c$y0;

    .line 3
    iget-object p1, p1, Lcom/caverock/androidsvg/c$m0;->a:Lcom/caverock/androidsvg/c;

    iget-object v2, v0, Lcom/caverock/androidsvg/c$y0;->n:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/caverock/androidsvg/c;->k(Ljava/lang/String;)Lcom/caverock/androidsvg/c$m0;

    move-result-object p1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    .line 4
    iget-object v0, v0, Lcom/caverock/androidsvg/c$y0;->n:Ljava/lang/String;

    aput-object v0, p1, v2

    const-string v0, "TextPath path reference \'%s\' not found"

    invoke-static {v0, p1}, Lcom/caverock/androidsvg/d;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    .line 5
    :cond_0
    check-cast p1, Lcom/caverock/androidsvg/c$u;

    .line 6
    new-instance v0, Lcom/caverock/androidsvg/d$c;

    iget-object v3, p0, Lcom/caverock/androidsvg/d$h;->d:Lcom/caverock/androidsvg/d;

    iget-object v4, p1, Lcom/caverock/androidsvg/c$u;->o:Lcom/caverock/androidsvg/c$v;

    invoke-direct {v0, v3, v4}, Lcom/caverock/androidsvg/d$c;-><init>(Lcom/caverock/androidsvg/d;Lcom/caverock/androidsvg/c$v;)V

    .line 7
    iget-object v0, v0, Lcom/caverock/androidsvg/d$c;->a:Landroid/graphics/Path;

    .line 8
    iget-object p1, p1, Lcom/caverock/androidsvg/c$k;->n:Landroid/graphics/Matrix;

    if-eqz p1, :cond_1

    .line 9
    invoke-virtual {v0, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 10
    :cond_1
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    .line 11
    invoke-virtual {v0, p1, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 12
    iget-object v0, p0, Lcom/caverock/androidsvg/d$h;->c:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    return v2

    :cond_2
    return v1
.end method

.method public b(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/caverock/androidsvg/d$h;->d:Lcom/caverock/androidsvg/d;

    invoke-static {v0}, Lcom/caverock/androidsvg/d;->c(Lcom/caverock/androidsvg/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/caverock/androidsvg/d$h;->d:Lcom/caverock/androidsvg/d;

    invoke-static {v1}, Lcom/caverock/androidsvg/d;->d(Lcom/caverock/androidsvg/d;)Lcom/caverock/androidsvg/d$g;

    move-result-object v1

    iget-object v1, v1, Lcom/caverock/androidsvg/d$g;->e:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, p1, v2, v3, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 4
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 5
    iget v0, p0, Lcom/caverock/androidsvg/d$h;->a:F

    iget v2, p0, Lcom/caverock/androidsvg/d$h;->b:F

    invoke-virtual {v1, v0, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 6
    iget-object v0, p0, Lcom/caverock/androidsvg/d$h;->c:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 7
    :cond_0
    iget v0, p0, Lcom/caverock/androidsvg/d$h;->a:F

    iget-object v1, p0, Lcom/caverock/androidsvg/d$h;->d:Lcom/caverock/androidsvg/d;

    invoke-static {v1}, Lcom/caverock/androidsvg/d;->d(Lcom/caverock/androidsvg/d;)Lcom/caverock/androidsvg/d$g;

    move-result-object v1

    iget-object v1, v1, Lcom/caverock/androidsvg/d$g;->e:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    add-float/2addr p1, v0

    iput p1, p0, Lcom/caverock/androidsvg/d$h;->a:F

    return-void
.end method
