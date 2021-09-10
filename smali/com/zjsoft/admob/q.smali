.class Lcom/zjsoft/admob/q;
.super Lcom/google/android/gms/ads/formats/MediaView;
.source "SourceFile"


# instance fields
.field final synthetic h:F


# direct methods
.method constructor <init>(Lcom/zjsoft/admob/k;Landroid/content/Context;F)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/zjsoft/admob/q;->h:F

    invoke-direct {p0, p2}, Lcom/google/android/gms/ads/formats/MediaView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/zjsoft/admob/q;->h:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    int-to-float p2, p2

    iget v0, p0, Lcom/zjsoft/admob/q;->h:F

    div-float/2addr p2, v0

    float-to-int p2, p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method
