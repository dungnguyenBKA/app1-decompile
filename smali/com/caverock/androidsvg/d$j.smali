.class Lcom/caverock/androidsvg/d$j;
.super Lcom/caverock/androidsvg/d$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "j"
.end annotation


# instance fields
.field public a:F

.field final synthetic b:Lcom/caverock/androidsvg/d;


# direct methods
.method constructor <init>(Lcom/caverock/androidsvg/d;Lcom/caverock/androidsvg/d$j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/caverock/androidsvg/d$j;->b:Lcom/caverock/androidsvg/d;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/caverock/androidsvg/d$i;-><init>(Lcom/caverock/androidsvg/d;Lcom/caverock/androidsvg/d$i;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/caverock/androidsvg/d$j;->a:F

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/caverock/androidsvg/d$j;->a:F

    iget-object v1, p0, Lcom/caverock/androidsvg/d$j;->b:Lcom/caverock/androidsvg/d;

    invoke-static {v1}, Lcom/caverock/androidsvg/d;->d(Lcom/caverock/androidsvg/d;)Lcom/caverock/androidsvg/d$g;

    move-result-object v1

    iget-object v1, v1, Lcom/caverock/androidsvg/d$g;->e:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    add-float/2addr p1, v0

    iput p1, p0, Lcom/caverock/androidsvg/d$j;->a:F

    return-void
.end method
