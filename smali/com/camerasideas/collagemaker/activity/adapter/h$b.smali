.class public Lcom/camerasideas/collagemaker/activity/adapter/h$b;
.super Landroidx/recyclerview/widget/RecyclerView$b0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/camerasideas/collagemaker/activity/adapter/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Landroidx/appcompat/widget/AppCompatImageView;

.field private b:Landroid/widget/FrameLayout;

.field private c:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$b0;-><init>(Landroid/view/View;)V

    const v0, 0x7f08015d

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/adapter/h$b;->a:Landroidx/appcompat/widget/AppCompatImageView;

    const v0, 0x7f080130

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/adapter/h$b;->b:Landroid/widget/FrameLayout;

    const v0, 0x7f0802e4

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/adapter/h$b;->c:Landroid/view/View;

    return-void
.end method

.method static synthetic a(Lcom/camerasideas/collagemaker/activity/adapter/h$b;)Landroid/widget/FrameLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/camerasideas/collagemaker/activity/adapter/h$b;->b:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic b(Lcom/camerasideas/collagemaker/activity/adapter/h$b;)Landroidx/appcompat/widget/AppCompatImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/camerasideas/collagemaker/activity/adapter/h$b;->a:Landroidx/appcompat/widget/AppCompatImageView;

    return-object p0
.end method
