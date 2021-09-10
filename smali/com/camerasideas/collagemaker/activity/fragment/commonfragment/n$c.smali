.class Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n$c;
.super Landroidx/recyclerview/widget/RecyclerView$b0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field private a:Lcom/github/chrisbanes/photoview/PhotoView;

.field private b:Landroid/widget/ProgressBar;

.field private c:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$b0;-><init>(Landroid/view/View;)V

    const p1, 0x7f0801fa

    .line 2
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n$c;->c:Landroid/view/View;

    const p1, 0x7f0801f6

    .line 3
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/github/chrisbanes/photoview/PhotoView;

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n$c;->a:Lcom/github/chrisbanes/photoview/PhotoView;

    const p1, 0x7f080200

    .line 4
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n$c;->b:Landroid/widget/ProgressBar;

    return-void
.end method

.method static synthetic a(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n$c;)Lcom/github/chrisbanes/photoview/PhotoView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n$c;->a:Lcom/github/chrisbanes/photoview/PhotoView;

    return-object p0
.end method

.method static synthetic b(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n$c;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n$c;->c:Landroid/view/View;

    return-object p0
.end method

.method static synthetic c(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n$c;)Landroid/widget/ProgressBar;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n$c;->b:Landroid/widget/ProgressBar;

    return-object p0
.end method
