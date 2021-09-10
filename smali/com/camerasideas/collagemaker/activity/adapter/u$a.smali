.class public Lcom/camerasideas/collagemaker/activity/adapter/u$a;
.super Landroidx/recyclerview/widget/RecyclerView$b0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/camerasideas/collagemaker/activity/adapter/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/ImageView;

.field c:Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;

.field d:Landroid/widget/ImageView;

.field e:Landroid/view/View;

.field f:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$b0;-><init>(Landroid/view/View;)V

    const v0, 0x7f0802ae

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/adapter/u$a;->a:Landroid/widget/TextView;

    const v0, 0x7f080157

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/adapter/u$a;->b:Landroid/widget/ImageView;

    const v0, 0x7f080158

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;

    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/adapter/u$a;->c:Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;

    const v0, 0x7f08012c

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/adapter/u$a;->d:Landroid/widget/ImageView;

    const v0, 0x7f08025c

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/adapter/u$a;->e:Landroid/view/View;

    const v0, 0x7f0801fd

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/adapter/u$a;->f:Landroid/widget/ImageView;

    return-void
.end method
