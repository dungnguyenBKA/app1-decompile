.class Lcom/caverock/androidsvg/d$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public d:F


# direct methods
.method public constructor <init>(Lcom/caverock/androidsvg/d;FFFF)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/caverock/androidsvg/d$b;->c:F

    iput p1, p0, Lcom/caverock/androidsvg/d$b;->d:F

    .line 3
    iput p2, p0, Lcom/caverock/androidsvg/d$b;->a:F

    .line 4
    iput p3, p0, Lcom/caverock/androidsvg/d$b;->b:F

    mul-float p1, p4, p4

    mul-float p2, p5, p5

    add-float/2addr p2, p1

    float-to-double p1, p2

    .line 5
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmpl-double p3, p1, v0

    if-eqz p3, :cond_0

    float-to-double p3, p4

    .line 6
    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p3, p1

    double-to-float p3, p3

    iput p3, p0, Lcom/caverock/androidsvg/d$b;->c:F

    float-to-double p3, p5

    .line 7
    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p3, p1

    double-to-float p1, p3

    iput p1, p0, Lcom/caverock/androidsvg/d$b;->d:F

    :cond_0
    return-void
.end method


# virtual methods
.method public a(FF)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/caverock/androidsvg/d$b;->a:F

    sub-float/2addr p1, v0

    .line 2
    iget v0, p0, Lcom/caverock/androidsvg/d$b;->b:F

    sub-float/2addr p2, v0

    mul-float v0, p1, p1

    mul-float v1, p2, p2

    add-float/2addr v1, v0

    float-to-double v0, v1

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_0

    .line 4
    iget v2, p0, Lcom/caverock/androidsvg/d$b;->c:F

    float-to-double v3, p1

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v0

    double-to-float p1, v3

    add-float/2addr v2, p1

    iput v2, p0, Lcom/caverock/androidsvg/d$b;->c:F

    .line 5
    iget p1, p0, Lcom/caverock/androidsvg/d$b;->d:F

    float-to-double v2, p2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v0

    double-to-float p2, v2

    add-float/2addr p1, p2

    iput p1, p0, Lcom/caverock/androidsvg/d$b;->d:F

    :cond_0
    return-void
.end method

.method public b(Lcom/caverock/androidsvg/d$b;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/caverock/androidsvg/d$b;->c:F

    iget v1, p1, Lcom/caverock/androidsvg/d$b;->c:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/caverock/androidsvg/d$b;->c:F

    .line 2
    iget v0, p0, Lcom/caverock/androidsvg/d$b;->d:F

    iget p1, p1, Lcom/caverock/androidsvg/d$b;->d:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/caverock/androidsvg/d$b;->d:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/caverock/androidsvg/d$b;->a:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/caverock/androidsvg/d$b;->b:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/caverock/androidsvg/d$b;->c:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/caverock/androidsvg/d$b;->d:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
