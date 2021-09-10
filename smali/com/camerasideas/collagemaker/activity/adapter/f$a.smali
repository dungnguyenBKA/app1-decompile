.class public Lcom/camerasideas/collagemaker/activity/adapter/f$a;
.super Landroidx/recyclerview/widget/RecyclerView$b0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/camerasideas/collagemaker/activity/adapter/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;

.field b:Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;

.field c:Landroid/widget/ImageView;

.field d:Landroid/widget/ImageView;

.field e:Landroid/widget/ImageView;

.field f:Landroid/widget/ImageView;

.field g:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$b0;-><init>(Landroid/view/View;)V

    const v0, 0x7f080182

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;

    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/adapter/f$a;->a:Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;

    const v0, 0x7f080169

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;

    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/adapter/f$a;->b:Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;

    const v0, 0x7f080167

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/adapter/f$a;->c:Landroid/widget/ImageView;

    const v0, 0x7f08016a

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/adapter/f$a;->d:Landroid/widget/ImageView;

    const v0, 0x7f0802a0

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/adapter/f$a;->e:Landroid/widget/ImageView;

    const v0, 0x7f080165

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/adapter/f$a;->f:Landroid/widget/ImageView;

    const v0, 0x7f08018d

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/adapter/f$a;->g:Landroid/widget/FrameLayout;

    return-void
.end method

.method static synthetic a(Lcom/camerasideas/collagemaker/activity/adapter/f$a;)Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/camerasideas/collagemaker/activity/adapter/f$a;->a:Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;

    return-object p0
.end method
