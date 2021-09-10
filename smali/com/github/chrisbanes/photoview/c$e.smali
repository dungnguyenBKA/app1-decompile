.class Lcom/github/chrisbanes/photoview/c$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/chrisbanes/photoview/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field private final b:F

.field private final c:F

.field private final d:J

.field private final e:F

.field private final f:F

.field final synthetic g:Lcom/github/chrisbanes/photoview/c;


# direct methods
.method public constructor <init>(Lcom/github/chrisbanes/photoview/c;FFFF)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/chrisbanes/photoview/c$e;->g:Lcom/github/chrisbanes/photoview/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p4, p0, Lcom/github/chrisbanes/photoview/c$e;->b:F

    .line 3
    iput p5, p0, Lcom/github/chrisbanes/photoview/c$e;->c:F

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p4

    iput-wide p4, p0, Lcom/github/chrisbanes/photoview/c$e;->d:J

    .line 5
    iput p2, p0, Lcom/github/chrisbanes/photoview/c$e;->e:F

    .line 6
    iput p3, p0, Lcom/github/chrisbanes/photoview/c$e;->f:F

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/github/chrisbanes/photoview/c$e;->d:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v0, v0, v1

    iget-object v2, p0, Lcom/github/chrisbanes/photoview/c$e;->g:Lcom/github/chrisbanes/photoview/c;

    invoke-static {v2}, Lcom/github/chrisbanes/photoview/c;->i(Lcom/github/chrisbanes/photoview/c;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 2
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 3
    iget-object v2, p0, Lcom/github/chrisbanes/photoview/c$e;->g:Lcom/github/chrisbanes/photoview/c;

    invoke-static {v2}, Lcom/github/chrisbanes/photoview/c;->j(Lcom/github/chrisbanes/photoview/c;)Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 4
    iget v2, p0, Lcom/github/chrisbanes/photoview/c$e;->e:F

    iget v3, p0, Lcom/github/chrisbanes/photoview/c$e;->f:F

    invoke-static {v3, v2, v0, v2}, Lic;->a(FFFF)F

    move-result v2

    .line 5
    iget-object v3, p0, Lcom/github/chrisbanes/photoview/c$e;->g:Lcom/github/chrisbanes/photoview/c;

    invoke-virtual {v3}, Lcom/github/chrisbanes/photoview/c;->D()F

    move-result v3

    div-float/2addr v2, v3

    .line 6
    iget-object v3, p0, Lcom/github/chrisbanes/photoview/c$e;->g:Lcom/github/chrisbanes/photoview/c;

    invoke-static {v3}, Lcom/github/chrisbanes/photoview/c;->h(Lcom/github/chrisbanes/photoview/c;)Lcom/github/chrisbanes/photoview/b;

    move-result-object v3

    iget v4, p0, Lcom/github/chrisbanes/photoview/c$e;->b:F

    iget v5, p0, Lcom/github/chrisbanes/photoview/c$e;->c:F

    check-cast v3, Lcom/github/chrisbanes/photoview/c$a;

    invoke-virtual {v3, v2, v4, v5}, Lcom/github/chrisbanes/photoview/c$a;->a(FFF)V

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/c$e;->g:Lcom/github/chrisbanes/photoview/c;

    invoke-static {v0}, Lcom/github/chrisbanes/photoview/c;->l(Lcom/github/chrisbanes/photoview/c;)Landroid/widget/ImageView;

    move-result-object v0

    .line 8
    invoke-virtual {v0, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
