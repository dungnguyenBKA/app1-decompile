.class public Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressBar;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private final b:Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 7
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p2, "layout_inflater"

    .line 8
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    const p2, 0x7f0b00b0

    const/4 v0, 0x1

    .line 9
    invoke-virtual {p1, p2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const p1, 0x7f080288

    .line 10
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressBar;->b:Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;

    const p2, 0x7f080164

    .line 11
    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 12
    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p2, "layout_inflater"

    .line 2
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    const p2, 0x7f0b00b0

    const/4 p3, 0x1

    .line 3
    invoke-virtual {p1, p2, p0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const p1, 0x7f080288

    .line 4
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressBar;->b:Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;

    const p2, 0x7f080164

    .line 5
    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    return-void
.end method
