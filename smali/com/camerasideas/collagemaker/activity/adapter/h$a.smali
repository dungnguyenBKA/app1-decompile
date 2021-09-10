.class public Lcom/camerasideas/collagemaker/activity/adapter/h$a;
.super Landroidx/recyclerview/widget/RecyclerView$b0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/camerasideas/collagemaker/activity/adapter/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Landroidx/appcompat/widget/AppCompatImageView;

.field private b:Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;

.field private c:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$b0;-><init>(Landroid/view/View;)V

    const v0, 0x7f080181

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/adapter/h$a;->a:Landroidx/appcompat/widget/AppCompatImageView;

    const v0, 0x7f080182

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;

    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/adapter/h$a;->b:Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;

    const v0, 0x7f080185

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/adapter/h$a;->c:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic a(Lcom/camerasideas/collagemaker/activity/adapter/h$a;)Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/camerasideas/collagemaker/activity/adapter/h$a;->b:Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;

    return-object p0
.end method

.method static synthetic b(Lcom/camerasideas/collagemaker/activity/adapter/h$a;)Landroidx/appcompat/widget/AppCompatImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/camerasideas/collagemaker/activity/adapter/h$a;->a:Landroidx/appcompat/widget/AppCompatImageView;

    return-object p0
.end method

.method static synthetic c(Lcom/camerasideas/collagemaker/activity/adapter/h$a;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/camerasideas/collagemaker/activity/adapter/h$a;->c:Landroid/widget/ImageView;

    return-object p0
.end method
