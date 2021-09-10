.class public Lcom/camerasideas/collagemaker/activity/adapter/i$b;
.super Landroidx/recyclerview/widget/RecyclerView$b0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/camerasideas/collagemaker/activity/adapter/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Lcom/camerasideas/collagemaker/activity/widget/RippleImageView;

.field private b:Landroidx/appcompat/widget/AppCompatImageView;

.field private c:Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$b0;-><init>(Landroid/view/View;)V

    const v0, 0x7f080265

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/camerasideas/collagemaker/activity/widget/RippleImageView;

    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/adapter/i$b;->a:Lcom/camerasideas/collagemaker/activity/widget/RippleImageView;

    const v0, 0x7f0801fd

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/adapter/i$b;->b:Landroidx/appcompat/widget/AppCompatImageView;

    const v0, 0x7f080169

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;

    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/adapter/i$b;->c:Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;

    const v0, 0x7f080167

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/adapter/i$b;->d:Landroid/widget/ImageView;

    const v0, 0x7f08016a

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/adapter/i$b;->e:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic a(Lcom/camerasideas/collagemaker/activity/adapter/i$b;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/camerasideas/collagemaker/activity/adapter/i$b;->e:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic b(Lcom/camerasideas/collagemaker/activity/adapter/i$b;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/camerasideas/collagemaker/activity/adapter/i$b;->d:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic c(Lcom/camerasideas/collagemaker/activity/adapter/i$b;)Landroidx/appcompat/widget/AppCompatImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/camerasideas/collagemaker/activity/adapter/i$b;->b:Landroidx/appcompat/widget/AppCompatImageView;

    return-object p0
.end method

.method static synthetic d(Lcom/camerasideas/collagemaker/activity/adapter/i$b;)Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/camerasideas/collagemaker/activity/adapter/i$b;->c:Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;

    return-object p0
.end method

.method static synthetic e(Lcom/camerasideas/collagemaker/activity/adapter/i$b;)Lcom/camerasideas/collagemaker/activity/widget/RippleImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/camerasideas/collagemaker/activity/adapter/i$b;->a:Lcom/camerasideas/collagemaker/activity/widget/RippleImageView;

    return-object p0
.end method
