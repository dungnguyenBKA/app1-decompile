.class public Lb9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf9;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf9<",
        "Landroid/graphics/PointF;",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lu8;

.field private final b:Lu8;


# direct methods
.method public constructor <init>(Lu8;Lu8;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lb9;->a:Lu8;

    .line 3
    iput-object p2, p0, Lb9;->b:Lu8;

    return-void
.end method


# virtual methods
.method public a()Ls7;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ls7<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Le8;

    iget-object v1, p0, Lb9;->a:Lu8;

    .line 2
    invoke-virtual {v1}, Lu8;->a()Ls7;

    move-result-object v1

    iget-object v2, p0, Lb9;->b:Lu8;

    invoke-virtual {v2}, Lu8;->a()Ls7;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Le8;-><init>(Ls7;Ls7;)V

    return-object v0
.end method

.method public b()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lec<",
            "Landroid/graphics/PointF;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot call getKeyframes on AnimatableSplitDimensionPathValue."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lb9;->a:Lu8;

    invoke-virtual {v0}, Lu8;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb9;->b:Lu8;

    invoke-virtual {v0}, Lu8;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
