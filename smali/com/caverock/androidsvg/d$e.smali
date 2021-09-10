.class Lcom/caverock/androidsvg/d$e;
.super Lcom/caverock/androidsvg/d$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field public a:F

.field public b:F

.field final synthetic c:Lcom/caverock/androidsvg/d;


# direct methods
.method public constructor <init>(Lcom/caverock/androidsvg/d;FF)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/caverock/androidsvg/d$e;->c:Lcom/caverock/androidsvg/d;

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/caverock/androidsvg/d$i;-><init>(Lcom/caverock/androidsvg/d;Lcom/caverock/androidsvg/d$i;)V

    .line 3
    iput p2, p0, Lcom/caverock/androidsvg/d$e;->a:F

    .line 4
    iput p3, p0, Lcom/caverock/androidsvg/d$e;->b:F

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/caverock/androidsvg/d$e;->c:Lcom/caverock/androidsvg/d;

    invoke-static {v0}, Lcom/caverock/androidsvg/d;->c(Lcom/caverock/androidsvg/d;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/caverock/androidsvg/d$e;->c:Lcom/caverock/androidsvg/d;

    invoke-static {v0}, Lcom/caverock/androidsvg/d;->d(Lcom/caverock/androidsvg/d;)Lcom/caverock/androidsvg/d$g;

    move-result-object v0

    iget-boolean v0, v0, Lcom/caverock/androidsvg/d$g;->c:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/caverock/androidsvg/d$e;->c:Lcom/caverock/androidsvg/d;

    invoke-static {v0}, Lcom/caverock/androidsvg/d;->e(Lcom/caverock/androidsvg/d;)Landroid/graphics/Canvas;

    move-result-object v0

    iget v1, p0, Lcom/caverock/androidsvg/d$e;->a:F

    iget v2, p0, Lcom/caverock/androidsvg/d$e;->b:F

    iget-object v3, p0, Lcom/caverock/androidsvg/d$e;->c:Lcom/caverock/androidsvg/d;

    invoke-static {v3}, Lcom/caverock/androidsvg/d;->d(Lcom/caverock/androidsvg/d;)Lcom/caverock/androidsvg/d$g;

    move-result-object v3

    iget-object v3, v3, Lcom/caverock/androidsvg/d$g;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/d$e;->c:Lcom/caverock/androidsvg/d;

    invoke-static {v0}, Lcom/caverock/androidsvg/d;->d(Lcom/caverock/androidsvg/d;)Lcom/caverock/androidsvg/d$g;

    move-result-object v0

    iget-boolean v0, v0, Lcom/caverock/androidsvg/d$g;->d:Z

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/caverock/androidsvg/d$e;->c:Lcom/caverock/androidsvg/d;

    invoke-static {v0}, Lcom/caverock/androidsvg/d;->e(Lcom/caverock/androidsvg/d;)Landroid/graphics/Canvas;

    move-result-object v0

    iget v1, p0, Lcom/caverock/androidsvg/d$e;->a:F

    iget v2, p0, Lcom/caverock/androidsvg/d$e;->b:F

    iget-object v3, p0, Lcom/caverock/androidsvg/d$e;->c:Lcom/caverock/androidsvg/d;

    invoke-static {v3}, Lcom/caverock/androidsvg/d;->d(Lcom/caverock/androidsvg/d;)Lcom/caverock/androidsvg/d$g;

    move-result-object v3

    iget-object v3, v3, Lcom/caverock/androidsvg/d$g;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 6
    :cond_1
    iget v0, p0, Lcom/caverock/androidsvg/d$e;->a:F

    iget-object v1, p0, Lcom/caverock/androidsvg/d$e;->c:Lcom/caverock/androidsvg/d;

    invoke-static {v1}, Lcom/caverock/androidsvg/d;->d(Lcom/caverock/androidsvg/d;)Lcom/caverock/androidsvg/d$g;

    move-result-object v1

    iget-object v1, v1, Lcom/caverock/androidsvg/d$g;->e:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    add-float/2addr p1, v0

    iput p1, p0, Lcom/caverock/androidsvg/d$e;->a:F

    return-void
.end method
