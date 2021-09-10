.class Lcom/caverock/androidsvg/d$f;
.super Lcom/caverock/androidsvg/d$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation


# instance fields
.field public a:F

.field public b:F

.field public c:Landroid/graphics/Path;

.field final synthetic d:Lcom/caverock/androidsvg/d;


# direct methods
.method public constructor <init>(Lcom/caverock/androidsvg/d;FFLandroid/graphics/Path;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/caverock/androidsvg/d$f;->d:Lcom/caverock/androidsvg/d;

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/caverock/androidsvg/d$i;-><init>(Lcom/caverock/androidsvg/d;Lcom/caverock/androidsvg/d$i;)V

    .line 3
    iput p2, p0, Lcom/caverock/androidsvg/d$f;->a:F

    .line 4
    iput p3, p0, Lcom/caverock/androidsvg/d$f;->b:F

    .line 5
    iput-object p4, p0, Lcom/caverock/androidsvg/d$f;->c:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public a(Lcom/caverock/androidsvg/c$x0;)Z
    .locals 2

    .line 1
    instance-of p1, p1, Lcom/caverock/androidsvg/c$y0;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    new-array v0, p1, [Ljava/lang/Object;

    const-string v1, "Using <textPath> elements in a clip path is not supported."

    .line 2
    invoke-static {v1, v0}, Lcom/caverock/androidsvg/d;->h(Ljava/lang/String;[Ljava/lang/Object;)V

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public b(Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/caverock/androidsvg/d$f;->d:Lcom/caverock/androidsvg/d;

    invoke-static {v0}, Lcom/caverock/androidsvg/d;->c(Lcom/caverock/androidsvg/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/caverock/androidsvg/d$f;->d:Lcom/caverock/androidsvg/d;

    invoke-static {v1}, Lcom/caverock/androidsvg/d;->d(Lcom/caverock/androidsvg/d;)Lcom/caverock/androidsvg/d$g;

    move-result-object v1

    iget-object v1, v1, Lcom/caverock/androidsvg/d$g;->e:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    iget v5, p0, Lcom/caverock/androidsvg/d$f;->a:F

    iget v6, p0, Lcom/caverock/androidsvg/d$f;->b:F

    move-object v2, p1

    move-object v7, v0

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Paint;->getTextPath(Ljava/lang/String;IIFFLandroid/graphics/Path;)V

    .line 4
    iget-object v1, p0, Lcom/caverock/androidsvg/d$f;->c:Landroid/graphics/Path;

    invoke-virtual {v1, v0}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 5
    :cond_0
    iget v0, p0, Lcom/caverock/androidsvg/d$f;->a:F

    iget-object v1, p0, Lcom/caverock/androidsvg/d$f;->d:Lcom/caverock/androidsvg/d;

    invoke-static {v1}, Lcom/caverock/androidsvg/d;->d(Lcom/caverock/androidsvg/d;)Lcom/caverock/androidsvg/d$g;

    move-result-object v1

    iget-object v1, v1, Lcom/caverock/androidsvg/d$g;->e:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    add-float/2addr p1, v0

    iput p1, p0, Lcom/caverock/androidsvg/d$f;->a:F

    return-void
.end method
